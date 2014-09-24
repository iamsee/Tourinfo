using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterComp : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void But_Register_Click(object sender, EventArgs e)
    {
        string CompName = Text_CompName.Text.Trim();
        string CompMail = Text_CompMail.Text.Trim();
        string CompPwd = Text_CompPwd.Text.Trim();
        string CompPhone = Text_CompPhone.Text.Trim();

       
        

        CompPwd = PublicClass.getMd5Hash(CompPwd);//md5加密处理

        sqlString = "insert into TB_Company(CompName,CompMail,CompPwd,CompPhone,CompDate,CompState) values('" + CompName + "','" + CompMail + "','" + CompPwd+"','"+CompPhone+"',"+"getdate()"+","+1+")";
        if (db.ExecuteSQL(sqlString) > 0)
        {
            SendMail sm = new SendMail();
            string to = Text_CompMail.Text.Trim();
            string title = "邮箱确认邮件";
            string guid = Guid.NewGuid().ToString();
            //内容链接直接给的本地运行的路径,如在运行的端口号不一致时，得修改这个端中号(1142)
            string content = @"<a href='http://localhost:1142/Confirm.aspx?user=" + guid
                + "'>http://localhost:1142/Confirm.aspx?user=" + guid + "</a>";
            
            if (sm.Send(sm.MakeMail(to, title, content)))
            {
                sqlString = "update TB_Company set MailActive='" + guid + "' where CompMail='" + to + "'";
                db.ExecuteSQL(sqlString);
                Response.Write("<script>alert('邮箱确认邮件已经发送到您的邮箱请注意确认,系统将返回登录页面');location.href='CompLogin.aspx';</script>");
            }
            else
            {
                Response.Write("用户注册失败！");
            }
        }
    }
}