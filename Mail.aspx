<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Mail.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblEmail" runat="server" Text="邮箱:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="revTo" runat="server"
            ErrorMessage="Email地址不正确!" Text="*" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
        <asp:Label ID="lblPwd" runat="server" Text="密码:"></asp:Label>
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Label ID="lblConfirm" runat="server" Text="确认密码"></asp:Label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" /></div>
    </form>
</body>
</html>
