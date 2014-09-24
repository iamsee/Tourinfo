using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
       
        if (txtEmail.Text.Trim() == "")
        {
            Response.Write("Email地址不能为空！");
            return;
        }
        if (txtPwd.Text.Trim() == "")
        {
            Response.Write("密码不能为空!");
            return;
        }
        if (txtPwd.Text.Trim() != txtConfirm.Text.Trim())
        {
            Response.Write("二次输入的密码不一致!");
            return;
        }
        string sql = "insert into mail(email,pwd) values ('"+txtEmail.Text.Trim()+"','"+txtPwd.Text.Trim()+"')";
        ExecuteSQl es = new ExecuteSQl();
        if (es.ExcuteSql(sql) != 0)
        {
            SendMail sm = new SendMail();
            string to = txtEmail.Text.Trim();
            string title = "TestEmail";
            string guid = Guid.NewGuid().ToString();
            //内容链接直接给的本地运行的路径,如在运行的端口号不一致时，得修改这个端中号(1142)
            string content = @"<a href='http://localhost:1142/Confirm.aspx?user=" + guid
                + "'>http://localhost:1142/Confirm.aspx?user=" + guid + "</a>";
         
            if (sm.Send(sm.MakeMail(to, title, content)))
            {
                string strSql = "update mail set active='"+guid+"' where email='"+to+"'";
                es.ExcuteSql(strSql);
                Response.Write("用户注册成功！请注意查收邮件！");
            }
            else
            {
                Response.Write("用户注册失败！");
            }
        }
    }
}
