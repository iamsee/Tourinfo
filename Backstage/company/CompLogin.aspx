<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="style/style.css" type="text/css"><title>会员登录</title>
    <style type="text/css">
        .auto-style1 {
            width: 5475px;
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
                          <TD>&nbsp;</TD>
            
                        </TR>
                      </TBODY>
                    </TABLE>
                    <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
        <TBODY>
        
        <TR>
          <TD width=1 bgColor=#88b3be><IMG height=1 
            src="images/z.gif" width=1></TD>
          <TD align="center" class="auto-style1"><table width="90%" border="0" cellspacing="0" cellpadding="2" align="center">
           
             <form id="form1" style="" runat="server">
    <div id="left">
    <img src="CompImage/complogin.jpg" width="600px">
    </div>
    <div id="right" >
    
    <asp:Table runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Lab_CompMail" runat="server" Text="公司邮箱:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Txt_CompMail" runat="server"></asp:TextBox>
            </asp:TableCell>
            </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Lab_CompPwd" runat="server" Text="密&nbsp;&nbsp;码:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Txt_CompPwd" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="ddlInterval" runat="server">
            <asp:ListItem Value ="0">不保存</asp:ListItem>
            <asp:ListItem Value="1">记住我</asp:ListItem>
        </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="But_Login" runat="server" OnClick="Button1_Click" Text="登录"  />
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Backstage/company/RegisterComp.aspx">没有账号现在注册</asp:LinkButton>
            </asp:TableCell>

        </asp:TableRow>
       
         </asp:Table> 


       
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
                    <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
                      <TBODY>
                        <TR>
                          <TD>&nbsp;</TD>
                        </TR>
                      </TBODY>
                  </TABLE></TD>
              </TR>
              <TR>
                <TD vAlign=top>&nbsp;</TD>
              </TR>
            </TABLE>
        </center>
      </div>
    
</body>
</html>

   