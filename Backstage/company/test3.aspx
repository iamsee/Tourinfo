<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test3.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="hw" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script src="../../App_Themes/DefaultTheme/DropDownCheckList.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
    <%--<hw:DropDownCheckList runat="server" ID ="ddl"></hw:DropDownCheckList>--%>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <hw:DropDownCheckList id="ddl" runat="server" DataTextField="Name" RepeatColumns="3"   DisplayTextWidth="160" DataValueField="ID" DropImageSrc="../../App_Themes/DefaultTheme/Images/admin_ico3.gif" TextWhenNoneChecked="--请选择--" 
        DisplayTextList="Labels"  ClientCodeLocation="DropDownCheckList.js"></hw:DropDownCheckList>
    </div>
    </form>
</body>
</html>
