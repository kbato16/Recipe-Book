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
       
    }
    public string ActivePage()
    {
        
        string[] navPages = {
        
        "<li class=\"active\"><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li class=\"active\"><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li class=\"active\"><a href = \"Add.aspx\" > Add </a></li>"+
        "<li><a href = \"Search.aspx\" > Search </a></li>",
        
        "<li><a href = \"Home.aspx\" > Home </a></li>" +
        "<li><a href = \"Recipes.aspx\" > Recipes </a></li>"+
        "<li><a href = \"Add.aspx\" > Add </a></li>"+
        "<li class=\"active\"><a href = \"Search.aspx\" > Search </a></li>"};

        string active = navPages[0];

        switch (Page.Title)
        {
            case "Home":
                active = navPages[0];
                break; 
            case "Recipes":
                active = navPages[1];
                break;
            case "Add":
                active = navPages[2];
                break;
            case "Search":
                active = navPages[3];
                break;
        }
        return active;
    }
}
