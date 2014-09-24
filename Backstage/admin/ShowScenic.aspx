<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowScenic.aspx.cs" Inherits="Backstage_company_ShowScenic" %>


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
                   公司信息
             </b></font>
                    


                    <form id="form1" runat="server">
    
        <asp:GridView ID="GV_ShowScenic" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GV_ShowScenic_RowCancelingEdit" OnRowEditing="GV_ShowScenic_RowEditing" OnRowUpdating="GV_ShowScenic_RowUpdating" Width="670px" OnRowDeleting="GV_ShowScenic_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ScenicID" HeaderText="ScenicID" />
                <asp:BoundField DataField="ScenicName" HeaderText="景点名称" />
            
                <asp:BoundField DataField="ScenicLocal" HeaderText="景点位置" />
                <asp:BoundField DataField="ScenicShow" HeaderText="景点描述" />
                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Table ID="Table1" runat="server" Width="775px" Height="70px">
            <asp:TableRow runat="server">
                <asp:TableCell Width="120px">景点名称</asp:TableCell>
                <asp:TableCell Width="400">景点位置</asp:TableCell>
                <asp:TableCell Width="300px" >景点描述 </asp:TableCell>

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
                        <br />
        <asp:Button ID="But_Update_Scenic" runat="server" Text="增加景点" OnClick="But_Update_Scenic_Click" />
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

    