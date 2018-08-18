using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            loginbtn.Text = "LogOut";
        }
    }

    protected void coursebtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("courses.aspx");
    }

    protected void ourcrse_Click(object sender, EventArgs e)
    {
        Response.Redirect("courses.aspx");
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        if(Session["login"] != null)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("login.aspx");
        }
        else
        {
            Session["home"] = "home";
            Response.Redirect("login.aspx");
        }
    }
}