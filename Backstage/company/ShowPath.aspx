<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPath.aspx.cs" Inherits="Backstage_company_ShowPath" %>
<%@ Register TagPrefix="hw" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style/default.css" rel="stylesheet" type="text/css"/>
    <title></title>
    <script src="../../App_Themes/DefaultTheme/DropDownCheckList.js" type="text/javascript"></script>
</head>
<body>
 <form id="form2" runat="server">
<table width="770" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <TR>
      <TD width="35%" height="81" align=left 
                  bgcolor="#ffffff" ><div align="center"></div></TD>
      <TD width="65%" align="middle" valign="center"  
                bgcolor="#ffffff" ><div align="center"></div></TD>
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
    <center>
                              
                                    <br /><br />
    

        <div>
        </div>
        <asp:GridView ID="GV_ShowPath" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowDataBound="GV_ShowPath_RowDataBound" OnRowDeleting="GV_ShowPath_RowDeleting" OnRowCommand="GV_ShowPath_RowCommand" Width="1183px" Height="204px" style="margin-left: 0px">
            <Columns>
                <asp:BoundField DataField="PathID" HeaderText="路线ID" Visible="False" />
                <asp:BoundField DataField="PathName" HeaderText="路线名称" />
                <asp:TemplateField HeaderText="包含景点">
                    <ItemTemplate>
                        <%-- <asp:DropDownList ID="DDL_Scenic"  runat="server" DataSource='<%# ddlbind()%>' DataValueField="ScenicID" DataTextField="ScenicID" Width="150px" AutoPostBack="true">--%>
                        <asp:DropDownList  ID="DDL_Scenic" runat="server" Width="150px" AutoPostBack="true" >
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PathPrice" HeaderText="路线价格" />
                <asp:BoundField DataField="TotalPeople" HeaderText="总人数" />
                <asp:BoundField DataField="FinalPeople" HeaderText="报名人数" />
                <asp:BoundField DataField="ReadyGoTime" HeaderText="预计发团日期" />
                <asp:BoundField DataField="PathState" HeaderText="路线状态"  />

                <asp:BoundField DataField="PathStay" HeaderText="住宿信息" />
                <asp:BoundField DataField="PathFood" HeaderText="餐饮信息" />
                <asp:BoundField DataField="Pathtraffice" HeaderText="交通信息" />
                <asp:BoundField DataField="PathGuide" HeaderText="导游信息" />

                <asp:CommandField ShowDeleteButton="True" />
                <asp:ButtonField ButtonType="Button" CommandName="But_StartFT" HeaderText="开始发团"  Text="开始发团" />
                <asp:ButtonField ButtonType="Button" CommandName="But_OverFT" HeaderText="发团结束" Text="发团结束" />
            </Columns>
        </asp:GridView>


        <asp:Table ID="Table1" runat="server" Width="933px">
            <asp:TableRow>
                <asp:TableCell>路线名称:</asp:TableCell>
                <asp:TableCell>包含景点</asp:TableCell>
                <asp:TableCell>路线价格</asp:TableCell>
                <asp:TableCell>总人数</asp:TableCell>
                <asp:TableCell>预计发团日期</asp:TableCell>
                <asp:TableCell>导游信息</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="Text_PathName" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>

                    <div>
      
    <%--<hw:DropDownCheckList runat="server" ID ="ddl"></hw:DropDownCheckList>--%>
        
        <hw:DropDownCheckList id="ddl" runat="server" DataTextField="Name" RepeatColumns="3"   DisplayTextWidth="160" DataValueField="ID" DropImageSrc="../../App_Themes/DefaultTheme/Images/admin_ico3.gif" TextWhenNoneChecked="--请选择--" 
        DisplayTextList="Labels"  ClientCodeLocation="DropDownCheckList.js"></hw:DropDownCheckList>
    </div>

                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="Text_Price" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddl_TotalNum" runat="server" Width="80px">
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList runat="server" ID="ddl_Year" Width="80" OnSelectedIndexChanged="ddl_Year_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:DropDownList runat="server" ID="ddl_Month" Width="40" OnSelectedIndexChanged="ddl_Month_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:DropDownList runat="server" ID="ddl_Day" Width="40"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="Text_Guide" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <asp:Button runat="server" ID="update_path" Text="增加路线" OnClick="update_path_Click" />


        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />


    </form>
        </center>
</body>
</html>
