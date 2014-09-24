<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Customer1_Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <table width="770" border="0" align="center" cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td width="35%" height="81" align="left"
                        bgcolor="#ffffff">
                        <div align="center">
                            <img src="img/000.gif" width="212" height="70"></div>
                    </td>
                    <td width="65%" align="middle" valign="center"
                        bgcolor="#ffffff">
                        <div align="center">
                            <img src="img/0.jpg" width="570" height="66"></div>
                    </td>
                </tr>
                <tr valign="middle" bgcolor="#0F77B1">
                    <td height="27" colspan="2" align="left">
                        <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">

                            <tbody>
                                <tr>
                                    <td align="left" valign="middle" background="images/top_bar.gif">
                                        <div align="center"><font color="#ffffff"><a href="Main.aspx"><font color="#ffffff">首页</font></a> | <a href=""><font color="#ffffff">新闻动态</font></a> | <a href=""><font color="#ffffff">度假产品</font></a> | <a href=""><font color="#FFFFFF">景点欣赏</font></a> | <a href=""><font color="#FFFFFF">导游推荐</font></a> | <a href=""><font color="#FFFFFF">美图欣赏</font></a> | <a href=""><font color="#FFFFFF">留下意见</font></a> | <a href=""><font color="#FFFFFF">会员中心</font></a> | <a href=""><font color="#FFFFFF">在线帮助</font></a></font> </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>















        <div align="center">
            <table width="770" border="0" align="center" cellpadding="0" cellspacing="0" background="images/top_nav_menu.gif">
                <tbody>
                    <tr bgcolor="#ffffff">
                        <td colspan="3" height="2"></td>
                    </tr>
                    <tr>
                        <td width="44" height="25" align="right">
                            <img src="images/arrow3.gif" width="29" height="11"></td>
                        <td width="715"><font color="#333333">&nbsp;您的位置：&nbsp;</font><a href="Main.aspx">网站的首页</a> &gt;&gt; 旅游线路首页</td>
                        <td width="11">&nbsp;</td>
                    </tr>
                </tbody>
            </table>












            <table width="770" border="0" align="center" cellpadding="0" cellspacing="0">


                <tr>
                    <td width="180" valign="top" class="border">












                        <table width="770" height="300" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td valign="top" class="style1">

                                    <center>

                                        <br />

                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">重新登录</asp:LinkButton>
                                        <br />
                                        <br />
                                        
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">修改密码</asp:LinkButton>
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">查看运营公司信息</asp:LinkButton>

                                        <br />
                                        <br />
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton4_Click">查看待审核公司</asp:LinkButton>
                                        <br />
                                        <br />
                                         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">查看未通过公司</asp:LinkButton>
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">查看景点</asp:LinkButton>
                                        <br />

                                    </center>
                                </td>

                                <!-- ********左右小分割******** -->

                                <td align="center" valign="top" bgcolor="#FFFFFF">

                                    <table>
                                        <tr>
                                            <td width="180" height="136">
                                                <div align="center"></div>
                                            </td>

                                            <td width="181">
                                                <div align="center"></div>
                                            </td>

                                            <td width="178">
                                                <div align="center"></div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td width="180" height="136">
                                                <div align="center"></div>
                                            </td>

                                            <td width="181">
                                                <div align="center"></div>
                                            </td>

                                            <td width="178">
                                                <div align="center"></div>
                                            </td>
                                        </tr>



                                    </table>









                                </td>
                            </tr>
                        </table>











                    </td>
                </tr>


            </table>











            <table width="770" border="0" align="center" cellpadding="0" cellspacing="0">
                <tbody>


                    <tr>
                        <td width="1" rowspan="2" align="middle" valign="bottom" bgcolor="#CCCCCC"></td>
                        <td
                            height="25" align="middle" background="images/foot_patt01.gif"><a href="">网站首页</a> | <a href="">关于我们</a> | <a href="">业务联系</a> | <a href="">版权声明</a> | <a href="">付款方式</a> | <a href="">留言/建议/投诉</a></td>
                        <td width="1" rowspan="2" align="middle" valign="bottom" bgcolor="#CCCCCC"></td>
                    </tr>
                    <tr>
                        <td height="60">
                            <div align="center"></div>
                        </td>


                    </tr>
                </tbody>
            </table>
    </form>


    </div>

</body>
</html>
