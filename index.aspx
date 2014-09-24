<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/weishi.css" />
    <script type="text/javascript" src="Scripts/3.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript" src="Scripts/sdws.js"></script>
    <div class="banner">
        &nbsp;
       
        <div class="cloud">

            

        </div>
        
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Backstage/admin/Login.aspx" >管理员登陆</asp:LinkButton>
        
    </div>
    <div class="main_container">
        <div class="main">
            <ul id="sub_nav" class="sub_nav">

                <li class="log"><a href="Backstage/company/CompLogin.aspx" id="update"><span class="imgPart"></span>
                    <p>旅游公司?加入我们</p>
                    
                </a>
                    <a href="Backstage/company/CompLogin.aspx">
                </li>
                <li class="help"><a href="Customer/Login.aspx" id="update"><span class="imgPart"></span>
                    <p>游人？新的体验</p>
                </a></li>
            </ul>

            <div class="whole_content" style="display: none">
                <div class="sideBar">
                    <div class="active_dot" style="top: 71px;"></div>

                    <div id="menu_nav"></div>

                </div>

                <div class="main_content" id="main_content">
                    <!--内容添加完-->
                </div>

            </div>


        </div>
    </div>



    </form>



</body>
</html>

