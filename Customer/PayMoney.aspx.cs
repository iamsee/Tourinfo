using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_PayMoney : System.Web.UI.Page
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


        Label1.Text = Session["price"].ToString();

        string userMail = Session["CustMail"].ToString();
        string sql = "select * from TB_Customer where CustMail = '" + userMail + "'";



        dt = db.GetDataTable(sql);

        Label2.Text = dt.Rows[0]["CustName"].ToString();

    }
}