<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_development_videos.aspx.cs" Inherits="web_development_videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/videos.css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <video  id="videoplr" width="950" controls="controls" runat="server"></video>
            </ContentTemplate>
            
        </asp:UpdatePanel>        
         
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
                
                <div class="menu">
                    <asp:Button ID="syllabusbtn"  class="btn" runat="server" Text="Sylabus" OnClick="syllabusbtn_Click"  />
                    <asp:Button ID="discussionbtn" class="btn" runat="server" Text="Discussion" OnClick="discussionbtn_Click"  />
                    <asp:Button ID="taskbtn"  class="btn" runat="server" Text="Task" OnClick="taskbtn_Click"  />
                    
                </div>
                
            </ContentTemplate>
        </asp:UpdatePanel>
        
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <div class="vwdetailds">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" >
                    <asp:View ID="View1" runat="server">
                        <div class="view1">
                            <h1>Syllabus</h1>
                            <asp:Button ID="btn1" class="titlbtn" runat="server" Text="A personal talk" OnClick="btn1_Click" />
                            <br />
                            <asp:Button ID="btn2" class="titlbtn" runat="server" Text="Structuring the files and creating first file" OnClick="btn2_Click" />
                            <br />
                            <asp:Button ID="btn3" class="titlbtn" runat="server" Text="Text tags" OnClick="btn3_Click" />
                            <br />
                            <asp:Button ID="btn4" class="titlbtn" runat="server" Text="List items" OnClick="btn4_Click" />
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="view1">
                            <h2>Discussion</h2>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="view1">
                            <h2>Task</h2>
                        </div>
                        
                    </asp:View>
                </asp:MultiView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
