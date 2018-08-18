using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class complete_front_end_development : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (Session["login"] != null)
        {
            loginbtn.Text = "LogOut";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
            {
                SqlDataReader dr;
                SqlCommand cmd = new SqlCommand("Select * from Enrollment where Email = @mail", con);
                cmd.Parameters.Add("@mail", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                con.Open();
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    if(dr.GetValue(1).ToString().Equals("111"))
                    {
                        Enrollbtn.Text = "Start Learning";
                        testbtn.Enabled = true;
                        certificate.InnerText = "Take Test to Download Certificate";

                        if (!DBNull.Value.Equals(dr.GetValue(3)))
                        {
                            int marks = int.Parse(dr.GetValue(3).ToString());
                            if(marks>=60)
                            {
                                certificatebtn.Enabled = true;
                                certificate.InnerText = "Please Download the Certificate";
                            }
                            
                        }
                    }
                }
            }
        }
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("login.aspx");
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void Enrollbtn_Click(object sender, EventArgs e)
    {
        if(Session["login"] != null)
        {
            if(Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set FrontendCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 111;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvefrontend"] = "approve";
                Response.Redirect("web_development_videos.aspx");
            }
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        int index = Int32.Parse(e.Item.Value);
        MultiView1.ActiveViewIndex = index;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set FrontendCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 111;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvefrontend"] = "approve";
                Session["4th"] = "4th";
                Response.Redirect("web_development_videos.aspx");
            }
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void personaltalkbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set FrontendCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 111;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvefrontend"] = "approve";
                Session["1st"] = "1st";
                Response.Redirect("web_development_videos.aspx");
            }
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void structringfilesbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set FrontendCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 111;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvefrontend"] = "approve";
                Session["2nd"] = "2nd";
                Response.Redirect("web_development_videos.aspx");
            }
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void texttagbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set FrontendCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 111;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvefrontend"] = "approve";
                Session["3rd"] = "3rd";
                Response.Redirect("web_development_videos.aspx");
            }
        }
        else
        {
            Session["frontend"] = "frontend";
            Response.Redirect("login.aspx");
        }
    }

    protected void certificatebtn_Click(object sender, EventArgs e)
    {
        Session["webcertificate"] = "certificate";
        Response.Redirect("certificate.aspx");
    }

    protected void testbtn_Click(object sender, EventArgs e)
    {
        Session["frontendtest"] = "test";
        Response.Redirect("frontendquiz.aspx");
    }
}