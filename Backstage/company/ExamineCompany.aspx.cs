using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_company_ExamineComp : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;
    string CompMail = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["CompMail"] == null)
        {
            CompMail = "";
        }
        else
        {
            CompMail = Session["CompMail"].ToString();



        }
        if (CompMail == "")
        {
            Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='CompLogin.aspx';</script>");
            Response.End();
        }

        sqlString = "select MailActive,CompState from TB_Company where CompMail='" + CompMail + "'";
        ds = db.GetDataSet(sqlString);
        dt = ds.Tables[0];
        string MailActive = dt.Rows[0][0].ToString();
        int CompState = Convert.ToInt32(dt.Rows[0][1].ToString());
        if (MailActive != "1" || CompState != 2)
        {
            Lab_ShowState.Text = "公司账户未激活";
        }
        else
        {
            Lab_ShowState.Text = "账户已激活！";
        }
        if (MailActive != "1")
        {
            Lab_ShowMailState.Text = "邮箱未确认";
            
        }
        else
        {
            Lab_ShowMailState.Text = "邮箱已确认";
            But_SendMail.Enabled = false;
        }
        if (CompState == 0 )
        {
            Lab_ShowCompState.Text = "待审核";
        
        }
        else if (CompState == 1)
        {
            Lab_ShowCompState.Text = "审核未通过，请联系管理员";
        }
        else
        {
            Lab_ShowCompState.Text = "审核通过";
        }


    }
    protected void But_SendMail_Click(object sender, EventArgs e)
    {
        SendMail sm = new SendMail();
        string to = CompMail;
        string title = "邮箱确认邮件";
        string guid = Guid.NewGuid().ToString();
        //内容链接直接给的本地运行的路径,如在运行的端口号不一致时，得修改这个端中号(1142)
        string content = @"<a href='http://localhost:1142/Confirm.aspx?user=" + guid
            + "'>http://localhost:1142/Confirm.aspx?user=" + guid + "</a>";

        if (sm.Send(sm.MakeMail(to, title, content)))
        {
            sqlString = "update TB_Company set MailActive='" + guid + "' where CompMail='" + to + "'";
            db.ExecuteSQL(sqlString);
            Response.Write("<script>alert('邮箱确认邮件已经发送到您的邮箱请注意确认,请点击确认链接后刷新此界面');</script>");
        }
    }
}