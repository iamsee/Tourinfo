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
    DataTable dtp = new DataTable();
    DataTable dtc = new DataTable();
    DataTable dtd = new DataTable();
    CityandContury cc = new CityandContury();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        bind_p();

    }


    public void bind_p()
    {
        dtp = cc.getprovincename();
        ddl_p.DataSource = dtp;
        ddl_p.DataTextField = "ProvinceName";
        ddl_p.DataValueField = "ProvinceName";
        ddl_p.DataBind();
    }
    public void bind_c()
    {
        dtc = cc.getcityname();
        ddl_c.DataSource = dtc;
        ddl_c.DataTextField = "CityName";
        ddl_c.DataValueField = "CityName";

        ddl_c.DataBind();

    }

    public void bind_d()
    {
        dtd = cc.getdistrictname();



        ddl_d.DataSource = dtd;
        ddl_d.DataTextField = "DistrictName";
        ddl_d.DataTextField = "DistrictName";

        ddl_d.DataBind();
    }
    protected void But_Register_Click(object sender, EventArgs e)
    {
        string CompName = Text_CompName.Text.Trim();
        string CompMail = Text_CompMail.Text.Trim();
        string CompPwd = Text_CompPwd.Text.Trim();
        string CompPhone = Text_CompPhone.Text.Trim();
        string CompLocal = ddl_p.SelectedValue.ToString() + "-" + ddl_c.SelectedValue.ToString() + "-" + ddl_d.SelectedValue.ToString() + ":" + TextBox_Local.Text.Trim();

       
        

        CompPwd = PublicClass.getMd5Hash(CompPwd);//md5加密处理

        sqlString = "insert into TB_Company(CompName,CompMail,CompPwd,CompPhone,CompLocal,CompDate,CompState) values('" + CompName + "','" + CompMail + "','" + CompPwd + "','" + CompPhone + "','"+CompLocal+"'," + "getdate()" + "," + 1 + ")";
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
    protected void ddl_p_SelectedIndexChanged(object sender, EventArgs e)
    {
        cc.SelectProvinceName = ddl_p.SelectedValue.ToString();
        bind_c();
    }
    protected void ddl_c_SelectedIndexChanged(object sender, EventArgs e)
    {
        cc.SelectCityName = ddl_c.SelectedValue.ToString();
        bind_d();
    }
}