using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            loginbtn.Text = "LogOut";
        }
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
            Session["course"] = "course";
            Response.Redirect("login.aspx");
        }
        
    }

    protected void webcrsebtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("complete-front-end-development.aspx");
    }

    protected void reactntivebtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("react-native-design.aspx");
    }
}