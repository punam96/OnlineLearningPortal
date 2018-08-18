using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reactnativequiz : System.Web.UI.Page
{
    int marks = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["reactrest"] != null)
            {
                Session["reactrest"] = null;
            }
            else
            {
                Response.Redirect("react-native-design.aspx");
            }
        }
    }

    protected void submitbtn_Click(object sender, EventArgs e)
    {
        string value1 = RadioButtonList1.SelectedItem.Value.ToString();
        if (value1.Equals("2"))
            marks += 20;
        string value2 = RadioButtonList2.SelectedItem.Value.ToString();
        if (value2.Equals("3"))
            marks += 20;
        string value3 = RadioButtonList3.SelectedItem.Value.ToString();
        if (value3.Equals("1"))
            marks += 20;
        string value4 = RadioButtonList4.SelectedItem.Value.ToString();
        if (value4.Equals("2"))
            marks += 20;
        string value5 = RadioButtonList5.SelectedItem.Value.ToString();
        if (value5.Equals("0"))
            marks += 20;

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("Update Enrollment Set ReactNativeTestResult = @result where Email = @email", con);
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["mail"].ToString();
                cmd.Parameters.Add("@result", SqlDbType.Int).Value = marks;
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("react-native-design.aspx");
            }
    }
}