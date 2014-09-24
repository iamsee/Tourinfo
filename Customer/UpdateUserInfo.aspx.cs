using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_UpdateUserInfo : System.Web.UI.Page
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


        TextMail.Text = dt.Rows[0]["CustMail"].ToString();
        //TextPwd.Text = dt.Rows[0]["CustPwd"].ToString();
        //TextRealName.Text = dt.Rows[0]["CustRealName"].ToString();
        //TextIDCard.Text = dt.Rows[0]["CustIDCard"].ToString();
        //TextAdress.Text = dt.Rows[0]["CustAddress"].ToString();
        //TextZipCode.Text = dt.Rows[0]["CustZipcode"].ToString();
        //TextPhone.Text = dt.Rows[0]["CustPhone"].ToString();


        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userMail = Session["CustMail"].ToString();
        string userPwd = TextPwd.Text.Trim();
        string userRealName = TextRealName.Text.Trim();
        string userIDCard = TextIDCard.Text.Trim();
        string userAdress = TextAdress.Text.Trim();
        string userZipCode = TextZipCode.Text.Trim();
        string userPhone = TextPhone.Text.Trim();


        //update TB_Customer set CustPwd ='1', CustRealName ='1',CustIDCard='1',CustAddress='1',CustZipcode='1',CustPhone='1'
       // where CustMail = '1';

        //若把上面的Page_Load中的注释打开则会出现不能准确修改
        string sql1 = "update TB_Customer set CustPwd ='" + userPwd + "', CustRealName ='" + userRealName + "',CustIDCard='" + userIDCard + "',CustAddress='" + userAdress + "',CustZipcode='" + userZipCode + "',CustPhone='" + userPhone + "' where CustMail = '"+userMail+"'";

        sqlString = sql1;

        int num = db.ExecuteSQL(sqlString);
       

        if (num > 0)
        {



            Response.Write("<script language='javascript'>alert('修改成功');location.href='Main.aspx';</script>");




        }
        else
        {

            Response.Write("<script language='javascript'>alert('修改失败');location.href='UpdateUserInfo.aspx';</script>");
            Response.End();

        }


    }
}