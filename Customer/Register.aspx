<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Customer1_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/Style.css" rel="stylesheet" type="text/css"/>
<title></title>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body>
 
<table width="770" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <TR>
      <TD width="35%" height="81" align=left 
                  bgcolor="#ffffff" ><div align="center"><img src="img/000.gif" width="212" height="70"></div></TD>
      <TD width="65%" align="middle" valign="center"  
                bgcolor="#ffffff" ><div align="center"><img src="img/0.jpg" width="570" height="66"></div></TD>
    </TR>
    <TR vAlign=middle bgcolor="#0F77B1">
      <TD height=27 colSpan=2 align=left >
                <TABLE width="100%" height="100%" border=0  align=center cellPadding=0 cellSpacing=0 >
                 
          <TBODY>
            <TR>
              <TD align=left vAlign=middle background="images/top_bar.gif" >
                <div align="center"><FONT color=#ffffff><a href="Main.aspx"><FONT color=#ffffff>首页</Font></a> | <a href=""><FONT color=#ffffff>新闻动态</Font></a> | <a href=""><FONT color=#ffffff>度假产品</FONT></a> | <a href=""><font color="#FFFFFF"> 景点欣赏</font></a> | <a href=""><font color="#FFFFFF">导游推荐</font></a> | <a href=""><font color="#FFFFFF">美图欣赏</font></a> | <a href=""><font color="#FFFFFF">留下意见</font></a> | <a href=""><font color="#FFFFFF">会员中心</font></a> | <a href=""><font color="#FFFFFF">在线帮助</font></a></FONT> </div></TD>
            </TR>
          </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>

<div align="center">
  <TABLE width="770" border=0  align=center cellPadding=0 cellSpacing=0 background="images/top_nav_menu.gif">
    <TBODY>
      <TR bgColor=#ffffff>
        <TD colSpan=3 height=2></TD>
      </TR>
      <TR>
       


       <TABLE cellSpacing=0 cellPadding=0 width=770 align=center border=0 style="BORDER-LEFT: #d8d8d8 1px solid;BORDER-RIGHT: #d8d8d8 1px solid;">
  <TBODY>
    <TR>
      <TD class=b vAlign=top align=left width=764>
     
       
        
        <table width="760" align="center" border="0" cellspacing="0" cellpadding="0" class="table-zuoyou" bordercolor="#CCCCCC">
          <tr>
            <td bgcolor="#FFFFFF" bordercolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="center"><font color="#FF3300"><b><br>
                    请您务必详细填写您的信息，并核对无误，国内用户请留下您的真实中文姓名。<br>
              未经您的允许，您的个人信息对外保密。(带 <font color=red>*</font>号为必填项) </b></font>
                    


                     <form id="form1" runat="server">

                        <table width="80%" border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC" align="center">
                          <tr>
                            <td height=30 colspan=2 background="../Images/topBar_bg.gif"><font color="#FF3300"><img src="../Images/ring01.gif" width="9" height="9"> 用户名和密码</font> </td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>用 户 名：</td>
                            <td width=70% class=pad>
                            
                            
                                <asp:TextBox ID="TextUserName" runat="server"></asp:TextBox><font color="red">*</font>
                            </td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right class="style1">密　　码：</td>
                            <td class=style1>
                            <asp:TextBox ID="TextPassWord" runat="server"></asp:TextBox><font color="red">*</font>

                                </td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>确认密码：</td>
                            <td class=pad><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><font color="red">*</font></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>电子邮箱：</td>
                            <td class=pad><asp:TextBox ID="TextUserMail" runat="server"></asp:TextBox><font color="red">*</font></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td colspan="2" valign="middle" background="../Images/topBar_bg.gif" 
                                  class="style1"><font color="#FF3300"><img src="../Images/ring01.gif" width="9" height="9"> 用户详细资料</font></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>您的真实姓名：</td>
                            <td class=pad><asp:TextBox ID="TextBoxRealName" runat="server"></asp:TextBox><font color="red">*</font></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>您的身份证号：</td>
                            <td class=pad><asp:TextBox ID="TextIDCard" runat="server"></asp:TextBox><font color="red">*</font></td>
                          </tr>

                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>性　　别：</td>
                            <td class=pad><asp:TextBox ID="TextSex" runat="server"></asp:TextBox><font color="red">*</font></td>
                          </tr>


                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>通讯地址：</td>
                            <td class=pad>
                            
                            <asp:TextBox ID="TextAdress" runat="server" size="40" maxlength="30"></asp:TextBox>
                           
                                <font color="red">*</font> </td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>邮　　编：</td>
                            <td class=pad>
                            <asp:TextBox ID="TextZipCode" runat="server" size="10" maxlength="6"></asp:TextBox>

                                <font color=red>*</font></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align=right>联系电话：</td>
                            <td class=pad>  <asp:TextBox ID="TextPhone" runat="server"  maxlength="18"></asp:TextBox>

                                <font color=red>*</font> </td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width=30% align="right"></td>
                            <td class=pad>
                            

                                <asp:Button ID="Button1" runat="server" Text="注册信息" onclick="Button1_Click" />


                            </td>
                          </tr>
                        </table>
                    </form>
                    
                    
                    
                    </td>
                </tr>
            </table></td>
          </tr>
        </table>
        <table width="760" align="center" border="0" cellspacing="0" cellpadding="0" class="table-zuoyou" bordercolor="#CCCCCC">
          <tr>
            <td bordercolor="#FFFFFF" bgcolor="#FFFFFF">
               
               

                <br />
               
               

            </td>
          </tr>
        </table></TD>
    </TR>
  </TBODY>
</TABLE>



      </TR>
    </TBODY>
  </TABLE>
  
      </TR>
    </TBODY>
  </TABLE>












  <TABLE width="770" border=0 align="center" cellPadding=0 cellSpacing=0>
    <TBODY>
       

      <TR>
        <TD width="1" rowspan="2" align=middle vAlign=bottom bgcolor="#CCCCCC"></TD>
        <TD 
height=25 align=middle background=images/foot_patt01.gif><a href="">网站首页</a> | <a href="" >关于我们</a> | <a href="" >业务联系</a> | <a href="" >版权声明</a> | <a href="" >付款方式</a> | <a href="" >留言/建议/投诉</a></TD>
        <TD width="1" rowspan="2" align=middle vAlign=bottom bgcolor="#CCCCCC"></TD>
      </TR>
      <TR>
        <TD height=60><div align="center"></div></TD>
            
        
      </TR>
    </TBODY>
  </TABLE>




</div>



</body></html>
