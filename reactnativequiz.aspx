<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reactnativequiz.aspx.cs" Inherits="reactnativequiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Q.1  What is ReactJS?</h1>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0"> Server-side Framework</asp:ListItem>
            <asp:ListItem Value="1"> User-interface framework</asp:ListItem>
            <asp:ListItem Value="2"> Both</asp:ListItem>
            <asp:ListItem Value="3"> None</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.2 How can you access the state of a component from inside of a member function?</h1>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="0" > this.getState()</asp:ListItem>
            <asp:ListItem Value="1"> this.prototype.stateValue</asp:ListItem>
            <asp:ListItem Value="2"> this.state</asp:ListItem>
            <asp:ListItem Value="3"> this.values</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.3 Props are __________ into other components</h1>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem Value="0"> Injected target=&quot;new&quot;</asp:ListItem>
            <asp:ListItem Value="1"> Methods</asp:ListItem>
            <asp:ListItem Value="2"> Both A and B</asp:ListItem>
            <asp:ListItem Value="3"> All of these</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.4 Which of the following API is a MUST for every ReactJS component?</h1>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Value="0"> getInitialState</asp:ListItem>
            <asp:ListItem Value="1"> render</asp:ListItem>
            <asp:ListItem Value="2"> renderComponent</asp:ListItem>
            <asp:ListItem Value="3"> None</asp:ListItem>
        </asp:RadioButtonList>
        <h1>Q.5 What is a react.js in MVC?</h1>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem Value="0"> Controller</asp:ListItem>
            <asp:ListItem Value="1"> Middleware</asp:ListItem>
            <asp:ListItem Value="2"> Model</asp:ListItem>
            <asp:ListItem Value="3"> Router</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="submitbtn" runat="server" Text="Submit" OnClick="submitbtn_Click" />
    </div>
    </form>
</body>
</html>
