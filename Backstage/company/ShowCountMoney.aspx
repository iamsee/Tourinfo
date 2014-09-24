<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowCountMoney.aspx.cs" Inherits="Backstage_company_ShowCountMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="总收入为:"></asp:Label>
        <asp:Label ID="Lab_ShowTotalMoney" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="各路线收入分别为："></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
