using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class react_native_design : System.Web.UI.Page
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
                if (dr.Read())
                {
                    if (dr.GetValue(2).ToString().Equals("970"))
                    {
                        Enrollbtn.Text = "Start Learning";
                        testbtn.Enabled = true;
                        certificate.InnerText = "Take Test to Download Certificate";
                        if (! DBNull.Value.Equals(dr.GetValue(4)))
                        {
                            int marks = int.Parse(dr.GetValue(4).ToString());
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
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
        
    }

    protected void Enrollbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 970;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvereactnative"] = "approve";
                Response.Redirect("react_native_videos.aspx");
            }

        }
        else
        {
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        int index = Int32.Parse(e.Item.Value);
        MultiView1.ActiveViewIndex = index;
    }

    protected void reactnativedesignbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 970;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvereactnative"] = "approve";
                Session["1st"] = "1st";
                Response.Redirect("react_native_videos.aspx");
            }

        }
        else
        {
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
    }

    protected void introductionbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 970;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvereactnative"] = "approve";
                Session["2nd"] = "2nd";
                Response.Redirect("react_native_videos.aspx");
            }

        }
        else
        {
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
    }

    protected void gettingtoolsbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 970;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvereactnative"] = "approve";
                Session["3rd"] = "3rd";
                Response.Redirect("react_native_videos.aspx");
            }

        }
        else
        {
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
    }

    protected void creatingcomponentsbtn_Click(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if (Enrollbtn.Text.ToString().Equals("ENROLL FOR FREE"))
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeCourseId = @courseid where Email = @email", con);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                    cmd.Parameters.Add("@courseid", SqlDbType.Int).Value = 970;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Enrollbtn.Text = "Start Learning";
                }
            }
            else
            {
                Session["approvereactnative"] = "approve";
                Session["4th"] = "4th";
                Response.Redirect("react_native_videos.aspx");
            }

        }
        else
        {
            Session["reactnative"] = "reactnative";
            Response.Redirect("login.aspx");
        }
    }

    protected void testbtn_Click(object sender, EventArgs e)
    {
        Session["reactrest"] = "test";
        Response.Redirect("reactnativequiz.aspx");
    }

    protected void certificatebtn_Click(object sender, EventArgs e)
    {
        Session["reactcertificate"] = "certificate";
        Response.Redirect("reactcertificate.aspx");
    }
}