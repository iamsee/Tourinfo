<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowOrder.aspx.cs" Inherits="Customer_ShowOrder" %>

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
                              <TD width="715"><FONT color=#333333>&nbsp;您的位置：&nbsp;</FONT><a href="">路线信息</a> &gt;&gt; </TD>
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


                          
                          <center>
                              <br />

                                    <asp:Label ID="Label1" runat="server" Text="按线路名"></asp:Label>
                                    <asp:TextBox ID="TextPathName" runat="server" Width="94px"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="查找" 
                                  onclick="Button1_Click" />
                                    <br /><br />
        


                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                  <Columns>
                                      <asp:BoundField DataField="PathID" HeaderText="路线ID" />
                                      <asp:BoundField DataField="PathName" HeaderText="路线名称" />
                                      <asp:BoundField DataField="PathPrice" HeaderText="路线价格" />
                                      <asp:BoundField DataField="ReadyGoTime" HeaderText="出发时间" />
                                      <asp:BoundField DataField="OrderState" HeaderText="订单状态" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="取消订单" CommandName="COrder" Text="取消" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="支付订单" Text="支付" CommandName="GoOrder" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="查看游客" Text="查看游客" CommandName="ShowYK" />
                                  </Columns>
                              </asp:GridView>
                              <br />
                              <asp:GridView ID="GV_ShowCust" runat="server" AutoGenerateColumns="False">
                                  <Columns>
                                      <asp:BoundField DataField="CustID" HeaderText="客户ID" />
                                      <asp:BoundField DataField="CustName" HeaderText="客户姓名" />
                                      <asp:BoundField DataField="CustPhone" HeaderText="客户手机" />
                                      <asp:BoundField DataField="CustMail" HeaderText="客户邮箱" />
                                      <asp:BoundField DataField="CustZipcode" HeaderText="身份证号" />
                                  </Columns>
                              </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">回主页面</asp:LinkButton>
            <br />

        </center>







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
