<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterComp.aspx.cs" Inherits="RegisterComp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="style/style.css" type="text/css"><title>会员登录</title>
    <style type="text/css">
        .auto-style1 {
            width: 5475px;
        }
        .auto-style2 {
            width: 25px;
        }
        .auto-style3 {
            width: 27px;
        }
        .auto-style4 {
            width: 30px;
        }
        .auto-style5 {
            width: 32px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style7 {
            width: 673px;
        }
        .auto-style8 {
            height: 14px;
        }
        .auto-style9 {
            width: 25px;
            height: 14px;
        }
        .auto-style10 {
            width: 96px;
            height: 14px;
        }
    </style>
</head>
<body>
   
    <div align="center">
        <center>
            <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
              <TR>
                <TD width="588" vAlign=top><BR>                    <BR>
                    <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
        <TBODY>
        
        <TR>
          <TD width=1 bgColor=#88b3be><IMG height=1 
            src="images/z.gif" width=1></TD>
          <TD align="center" class="auto-style1"><table width="90%" border="0" cellspacing="0" cellpadding="2" align="center">
           
             <form id="form1" runat="server">
        <table style="width: 337px">
             <tr>
                <td><asp:Label ID="Lab_CompName" runat="server" Text="公司名称:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="Text_CompName" runat="server"></asp:TextBox></td>
                 <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Label ID="Lab_CompMail" runat="server" Text="公司邮箱:"></asp:Label></td>
                <td class="auto-style9"><asp:TextBox ID="Text_CompMail" runat="server"></asp:TextBox></td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="REV_Text_CompMail" runat="server" ControlToValidate="Text_CompMail" ErrorMessage="Email不正确" Text="Email不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Lab_CompPwd" runat="server" Text="公司密码:"></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="Text_CompPwd" runat="server"></asp:TextBox></td>
                
            </tr>
           <%-- <tr>
                <td><asp:Label ID="Lb_ConfirmPwd" runat="server" Text="确认密码:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Text_CompMail" ErrorMessage="Email地址不正确" Text="Email地址不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>--%>
           
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
                
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Lb_CompAddress" runat="server" Text="公司地址:"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                
                </tr>
            </table>
        <table>
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddl_p" runat="server" Width="120px" OnSelectedIndexChanged="ddl_p_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddl_c" runat="server" Width="100px" OnSelectedIndexChanged="ddl_c_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    
                    <asp:DropDownList ID="ddl_d" runat="server" Width="100px">
                    </asp:DropDownList>
                    
                </td>
            </tr>
              </table>
        <table style="width: 242px">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox_Local" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
             <tr>

                <td class="auto-style5"><asp:Button ID="But_Register" runat="server" Text="注册" OnClick="But_Register_Click" /></td>
            </tr>
     </table>

    
    <div id="showfoot">
    
    </div>
    </form>

          
            <tr>
              <td align="center" height="38"><br>

                </td>
            </tr>
          </table>            <BR>                        </TD>
          <TD vAlign=middle width=316>
              &nbsp;</TD>
          <TD width=1 bgColor=#88b3be><IMG height=1  src="img/hotel_dire_bar1.jpg" width=1></TD>
           
        </TR>
        </TBODY>
                    </TABLE>
                    </TD>
              </TR>
              <TR>
                <TD vAlign=top>&nbsp;</TD>
              </TR>
            </TABLE>
        </center>
      </div>
    
</body>
</html>

   

   