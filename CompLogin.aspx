<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <div>
      <asp:Label ID="Lab_CompMail" runat="server" Text="公司邮箱:"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="Txt_CompMail" runat="server"></asp:TextBox>
        </div>

      <div>

        <asp:Label ID="Lab_CompPwd" runat="server" Text="密&nbsp;码:"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="Txt_CompPwd" runat="server"></asp:TextBox>
      </div>
        <br />
        
        <span><asp:DropDownList ID="ddlInterval" runat="server">
            <asp:ListItem Value ="0">不保存</asp:ListItem>
            <asp:ListItem Value="1">记住我</asp:ListItem>
        </asp:DropDownList>
            </span>
        <br />
        
      <div>
           &nbsp;&nbsp;&nbsp; <asp:Button ID="But_Login" runat="server" OnClick="Button1_Click" Text="登录"  />
          </div>

         
        
         
    </form>
</body>
</html>
