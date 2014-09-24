<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExamineCompany.aspx.cs" Inherits="Backstage_company_ExamineComp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
        .auto-style2 {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                
                <td><fron size=24px>状态：</fron></td>
                <td><asp:Label ID="Lab_ShowState" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>请按以下步骤完成激活：</td>

            </tr>
        </table>
    </div>
        <div>
            <table>
                <tr>
                    <td class="auto-style1">1</td>
                </tr>
                <tr>
                    <td class="auto-style1">邮箱状态:</td>
                    <td><asp:Label ID="Lab_ShowMailState" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style1">重新发送验证邮件:</td>
                    <td><asp:Button ID="But_SendMail" runat="server" Text="点我发送" OnClick="But_SendMail_Click" />
                    
                </tr>
            </table>

        </div>
        <div>
            <table style="width: 334px">
                <tr>
                    <td class="auto-style2">2</td>
                </tr>
                <tr>
                    <td class="auto-style2">公司验证状态:</td>
                    <td>
                        <asp:Label ID="Lab_ShowCompState" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
           

            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Backstage/company/CompLogin.aspx">返回重新登录</asp:LinkButton>
           

        </div>
    </form>
</body>
</html>
