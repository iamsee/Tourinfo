<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterComp.aspx.cs" Inherits="RegisterComp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
             <tr>
                <td><asp:Label ID="Lab_CompName" runat="server" Text="公司名称:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="Text_CompName" runat="server"></asp:TextBox></td>
                 <td class="auto-style6"></td>
            </tr>
            <tr>
                <td><asp:Label ID="Lab_CompMail" runat="server" Text="公司邮箱:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="Text_CompMail" runat="server"></asp:TextBox></td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="REV_Text_CompMail" runat="server" ControlToValidate="Text_CompMail" ErrorMessage="Email地址不正确" Text="Email地址不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Lab_CompPwd" runat="server" Text="公司密码:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="Text_CompPwd" runat="server"></asp:TextBox></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td><asp:Label ID="Lb_ConfirmPwd" runat="server" Text="=确认密码:"></asp:Label></td>
                <td></td>
                <td></td>
            </tr>
           
          <tr>
              <td>
                  <asp:Label ID="Lb_CompPhone" runat="server" Text="公司电话:"></asp:Label>
              </td>
              <td class="auto-style2">
                  <asp:TextBox ID="Text_CompPhone" runat="server"></asp:TextBox>
              </td>
              <td class="auto-style6"></td>

          </tr>
            </table>
        <table>
            <tr>
                
                <td class="auto-style5">
                    <asp:Label ID="Lb_CompAddress" runat="server" Text="公司地址:"></asp:Label>
                </td>
                <td class="auto-style1"><asp:TextBox ID="Text_AcomAddress" runat="server" Text="" Width="271px"></asp:TextBox></td>
                
                </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    
                </td>
            </tr>
              </table>
        <table style="width: 242px">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
             <tr>

                <td class="auto-style5"><asp:Button ID="But_Register" runat="server" Text="注册" OnClick="But_Register_Click" /></td>
            </tr>
     </table>

    
    <div id="showfoot">
    
    </div>
    </form>
</body>
</html>
