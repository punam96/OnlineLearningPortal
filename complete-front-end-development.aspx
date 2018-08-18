<%@ Page Language="C#" AutoEventWireup="true" CodeFile="complete-front-end-development.aspx.cs" Inherits="complete_front_end_development" %>

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
           <asp:Image class="coursepic" runat="server" ImageUrl="~/images/frontend.jpeg" />
            
            <div class="coursetext">
                <h1>The Complete Front end web developer Bootcamp</h1>
                <p>
                    Valid for: Lifetime
                    <br />
                    Access: Online Streaming</p>
                <br />
                <p>Learn HTML, HTML5, CSS, CSS3, Bootstrap, JavaScript, Jquery and usage of dozens of plugins like animated CSS & TypeAhead</p>
                <h2>FREE</h2>
                <asp:Button ID="Enrollbtn" runat="server" Text="ENROLL FOR FREE" OnClick="Enrollbtn_Click" />
                
            </div>
        </div>
        
        <div class="courseoptions">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-HorizontalPadding="30px"  runat="server" OnMenuItemClick="Menu1_MenuItemClick" CssClass="menucolor" ForeColor="Black">
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
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex ="0">
                    <asp:View ID="View1" runat="server">
                        <div class="view1">
                            <p>
                            Welcome to the Complete front end developer Bootcamp. This is one of the most comprehensive bootcamp available online. so, if you are new to web development, thats great news because starting from the scratch is always easy. 
                            </p>
                            <p> This course gives you a unique experience and focus only on front end web development. First we will get professional and free web development tools, then we will start with HTML. Once we cover this ground, we will take down our very first challenge. Further we will learn HTML5 and start our first project. <br /> Moving further we will take CSS and CSS3. After that we will learn Bootstrap and optimize our sites for mobile view. After that we will learn JavaScript and jQuery and will do some projects in that.</p>
                            <p> Structure of this is designed after research and you will never feel bore in this course. After completion of the course, you will be able to design a web page in the exact same design that is on your mind or you might have seen on some theme website.</p>
                            <p> Creating a web template of your own or edit one, you will be a full skill ninja to do the job.</p>
                        </div>
                        
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="view1">
                            <asp:LinkButton ID="personaltalkbtn" runat="server" OnClick="personaltalkbtn_Click">A personal talk</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="structringfilesbtn" runat="server" OnClick="structringfilesbtn_Click">Structuring the files and creating first file</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="texttagbtn" runat="server" OnClick="texttagbtn_Click">Text tags</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="listitembtn" runat="server" OnClick="LinkButton1_Click">List Items</asp:LinkButton>
                            <br />
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="view1">
                            <asp:Button ID="certificatebtn" runat="server" Text="Download Certificate" OnClick="certificatebtn_Click" Enabled="false" />
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
