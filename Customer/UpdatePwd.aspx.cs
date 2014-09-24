using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_UpdatePwd : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;



    protected void Page_Load(object sender, EventArgs e)
    {



        string CustMail = string.Empty;
        if (Session["CustMail"] == null)
        {
            CustMail = "";
        }
        else
        {
            CustMail = Session["CustMail"].ToString();



        }
        if (CustMail == "")
        {
            Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='Login.aspx';</script>");
            Response.End();
        }

        TextUserMail.Text = Session["CustMail"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string userOldpwd = TextOldPassWord.Text.Trim();

        string userNewpwd = TextNewPassWord.Text.Trim();

        //update TB_Customer set CustPwd ='123' where CustPwd = '2' and CustMail ='2';

        sqlString = "update TB_Customer set CustPwd ='" + userNewpwd + "' where CustPwd = '" + userOldpwd + "' and CustMail ='" + Session["CustMail"].ToString() + "'";
       
        int num = db.ExecuteSQL(sqlString);

        if (num > 0)
        {



            Response.Write("<script language='javascript'>alert('修改成功');location.href='Main.aspx';</script>");
            



        }
        else
        {

            Response.Write("<script language='javascript'>alert('修改失败');location.href='UpdatePwd.aspx';</script>");
            Response.End();

        }

    }
   
}