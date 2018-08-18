using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Configuration;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Response.Redirect("home.aspx");
        }
        else if (Session["signup"] == null)
        {
            Response.Redirect("signup.aspx");
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
        {
            string mail = Session["mail"].ToString();
            string pass = Session["pass"].ToString();
            SqlCommand cmd1 = new SqlCommand("insert into Student (Email, Password, Name, Phone) values(@mail, @pass, @name, @phoneno)", con);
            SqlCommand cmd2 = new SqlCommand("Insert into Enrollment (Email) values(@email)", con);
            cmd1.Parameters.Add("@mail", SqlDbType.NVarChar).Value = mail;
            cmd1.Parameters.Add("@pass", SqlDbType.NVarChar).Value = Encrypt(pass.Trim());
            cmd1.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtboxname.Text;
            cmd1.Parameters.Add("@phoneno", SqlDbType.NVarChar).Value = txtboxphone.Text;
            cmd2.Parameters.Add("@email", SqlDbType.NVarChar).Value = mail;
            con.Open();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            Session["login"] = mail;
            if (Session["frontend"] != null)
            {
                Session["frontend-login"] = "login-frontend";
                Response.Redirect("complete-front-end-development.aspx");
            }
            else if (Session["reactnative"] != null)
            {
                Session["recactnative-login"] = "login-reactnative";
                Response.Redirect("react-native-design.aspx");
            }
            else if (Session["course"] != null)
            {
                Session["course-login"] = "login-course";
                Response.Redirect("courses.aspx");
            }
            else if (Session["home"] != null)
            {
                Session["home-login"] = "lohin-home";
                Response.Redirect("home.aspx");
            }
            
        }
    }

    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
}