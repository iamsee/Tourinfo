<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SHCompInfo.aspx.cs" Inherits="Backstage_admin_SHCompInfo" %>

<!DOCTYPE html>
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
        .style2
        {
            height: 33px;
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
                <div align="center"><FONT color=#ffffff><a href="Main.aspx"><FONT color=#ffffff>��ҳ</Font></a> | <a href=""><FONT color=#ffffff>���Ŷ�̬</Font></a> | <a href=""><FONT color=#ffffff>�ȼٲ�Ʒ</FONT></a> | <a href=""><font color="#FFFFFF"> ��������</font></a> | <a href=""><font color="#FFFFFF">�����Ƽ�</font></a> | <a href=""><font color="#FFFFFF">��ͼ����</font></a> | <a href=""><font color="#FFFFFF">�������</font></a> | <a href=""><font color="#FFFFFF">��Ա����</font></a> | <a href=""><font color="#FFFFFF">���߰���</font></a></FONT> </div></TD>
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
                   ��˾��Ϣ
             </b></font>
                    


                     <form id="form1" runat="server">

                         <asp:GridView ID="GV_showCompInfo" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GV_showCompInfo_PageIndexChanging" style="margin-bottom: 0px" OnRowCancelingEdit="GV_showCompInfo_RowCancelingEdit" OnRowCommand="GV_showCompInfo_RowCommand" OnRowDeleting="GV_showCompInfo_RowDeleting" OnRowEditing="GV_showCompInfo_RowEditing" OnRowUpdating="GV_showCompInfo_RowUpdating" >
                             <Columns>
                                 <asp:BoundField DataField="CompID" HeaderText="��˾ID" />
                                 <asp:BoundField DataField="CompName" HeaderText="��˾����" />
                                 <asp:BoundField DataField="CompMail" HeaderText="��˾����" />
                                 <asp:BoundField DataField="CompPhone" HeaderText="��˾�绰" />
                                 <asp:BoundField DataField="CompLocal" HeaderText="��˾λ��" />
                                 <asp:ButtonField ButtonType="Button" HeaderText="ͨ��" CommandName="Pass" Text="ͨ��" />
                                 <asp:ButtonField ButtonType="Button" HeaderText="��ͨ��" Text="��ͨ��" CommandName="Over" />
                                 <asp:CommandField HeaderText="�༭" ShowEditButton="True" />
                                 <asp:CommandField HeaderText="ɾ��" ShowDeleteButton="True" />
                             </Columns>
                             <PagerTemplate>
                    ��ǰ��:
                //((GridView)Container.NamingContainer)����Ϊ�˵õ���ǰ�Ŀؼ�
                <asp:Label ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                ҳ/��:
                //�õ���ҳҳ�������
                <asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                ҳ
                 //����÷�ҳ���׷�ҳ����ô�����ӾͲ�����ʾ��.ͬʱ��Ӧ���Դ�ʶ����������CommandArgument
                <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                    Visible='<%#((GridView)Container.NamingContainer).PageIndex != 0 %>'>��ҳ</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                    CommandName="Page" Visible='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>'>��һҳ</asp:LinkButton>
               //����÷�ҳ��βҳ����ô�����ӾͲ�����ʾ��
                <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>��һҳ</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>βҳ</asp:LinkButton>
                ת����
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />ҳ
                //���ｫCommandArgument��ʹ����ð�ťe.newIndex ֵΪ3 
                <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                    CommandName="Page" Text="GO" />
            </PagerTemplate>
                         </asp:GridView>
                    </form>
                    
                    
                    
                    </td>
                </tr>
            </table></td>
          </tr>
        </table>
        <table width="760" align="center" border="0" cellspacing="0" cellpadding="0" class="table-zuoyou" bordercolor="#CCCCCC">
          <tr>
            <td bordercolor="#FFFFFF" bgcolor="#FFFFFF">
               
               

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
height=25 align=middle background=images/foot_patt01.gif><a href="">��վ��ҳ</a> | <a href="" >��������</a> | <a href="" >ҵ����ϵ</a> | <a href="" >��Ȩ����</a> | <a href="" >���ʽ</a> | <a href="" >����/����/Ͷ��</a></TD>
        <TD width="1" rowspan="2" align=middle vAlign=bottom bgcolor="#CCCCCC"></TD>
      </TR>
      <TR>
        <TD height=60><div align="center"></div></TD>
            
        
      </TR>
    </TBODY>
  </TABLE>
</div>


</body></html>
