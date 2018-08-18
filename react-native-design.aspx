<%@ Page Language="C#" AutoEventWireup="true" CodeFile="react-native-design.aspx.cs" Inherits="react_native_design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/inside-courseimage.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
            <ul>
                <li><asp:Button ID="loginbtn" runat="server" Text="LogIn" OnClick="loginbtn_Click" /></li>
                <li><a href="#">Features</a></li>
                <li><a href="courses.aspx">Courses</a></li>
            </ul>
        </header>
        <div class="coursetitle">
           <asp:Image class="coursepic" runat="server" ImageUrl="~/images/reactnative.jpeg" />
            <div class="coursetext">
                <h1>React Native Design - Build Native Apps  using React</h1>
                <p>
                    Valid for: Lifetime
                    <br />
                    Access: Online Streaming</p>
                <br />
                <p>Build front end of 10 apps for Android and iOS using React Native. Expo, Native Base, Elements - All covered</p>
                <h2>FREE</h2>
                <asp:Button ID="Enrollbtn" runat="server" Text="ENROLL FOR FREE" OnClick="Enrollbtn_Click" />
            </div>
        </div>
        
        <div class="courseoptions">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-HorizontalPadding="30px" OnMenuItemClick="Menu1_MenuItemClick" runat="server" CssClass="menucolor" ForeColor="Black">
                        <StaticSelectedStyle ForeColor="#15904D" />
                        <Items>
                            <asp:MenuItem Text="OVERVIEW" Value="0" Selected="true" ></asp:MenuItem>
                            <asp:MenuItem Text="SYLLABUS" Value="1"></asp:MenuItem>
                            <asp:MenuItem Text="CERTIFICATE" Value="2"></asp:MenuItem>
                            <asp:MenuItem Text="DISCUSSION" Value="3"></asp:MenuItem>
                            <asp:MenuItem Text="NOTES" Value="4"></asp:MenuItem>
                        </Items>
                        <StaticMenuItemStyle HorizontalPadding="30px" />
                    </asp:Menu>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="coursedetails">
            
                    <asp:MultiView ID="MultiView1" runat="server">
                
                        <asp:View ID="View1" runat="server" >
                            <div class="view1">
                                <p>
                                    Hi, and welcome to building Android and iOS apps with React Native. In this course we will be building 10 apps using React Native(Expo Client). React Native is a rock solid technology used in Facebook, Messsenger, Instagram, Tesla and various other big apps. We will be writing mainly JavaScript codes in this course. so yes, JavaScript is must for this course. 
                                </p>
                                <p> Apart from this, you can use either Windows or MAC in this course. Since all codes will be written in Atom text editor, available for all platforms, there is no such need of high-end computers. Just a mobile phobe, decent laptop and expo app(available for free) fro, Google play store or Apple store is good enough.</p>
                                <p> Please watch course intro and read FAQ before getting into the course.</p>
                                <p> Happy coding.</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <div class="view1">
                                <asp:LinkButton ID="reactnativedesignbtn" runat="server" OnClick="reactnativedesignbtn_Click">React Native Design - Build front end of 10 mobile Apps</asp:LinkButton>
                                <br />
                                <asp:LinkButton ID="introductionbtn" runat="server" OnClick="introductionbtn_Click">Introduction to the course</asp:LinkButton>
                                <br />
                                <asp:LinkButton ID="gettingtoolsbtn" runat="server" OnClick="gettingtoolsbtn_Click">Get all the tools - Don't skip</asp:LinkButton>
                                <br />
                                <asp:LinkButton ID="creatingcomponentsbtn" runat="server" OnClick="creatingcomponentsbtn_Click">Creating a separate component</asp:LinkButton>
                            </div>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <div class="view1">
                                <asp:Button ID="certificatebtn" runat="server" Text="Download Certificate" Enabled="false" OnClick="certificatebtn_Click" />
                                <p id="certificate" runat="server">Please enroll and take test to earn your certificate</p>
                                <asp:Button ID="testbtn" runat="server" Text="START TEST" OnClick="testbtn_Click" Enabled="false" />
                            </div>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <p>discussion</p>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <p>Notes</p>
                        </asp:View>
                    </asp:MultiView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <footer>

        </footer>
    </div>
    </form>
</body>
</html>
