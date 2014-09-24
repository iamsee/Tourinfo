using System;
using System.Data;

public partial class Register : System.Web.UI.Page
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
        if (Page.IsValid)
        {
            //把用户填写的信息添加到数据库
            string CompMail = Text_CompMail.Text.Trim();

                
                
            string UserPwd = Text_UserPwd.Text.Trim();
            UserPwd = PublicClass.getMd5Hash(UserPwd);//md5加密处理
            string UserName = Text_UserName.Text.Trim();
            
            sqlString = "insert into Tab_Userinfo(CompMail,UserPwd,UserName) values('" + CompMail + "','" + UserPwd + "','" + UserName+"')";
            if (db.ExecuteSQL(sqlString) > 0)
            {
                Response.Write("<script>alert('恭喜您,注册成功,系统将返回登录页面');location.href='CompCompLogin.aspx';</script>");
            }
        }
    }
}