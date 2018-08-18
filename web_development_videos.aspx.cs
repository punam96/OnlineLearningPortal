using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_development_videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["approvefrontend"] == null)
        {
            Response.Redirect("login.aspx");
            
        }
        else
        {
            if (Session["1st"] != null)
            {
                Session["1st"] = null;
                videoplr.Attributes["src"] = "~/videos/personal_talk.MP4";
            }
            else if (Session["2nd"] != null)
            {
                Session["2nd"] = null;
                videoplr.Attributes["src"] = "~/videos/creating_first_file.mp4";
            }
            else if (Session["3rd"] != null)
            {
                Session["3rd"] = null;
                videoplr.Attributes["src"] = "~/videos/list_items.mp4";
            }
            else if (Session["4th"] != null)
            {
                Session["4th"] = null;
                videoplr.Attributes["src"] = "~/videos/text_tags.mp4";
            }
            
            else if (!IsPostBack)
            {
                videoplr.Attributes["src"] = "~/videos/personal_talk.MP4";

            }
        }
        
    }

    protected void syllabusbtn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }


    protected void taskbtn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }


    protected void discussionbtn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        videoplr.Attributes["src"] = "~/videos/personal_talk.MP4";
        UpdatePanel3.Update();
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        videoplr.Attributes["src"] = "~/videos/creating_first_file.mp4";
        UpdatePanel3.Update();
    }

    protected void btn3_Click(object sender, EventArgs e)
    {
        videoplr.Attributes["src"] = "~/videos/text_tags.mp4";
        UpdatePanel3.Update();
    }

    protected void btn4_Click(object sender, EventArgs e)
    {
        videoplr.Attributes["src"] = "~/videos/list_items.mp4";
        UpdatePanel3.Update();

       
    }
}