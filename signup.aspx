<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/loginsignup_style.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="signupBox">
        <h1>Sign Up</h1>
        <p>
            Email
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtboxemail" ErrorMessage="Email is required" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 32px; top: 157px; position: absolute"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtboxemail" runat="server" placeholder="Enter email here" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtboxemail" ErrorMessage="Please enter a vaild email" ForeColor="#FF3300" style="z-index: 1; left: 32px; top: 159px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Enabled="False"></asp:Label>
        </p>
        <p>
            Password
            <asp:TextBox ID="txtboxpass" runat="server" placeholder="Enter password here" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxpass" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 30px; top: 266px; position: absolute"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="signupbtn" runat="server" Text="Signup for free" OnClick="signupbtn_Click" /></p>
        <h4>OR</h4>
        <asp:Button ID="logingoogle" runat="server" Text="Login using Google" />
        <p>Have an account? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Sign In</asp:HyperLink></p>
    </div>
    </form>
</body>
</html>
