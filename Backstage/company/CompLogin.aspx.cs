using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        string CompMail = Txt_CompMail.Text.Trim();
        string CompPwd = Txt_CompPwd.Text.Trim();
        int Interval = Convert.ToInt32(ddlInterval.SelectedValue);

        CompPwd = PublicClass.getMd5Hash(CompPwd);//经md5加密
        sqlString = "select * from TB_Company where CompMail='" + CompMail + "'";
        DataRow dr = db.GetDataRow(sqlString);
        if (dr == null)
        {
            Response.Write("<script>alert('用户名不存在');history.back();</script>");
            Response.End();//程序不在执行
        }
        else {
            if (dr["CompPwd"].ToString() == CompPwd)
            {
                string MailActive ;
                int CompState = 0;

                
                sqlString = "select CompState from TB_Company where CompMail='" + CompMail + "'";
                ds = db.GetDataSet(sqlString);
               
                dt = ds.Tables[0];
                CompState = Convert.ToInt32(dt.Rows[0][0].ToString());
                sqlString = "select MailActive from TB_Company where CompMail='" + CompMail + "'";
                ds = db.GetDataSet(sqlString);
                dt = ds.Tables[0];
                MailActive = dt.Rows[0][0].ToString();
                Session["CompState"] = CompState;
                Session["CompMail"] = CompMail;
               
                //处理完毕后重定向到登录成功页面，比如为Success.aspx
                if ((Convert.ToInt32(CompState) != 2)||(MailActive !="1"))
                {
                    Response.Redirect("~/Backstage/company/ExamineCompany.aspx");
                }
                else
                {
                    Session["CompMail"] = CompMail;


                    //跳到主页面
                   
                    Response.Redirect("Main.aspx");
                }
                
                //Response.Write("<script>alert('登陆成功');history.back();</script>");
                //Response.Cookies["CompMail"].Value = CompMail;
                //if (Interval > 0)
                //{
                //    Response.Cookies["CompMail"].Expires = DateTime.Now.AddDays(7);
                //}
               
            }
            else
            {
                Response.Write("<script>alert('密码错误')</script>");
                
            }
        }

    }
}