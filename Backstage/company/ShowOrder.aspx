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
                <div align="center"><FONT color=#ffffff><a href="Main.aspx"><FONT color=#ffffff>��ҳ</Font></a> | <a href=""><FONT color=#ffffff>���Ŷ�̬</Font></a> | <a href=""><FONT color=#ffffff>�ȼٲ�Ʒ</FONT></a> | <a href=""><font color="#FFFFFF"> ��������</font></a> | <a href=""><font color="#FFFFFF">�����Ƽ�</font></a> | <a href=""><font color="#FFFFFF">��ͼ����</font></a> | <a href=""><font color="#FFFFFF">�������</font></a> | <a href=""><font color="#FFFFFF">��Ա����</font></a> | <a href=""><font color="#FFFFFF">���߰���</font></a></FONT> </div></TD>
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
                              <TD width="715"><FONT color=#333333>&nbsp;����λ�ã�&nbsp;</FONT><a href="">·����Ϣ</a> &gt;&gt; </TD>
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
                                
                            <!--  �м���������� ��ʼ -->


                          
                          <center>
                              <br />

                                    <asp:Label ID="Label1" runat="server" Text="����·��"></asp:Label>
                                    <asp:TextBox ID="TextPathName" runat="server" Width="94px"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="����" 
                                  onclick="Button1_Click" />
                                    <br /><br />
        


                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                                  <Columns>
                                      <asp:BoundField DataField="PathID" HeaderText="·��ID" />
                                      <asp:BoundField DataField="PathName" HeaderText="·������" />
                                      <asp:BoundField DataField="PathPrice" HeaderText="·�߼۸�" />
                                      <asp:BoundField DataField="ReadyGoTime" HeaderText="����ʱ��" />
                                      <asp:BoundField DataField="OrderState" HeaderText="����״̬" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="ȡ������" CommandName="COrder" Text="ȡ��" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="֧������" Text="֧��" CommandName="GoOrder" Visible="False" />
                                      <asp:ButtonField ButtonType="Button" HeaderText="�鿴�ο�" Text="�鿴�ο�" CommandName="ShowYK" />
                                  </Columns>
                              </asp:GridView>
                              <br />
                              <asp:GridView ID="GV_ShowCust" runat="server" AutoGenerateColumns="False">
                                  <Columns>
                                      <asp:BoundField DataField="CustID" HeaderText="�ͻ�ID" />
                                      <asp:BoundField DataField="CustName" HeaderText="�ͻ�����" />
                                      <asp:BoundField DataField="CustPhone" HeaderText="�ͻ��ֻ�" />
                                      <asp:BoundField DataField="CustMail" HeaderText="�ͻ�����" />
                                      <asp:BoundField DataField="CustZipcode" HeaderText="���֤��" />
                                  </Columns>
                              </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">����ҳ��</asp:LinkButton>
            <br />

        </center>







                              <!--  �м���������� ���� -->
                                 
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
height=25 align=middle background=images/foot_patt01.gif><a href="">��վ��ҳ</a> | <a href="" >��������</a> | <a href="" >ҵ����ϵ</a> | <a href="" >��Ȩ����</a> | <a href="" >���ʽ</a> | <a href="" >����/����/Ͷ��</a></TD>
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
