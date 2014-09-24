<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCusto.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>	
    <link rel="stylesheet" type="text/css" href="App_Themes/DefaultTheme/Images/reg.css" />
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td><asp:Label ID="Lab_CompMail" runat="server" Text="用户邮箱:"></asp:Label></td>
                <td><asp:TextBox ID="Text_CompMail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Lab_UserPwd" runat="server" Text="用户密码:"></asp:Label></td>
                <td><asp:TextBox ID="Text_UserPwd" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Lab_UserName" runat="server" Text="姓名:"></asp:Label></td>
                <td><asp:TextBox ID="Text_UserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>

                <td><asp:Label ID="Lb_Zipcode" runat="server" Text="身份证号:"></asp:Label></td>
                <td><asp:TextBox ID="Text_Zipcode" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Lb_Phone" runat="server" Text="手机号:"></asp:Label></td>
                <td><asp:TextBox ID="Text_Phone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>

                <td><asp:Button ID="But_Register" runat="server" Text="注册" OnClick="But_Register_Click" /></td>
            </tr>

        </table>

    
    <div id="showfoot">
    
    </div>
    </form>
</body>
</html>
