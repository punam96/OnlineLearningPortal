using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.IO;

public partial class css_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Response.Redirect("home.aspx");
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineLearningConnectionString"].ConnectionString))
        {
            SqlDataReader dr;
            SqlCommand cmd = new SqlCommand("Select * from Student where Email = @email and Password = @password", con);
            cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txtboxemail.Text;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = Encrypt(txtboxpass.Text.Trim());
            con.Open();
            dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                
                Session["login"] = txtboxemail.Text;
                Session["mail"] = txtboxemail.Text;
                if(Session["frontend"] != null)
                {
                    Session["frontend-login"] = "login-frontend";
                    Response.Redirect("complete-front-end-development.aspx");
                }
                else if(Session["reactnative"] != null)
                {
                    Session["recactnative-login"] = "login-reactnative";
                    Response.Redirect("react-native-design.aspx");
                }
                else if(Session["course"] != null)
                {
                    Session["course-login"] = "login-course";
                    Response.Redirect("courses.aspx");
                }
                else if (Session["home"] != null)
                {
                    Session["home-login"] = "lohin-home";
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Session["login"] = "login";
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Label1.Enabled = true;
                Label1.Text = "* Please enter valid email or password";
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

    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
}