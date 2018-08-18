<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/course_style.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
            <ul>
                <li><asp:Button ID="loginbtn" runat="server" Text="LogIn" OnClick="loginbtn_Click" /></li>
                <li><a href="#">Features</a></li>
                <li><a href="#">Courses</a></li>
            </ul>
        </header>
        <div class="appad">
            <div class="rightyy">
                <p>Download our Mobile apps !</p>
                <h1>Watch videos on the go or download them to watch later.</h1>
                <br />
                <br />
                <h1>Study anywhere, anytime on desktop or mobile. Make your <br /> breaks more productive with our free  Android apps. <br /> Download now become a better programmer Now !</h1>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/appstore.png" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/play_store.png" />
            </div>
        </div>

        <div class="whyus">
                <h1> Why Us? </h1>
                <h2>
                    High quality tech videos at affordable rates. Yep, as simple as it sounds.
                </h2>
        </div>
        <div class="courses">
            <h1>Courses</h1>
            <div class="courselist">
                <asp:ImageButton ID="webcrsebtn" runat="server" ImageUrl="~/images/frontendbtnbgc.jpg" OnClick="webcrsebtn_Click" />
                <asp:ImageButton ID="reactntivebtn" runat="server" ImageUrl="~/images/reactnativebtnbgc.jpg" OnClick="reactntivebtn_Click" />
            </div>
        </div>
        <footer>

        </footer>
    </div>
    </form>
</body>
</html>
