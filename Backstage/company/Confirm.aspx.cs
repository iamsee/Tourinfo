using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Confirm : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
            string guid = Request["user"].ToString();
            if (guid == "")
            {
                Response.Write("验证链接有误，请正确点击链接!");
            }
            sqlString = "update TB_Company set MailActive=1 where MailActive='"+guid+"'"+"and CompState = 1";
           
            if ( db.ExecuteSQL(sqlString) != 0)
            {
                Response.Write("验证成功！即将返回登录界面");
               // Response.Write("<script>location.href='CompLogin.aspx'</script>");
               // Response.Redirect("CompLogin.aspx");

                Response.Write(@"<script   language='javascript'>setTimeout('',2000);</script>");

                Response.Write("<meta   http-equiv='refresh'   content='2;URL=CompLogin.aspx'>");
            }
            else
            {
                Response.Write("验证失败！");
            }
    }
}
