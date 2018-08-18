<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="css_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/loginsignup_style.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="loginBox">
        <h1>Sign In</h1>
        <p>
            Email
            <asp:TextBox ID="txtboxemail" runat="server" placeholder="Enter email here" OnTextChanged="TextBox1_TextChanged" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtboxemail" ErrorMessage="Please enter a vaild email" ForeColor="#FF3300" SetFocusOnError="True" style="z-index: 1; left: 34px; top: 150px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="txtboxemail" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 34px; top: 150px; position: absolute"></asp:RequiredFieldValidator>
        </p>
        <p>
            Password
            <asp:TextBox ID="txtboxpass" runat="server" placeholder="Enter password here" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxpass" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True" style="position: absolute; z-index: 1; left: 30px; top: 260px"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Enabled="False" ForeColor="Red"></asp:Label>
        </p>
        <p>
            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" /></p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">Forgot Password?</asp:HyperLink>
        <h4>OR</h4>
        <p><asp:Button ID="logingoogle" runat="server" Text="Login using Google" /></p>
        <p>Don't have an account?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/signup.aspx">Sign Up</asp:HyperLink></p>


    </div>
        
    </form>
</body>
</html>
