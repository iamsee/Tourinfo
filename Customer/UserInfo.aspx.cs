using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_AA : System.Web.UI.Page
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

        string userMail = Session["CustMail"].ToString();
        string sql = "select * from TB_Customer where CustMail = '" + userMail + "'";



        dt = db.GetDataTable(sql);



        LabelName.Text = dt.Rows[0]["CustName"].ToString();
        LabelSex.Text = dt.Rows[0]["CustSex"].ToString();

        LabelMail.Text = dt.Rows[0]["CustMail"].ToString();
        
        LabelRealName.Text = dt.Rows[0]["CustRealName"].ToString();
        LabelZipCode.Text = dt.Rows[0]["CustZipcode"].ToString();
        LabelPhone.Text = dt.Rows[0]["CustPhone"].ToString();
        LabelAdress.Text = dt.Rows[0]["CustAddress"].ToString();
        LabelIDCard.Text = dt.Rows[0]["CustIDCard"].ToString();


                                         

    }
}