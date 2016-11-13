using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["AzureRecipeBookDB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private bool checkUser()
    {
        con.Open();
        SqlCommand findUsers = new SqlCommand("Select UserName From Users where Username = @username and Password = @password", con);
        SqlCommand checkUserPassword = new SqlCommand("Select Password From Users where Username = @username and Password = @password", con);
        findUsers.Parameters.AddWithValue("@username", Login1.UserName);
        findUsers.Parameters.AddWithValue("@password", Login1.Password);
        checkUserPassword.Parameters.AddWithValue("@username", Login1.UserName);
        checkUserPassword.Parameters.AddWithValue("@password", Login1.Password);
        
        var un = findUsers.ExecuteScalar();
        var ps = checkUserPassword.ExecuteScalar();
        if ((string)un != Login1.UserName)
        {
            Login1.FailureText = "Username does not exist";
            con.Close();
            return false;
        }
        else if ((string)un == Login1.UserName && (string)ps != Login1.Password)
        {
            Login1.FailureText = "Password does not match";
            con.Close();
            return false;
        }
        else
        {
            Session["Username"] = Login1.UserName;
            con.Close();
            return true;
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        bool result = checkUser();
        if (result)
        {
            e.Authenticated = true;
        }
        else
        {
            e.Authenticated = false;
        }
    }
}