<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/loginsignup_style.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="profilebox">
        <h1>Enter additional details</h1>
        <p>
            Name
            <asp:TextBox ID="txtboxname" runat="server" placeholder="Enter name here" TextMode="SingleLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtboxname" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 30px; top: 152px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid Name" ControlToValidate="txtboxname" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 30px; top: 152px; position: absolute" ValidationExpression="^[A-Z][a-zA-Z]{3,}(?: [A-Z][a-zA-Z]*){0,2}$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Phone
            <asp:TextBox ID="txtboxphone" runat="server" placeholder="Enter Phone No. here" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone No. is required" ControlToValidate="txtboxphone" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 30px; top: 269px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid phone no." ControlToValidate="txtboxphone" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; left: 30px; top: 269px; position: absolute" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"></asp:RegularExpressionValidator>
        </p>
        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
    </div>
        
    </form>
</body>
</html>
