using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Response.Redirect("home.aspx");
        }
    }

    protected void signupbtn_Click(object sender, EventArgs e)
    {
        //using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Punam\\Desktop\\Project\\App_Data\\OnlineLearning.mdf;Integrated Security=True"))
        //{
        //    SqlCommand cmd = new SqlCommand("insert into Student (Email, Password) values(@email, @password)", con );
        //    cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtboxemail.Text;
        //    cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = txtboxpass.Text;
        //    con.Open();
        //    int rowupdated = cmd.ExecuteNonQuery();
        //    if(rowupdated==1)
        //    {
        //        Session["signup"] = txtboxemail.Text;
        //        Response.Redirect("profile.aspx");
        //    }

        //}"

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("Select COUNT(*) from Student where Email = @email", con);
            cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtboxemail.Text;
            con.Open();
            int userExists =(int) cmd.ExecuteScalar();
            if (userExists > 0)
            {
                Label1.Text = "Email is already exists";
            }
            else
            {
                Session["signup"] = "signup";
                Session["mail"] = txtboxemail.Text;
                Session["pass"] = txtboxpass.Text;
                Response.Redirect("profile.aspx");
            }
        }
        
    }
}