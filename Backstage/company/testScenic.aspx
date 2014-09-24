<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testScenic.aspx.cs" Inherits="Backstage_company_testScenic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GV_ShowScenic" runat="server" Width="700px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="183px"
            
            onrowediting="gvshow_RowEditing" onrowcommand="gvshow_RowCommand" 
            onrowcreated="gvshow_RowCreated" BorderStyle="Outset" AutoGenerateColumns="False" EnableTheming="True" UseAccessibleHeader="False" >
     <Columns >
       <asp:BoundField DataField="ScenicID" HeaderText="序号" />
                <asp:TemplateField HeaderText="景点名称">
                    <ItemTemplate>
                        <asp:TextBox ID="Text_ScenicName" runat="server" Text='<%#Bind("ScenicName")%>' Enabled ="false"></asp:TextBox>
                      
                    </ItemTemplate>

                </asp:TemplateField> 
                <asp:TemplateField HeaderText="景点位置">
                    <ItemTemplate>
                        <asp:TextBox ID="Text_ScenicLocal" runat="server" Text='<%#Bind("ScenicLocal")%>'></asp:TextBox>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="景点描述">
                    <ItemTemplate>
                        <asp:TextBox ID="Text_ScenicShow" runat="server" Text='<%#Bind("ScenicShow")%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
         <asp:TemplateField>
         <ItemTemplate >
           <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName ="Edit" ></asp:LinkButton>
          </ItemTemplate>
       </asp:TemplateField>
        <asp:TemplateField >
         <ItemTemplate >
          <asp:Button ID="btnSave" runat="server" Text=" Save "  CommandName ="Save" />
         </ItemTemplate>
       </asp:TemplateField>
     </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
