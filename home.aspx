<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learn programming online from best Industry instructors | Start your dream journey now</title>
    <link rel="stylesheet" href="css/home_style.css" media="all" />
</head>
<body>
    <form runat="server">
        <div>
            <div >
                <ul id="header">
                    <li><a href="courses.aspx">Courses</a></li>
                    <li class="dropdown">
                        <a href="javascript:void(0)" class="dropbtn">Our Apps</a>
                        <div class="dropdown-content">
                            <a href="#">Android App</a>
                            <a href="#">IOS App</a>
                        </div>
                    </li>
                    <li><a href="#">Learning Track</a></li>
                    <li><a href="#">Teach</a></li>
                    <li><a href="#">Blog</a></li>
                    <li >
                        <%--<a href="login.aspx" id="login">Login</a>--%>
                        <asp:LinkButton ID="loginbtn" runat="server" OnClick="loginbtn_Click">LogIn</asp:LinkButton>
                    </li>
                </ul>
            </div>
        <br />
        <div id="promotion">
            <div class="add">
                <h1>Best Online Programming Courses</h1>
            <h2>High Quality Affodable Courses</h2>
            </div>
            <%--<ul>
                <li>Watch videos on android and IOS App</li>
                <li>Courses come with certification</li>
            </ul>--%>
            <div class="addbtm">
                <%--<asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Watch videos on android and IOS App</asp:ListItem>
                <asp:ListItem >Courses come with certification</asp:ListItem>
            </asp:BulletedList>--%>
                <ul>
                    <li>Fastest growing Tech video platform in India</li>
                    <li>Watch videos on android and IOS App</li>
                    <li>Courses come with certification</li>
                </ul>
                <asp:Button ID="coursebtn" runat="server" Text="TAKE ME TO COURSES" OnClick="coursebtn_Click" />
                
            </div>
            <asp:Image ID="applecomputer" runat="server" ImageUrl="~/images/Apple-Computer.png" />
        </div>
            
        <div id="unique">
            <h1>What make us unique</h1>
            <p> <span>High Quality courses</span> at affordable rates.<i> Yep, It's simple</i></p>
            
            <div class="col">
                <div class="first-col">
                    <p>Comfort</p>
                    <h4>Learn with comfort of your <br /> home and get updated in latest  <br />technology.</h4>
                    <asp:Button ID="btncomfort" runat="server" Text="COMFORT" />
                </div>
                <div class="second-col">
                    <p>Watch it again</p>
                    <h4>Watch it 1 time or 100 times. No <br /> more worries of teachers yelling <br /> at you.</h4>
                    <asp:Button ID="btnwatch" runat="server" Text="WATCH IT AGAIN" />
                </div>
                <div class="third-col">
                    <p>At your time</p>
                    <h4>Class starts when you say so <br /> and ends when you say so. It's <br /> totally in your control.</h4>
                    <asp:Button ID="btntime" runat="server" Text="NO TIME BOUNDATION" />
                </div>
                <div class="fourth-col">
                    <p>Expert at your reach</p>
                    <h4>Gone are the days when you <br /> have to reach to experts. Expert <br /> classes are at your home now.</h4>
                    <asp:Button ID="btnexprtrch" runat="server" Text="EXPERT IN YOUR REACH" />
                </div>
            </div>
        </div>
        <div id="aim">
            <h1>Our aim for students</h1>
            <div class="gayan">
                <h4>Technical education is not easy to grab and most Universities in India are <br /> failing for current industry standards for tech trainings. Just by having a lab <br /> is not a solution of problem.</h4>
                <p>Our Goal is fullfil that requiremnt of best online training for programming at <br /> affordable rates.</p>
                <p>Android development, iOS development, full stack web development, python, <br /> php, Java, reactJS, react Native, redux, pentesting, bug bounties are just a <br /> few courses of our constantly increasing library.</p>
            </div>
            <asp:Button ID="ourcrse" runat="server" Text="OUR COURSES" OnClick="ourcrse_Click" />
            <asp:Image ID="codeimg" runat="server" ImageUrl="~/images/codeimg.jpg" />
        </div>
        <div id="footer">
            <div class="sitemap">
                <h2>Sitemap</h2>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Policy</a></li>
                    <li><a href="courses.aspx">Courses</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <%--<asp:BulletedList ID="BulletedList2" runat="server">
                    <asp:ListItem><a href="#">Home</a></asp:ListItem>
                    <asp:ListItem>Blog</asp:ListItem>
                    <asp:ListItem>Policy</asp:ListItem>
                    <asp:ListItem>Courses</asp:ListItem>
                    <asp:ListItem>Teach</asp:ListItem>
                    <asp:ListItem>FAQ</asp:ListItem>
                </asp:BulletedList>--%>
            </div>

            <div id="bstslingcrse">
            <h1>Our Best Selling Courses</h1>
        </div>
        </div>
        
    </div>
    </form>
</body>
</html>
