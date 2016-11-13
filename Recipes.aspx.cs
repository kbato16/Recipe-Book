using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Recipes : System.Web.UI.Page
{
    protected SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["AzureRecipeBookDB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string queryString = "Select * from Recipes where Isprivate = 0 ";
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                queryString += "or SubmittedBy = " + "'" + Session["Username"] + "' ";
            }

            SqlCommand cmd = new SqlCommand(queryString, connect);
            connect.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                RecipesList.Visible = true;
                DataResult.DataSource = reader;
                DataResult.DataBind();
                reader.Close();
                connect.Close();
            }
            else
            {
                NoRecipeAlert.Visible = true;
                RecipesList.Visible = false;
                reader.Close();
                connect.Close();
            }
        }
    }
}