<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowScenic.aspx.cs" Inherits="Backstage_company_ShowScenic" %>

<!DOCTYPE html>

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
        <center>
        <asp:GridView ID="GV_ShowScenic" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowCancelingEdit="GV_ShowScenic_RowCancelingEdit" OnRowEditing="GV_ShowScenic_RowEditing" OnRowUpdating="GV_ShowScenic_RowUpdating" Width="670px">
            <Columns>
                <asp:BoundField DataField="ScenicID" HeaderText="ScenicID" />
                <asp:BoundField DataField="ScenicName" HeaderText="��������" />
            
                <asp:BoundField DataField="ScenicLocal" HeaderText="����λ��" />
                <asp:BoundField DataField="ScenicShow" HeaderText="��������" />
                <asp:CommandField HeaderText="�༭" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="But_Update_Scenic" runat="server" Text="Button" OnClick="But_Update_Scenic_Click" />
        <asp:Table ID="Table1" runat="server" Width="775px" Height="70px">
            <asp:TableRow runat="server">
                <asp:TableCell Width="120px">��������</asp:TableCell>
                <asp:TableCell Width="400">����λ��</asp:TableCell>
                <asp:TableCell Width="300px" >�������� </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:TextBox ID="Text_ScenicName" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddl_Province" runat="server" Width="100px" OnSelectedIndexChanged="ddl_Province_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                    <asp:DropDownList ID ="ddl_City" runat="server" Width="100px" OnSelectedIndexChanged="ddl_City_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:DropDownList ID="ddl_District" runat="server" Width="100px"></asp:DropDownList>

                </asp:TableCell>
               
                <asp:TableCell>
                    <asp:TextBox ID ="Text_ScenicShow" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
            </center>
    </form>
</body>
</html>
