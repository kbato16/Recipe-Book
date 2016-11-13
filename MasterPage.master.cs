using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            LoginLink.Visible = true;
            SessionLabel.Visible = false;
            Logout.Visible = false;
        }
        else
        {
            LoginLink.Visible = false;
            SessionLabel.Visible = true;
            Logout.Visible = true;
        }  
    }

    protected string ActivePage()
    {
        string[] navPages = {
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add Recipe </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",

        "<li class=\"active\"><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add Recipe </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li class=\"active\"><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add Recipe </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li class=\"active\"><a href = \"Add.aspx\" > Add Recipe </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add Recipe </a></li>"+
        "<li class=\"active\"><a href = \"Search.aspx\" > Search </a></li>"};

        string active = navPages[0];

        switch (Page.Title)
        {
            case "Home":
                active = navPages[1];
                break; 
            case "Recipes":
                active = navPages[2];
                break;
            case "Add Recipe":
                active = navPages[3];
                break;
            case "Search":
                active = navPages[4];
                break;
        }
        return active;
    }
    private string getCurrentPage()
    {
        switch (Page.Title)
        {
            
            case "Recipes":
                return "~/Recipes.aspx";
            case "Add Recipe":
                return "~/Add.aspx";
            case "Search":
                return "~/Search.aspx";
            default:
                return "~/Home.aspx";
        }
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session["Username"] = null;
        Response.Redirect(getCurrentPage());
    }
}
