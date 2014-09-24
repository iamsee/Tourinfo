using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_Login : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string userMail = TextUserMail.Text.Trim();
        string userPwd = TextPassWord.Text.Trim();

        sqlString = "select * from TB_Customer where CustMail='" + userMail + "'";
        DataRow dr = db.GetDataRow(sqlString);
        if (dr == null)
        {
            Response.Write("<script>alert('用户名不存在');</script>");
            Response.End();
        }
        else
        {
            if (dr["CustPwd"].ToString() == userPwd)
            {

                Session["CustMail"] = userMail;


                //跳到主页面
                Response.Redirect("~/Customer/Main.aspx");




            }
            else
            {
                Response.Write("<script>alert('密码错误')</script>");
                
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Register.aspx");

    }
}