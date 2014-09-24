<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="Backstage_company_test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="PathID" HeaderText="PathID" />
                <asp:BoundField DataField="PathName" HeaderText="PathName" />
                <asp:BoundField DataField="PathPrice" HeaderText="PathPrice" />
                <asp:BoundField DataField="TotalPeople" HeaderText="TotalPeople" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
