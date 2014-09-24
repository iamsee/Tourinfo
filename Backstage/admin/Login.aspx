<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Customer1_Login" %>

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
    <form id="form1" runat="server">
    <div align="center">
        <center>
            <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
              <TR>
                <TD width="588" vAlign=top><BR>                    <BR>
                    <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
                      <TBODY>
                        <TR>
                          <TD><IMG height=11 src="img/hotel_dire_bar1.jpg" width=572></TD>
            
                        </TR>
                      </TBODY>
                    </TABLE>
                    <TABLE cellSpacing=0 cellPadding=0 width=572 border=0>
        <TBODY>
        
        <TR>
          <TD width=1 bgColor=#88b3be><IMG height=1 
            src="images/z.gif" width=1></TD>
          <TD align="center" class="auto-style1"><table width="90%" border="0" cellspacing="0" cellpadding="2" align="center">
           
            <form name="userlogin" method="post" action="user_checklogin.asp">
            <br />
            <br />
            <br />
              <tr>
                <td align="center"><font color="#999999">管理员登陆</font></td>
              </tr>
              <tr>
                <td align="center">用户名：
                   
                    <asp:TextBox ID="TextUserMail" runat="server" size="14"></asp:TextBox>

                </td>
              </tr>
              <tr>
                <td align="center">密　码：
                     <asp:TextBox ID="TextPassWord" runat="server" size="14"></asp:TextBox>
                </td>
              </tr>
             
              <tr>
                <td align="center" height="38">

                    <asp:Button ID="Button1" runat="server" Text="登陆" onclick="Button1_Click" /> &nbsp;
                   
                   
                 

                </td>
              </tr>
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
                          <TD><IMG height=11 src="img/hotel_dire_bar2.jpg" 
            width=572></TD>
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
    </form>
</body>
</html>
