using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Application["PageCount"] == null)
        {
            Application["PageCount"] = 1;
        }
        else
        {
            Application["PageCount"] = (int)Application["PageCount"] + 1;
        }
        PageCount.Text = Convert.ToString(Application["PageCount"]);

        if (Session["SessionCount"]==null)
        {
            Session["SessionCount"] = 1;
        }
        else
        {
            Session["SessionCount"] = (int)Session["SessionCount"] + 1;
        }
        SessionCount.Text = Convert.ToString(Session["SessionCount"]);
    }
}