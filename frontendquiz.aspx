<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frontendquiz.aspx.cs" Inherits="frontendquiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Q.1 Which of the following is used to create web page?</h1>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0"> HTML</asp:ListItem>
            <asp:ListItem Value="1"> JVM</asp:ListItem>
            <asp:ListItem Value="2"> DTD</asp:ListItem>
            <asp:ListItem Value="3"> C</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.2 Correct HTML tag for the largest heading is</h1>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="0" > head</asp:ListItem>
            <asp:ListItem Value="1"> h6</asp:ListItem>
            <asp:ListItem Value="2"> heading</asp:ListItem>
            <asp:ListItem Value="3"> h1</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.3 How can you open a link in a new browser window?</h1>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem Value="0"> href=&quot;url&quot; target=&quot;new&quot;</asp:ListItem>
            <asp:ListItem Value="1"> href=&quot;url&quot; target=&quot;_blank&quot;</asp:ListItem>
            <asp:ListItem Value="2"> href=&quot;url&quot;.new</asp:ListItem>
            <asp:ListItem Value="3"> href=&quot;url&quot; target=&quot;open&quot;</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.4 &lt;a&gt; and &lt;/a&gt; tags are used for</h1>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Value="0">Adding image</asp:ListItem>
            <asp:ListItem Value="1">Aligning text</asp:ListItem>
            <asp:ListItem Value="2">Audio-voiced text</asp:ListItem>
            <asp:ListItem Value="3">Adding links to your page</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.5 Choose the correct HTML tag to make a text italic</h1>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem Value="0"> i</asp:ListItem>
            <asp:ListItem Value="1"> b</asp:ListItem>
            <asp:ListItem Value="2"> strong</asp:ListItem>
            <asp:ListItem Value="3"> itl</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="submitbtn" runat="server" Text="Submit" OnClick="submitbtn_Click" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
