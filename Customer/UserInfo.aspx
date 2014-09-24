<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="Customer1_AA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="style/default.css" rel="stylesheet" type="text/css"/>
<title></title>
</head>
<body>
 <form id="form2" runat="server">
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


<TABLE width=770 border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR>
        <TD>
                        <TABLE width="100%" border=0  align=center cellPadding=0 cellSpacing=0 background="images/top_nav_menu.gif">
                          <TBODY>
                            <TR bgColor=#ffffff>
                              <TD colSpan=3 height=2></TD>
                            </TR>
                            <TR>
                              <TD width="44" height=25 align=right><img src="img/arrow3.gif" width="29" height="11"></TD>
                              <TD width="715"><FONT color=#333333>&nbsp;您的位置：&nbsp;</FONT><a href="">会员资料</a> &gt;&gt; </TD>
                              <TD width="11">&nbsp;</TD>
                            </TR>
                          </TBODY>

                         </TABLE>
                        <TABLE cellSpacing=0 cellPadding=0 width=770 border=0>
                          <TBODY>
                           <TR>
                           <TD align="center" style="BORDER-LEFT: #d8d8d8 1px solid;BORDER-RIGHT: #d8d8d8 1px solid;">
                              <table width="98%" height="429" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td>
                              
                            <!--  中间的内容区域 开始 -->

                            <br />
                              
                             <table width="100%"border=1 cellPadding=0 cellSpacing=0 bordercolor="#CCCCCC" borderColorDark=#ffffff bgcolor="#F9F9F9">
           <center>
            <tr align=center>
              <td height="35" colspan="2" background="../Images/topBar_bg.gif"><div align="center"><font color="#FF0000"><b> 会员资料</b></font></div></td>     
            </tr>
             <tr align=center>
              <td colspan="2" class="style1">
                    &nbsp;</td>
            </tr>
             <tr align=center>
              <td height="30" colspan="2" background="../Images/topBar_bg.gif">会员基本资料</td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">用户名:</td>
              <td class="style3">
              <asp:Label ID="LabelName" runat="server" Text="相应的信息"></asp:Label>
               </td>
            </tr>
              
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">性别:</td>
              <td class="style3"> <asp:Label ID="LabelSex" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">E-mail:</td>
              <td class="style3"> <asp:Label ID="LabelMail" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
             <tr align=center>
              <td height="30" colspan="2" background="../Images/topBar_bg.gif">会员补充资料</td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF"><font class="medium">真实姓名:</font></td>
              <td class="style3"> <asp:Label ID="LabelRealName" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF"><font class="medium">邮编:</font></td>
              <td class="style3"> <asp:Label ID="LabelZipCode" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">联系电话:</td>
              <td class="style3"> <asp:Label ID="LabelPhone" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
 <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">联系地址:</td>
              <td class="style3"> <asp:Label ID="LabelAdress" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>
             <tr align=center>
              <td width="26%" height="25" align="right" bgcolor="#EFEFEF">身份证编号:</td>
              <td class="style3"> <asp:Label ID="LabelIDCard" runat="server" Text="相应的信息"></asp:Label></td>
            </tr>

              </center>   
          </table>

                 
                            <br />



                              <!--  中间的内容区域 结束 -->
                              
                                </td>
                              </tr>
                             </table>
                        </TD>
                        </TR>
                         </TBODY>

                        </TABLE>
        </TD>
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


</form>



</div>

</body></html>
