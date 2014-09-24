<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Backstage_Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link rel="stylesheet" type="text/css" href="../css/backstage.css">
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    	
    </div>
    <div id="content">
    
    	<div id="left">
            <asp:Label ID="Lab_Status" runat="server" Text="账号状态:"></asp:Label>
            <br />
            <asp:Label ID="Lab_StatesShow" runat="server" Text=""></asp:Label>

            <br />
            <br />
            <asp:Label ID="Lab_ShowCompMail" runat="server" Text="显示用户邮件"></asp:Label>

            <br />
            <br />
                    <a href="ShowData2.aspx" target="main">用户信息</a>

            <br />
            <br />
            <a href="ShowScenic.aspx" target="main">景点信息</a>
            <br />
            <br />
            <a href="ShowPath.aspx" target="main">路线信息</a>
            <br />
            <br />
            <asp:LinkButton ID="LinkBut_ShowHistory" runat="server">历史查询</asp:LinkButton>
            <br />
            <br />
            <a href="ShowCountMoney.aspx" target="main">收入查询</a>
        </div>
        
        <div id = "right">
            
           
            <iframe width="100%" height="100%" frameborder="0" marginwidth="0" marginheight="0" name="main" scrolling="yes" src="http://www.baidu.com/"></iframe>
            
           
        </div>
    </div>
    </form>
</body>
</html>

