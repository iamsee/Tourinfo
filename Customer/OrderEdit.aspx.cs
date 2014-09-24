using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_OrderEdit : System.Web.UI.Page
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


        string pathName = "";


        pathName = Session["pathName"].ToString();

        TextPathName.Text = pathName;



        string userMail = Session["CustMail"].ToString();




        string sql = "select * from TB_Customer where CustMail = '" + userMail + "'";



        dt = db.GetDataTable(sql);

        TextName.Text = dt.Rows[0]["CustName"].ToString();
        TextIDCard.Text = dt.Rows[0]["CustIDCard"].ToString();
        TextPhone.Text = dt.Rows[0]["CustPhone"].ToString();

        string sql2 = "select * from TB_Path where PathName = '" + pathName + "'";


        dt = db.GetDataTable(sql2);
        TextPrice.Text = dt.Rows[0]["PathPrice"].ToString();

        string sql3 = "select * from TB_Company where CompID = '" + dt.Rows[0]["CompID"].ToString() + "'";
        dt = db.GetDataTable(sql3);

        TextCompName.Text = dt.Rows[0]["CompName"].ToString();


        TextPathName.Text = pathName;
       
        
        //TextDate.Text =
        


        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string userpathName = TextPathName.Text.Trim();
        string userName = TextName.Text.Trim();
        string userIDCard = TextIDCard.Text.Trim();
        string usrePrice = TextPrice.Text.Trim();
        string compName = TextCompName.Text.Trim();
        string userDate = TextDate.Text.Trim();
        string userPhone = TextPhone.Text.Trim();



         //string sql1 = "insert into TB_Order1(CustName,CompName,PathName,OrderDate,OrderPrice,CustPhone,CustIDCard) ";
         //string sql2 = " values ('4','4','4','1991-1-1','4','4','4');";
      


         string sql1 = "insert into TB_Order1(CustName,CompName,PathName,OrderDate,OrderPrice,CustPhone,CustIDCard) ";
         string sql2 = "values ('" + userName + "','" + compName + "','" + userpathName + "','" + userDate + "','" + usrePrice + "','" + userPhone + "','" + userIDCard + "')";
         sqlString = sql1 + sql2;

         int num = db.ExecuteSQL(sql1 + sql2);


         if (num > 0)
         {

             Session["price"] = usrePrice;

             Response.Write("<script language='javascript'>alert('提交成功');location.href='PayMoney.aspx';</script>");
             



         }
         else
         {
             Response.Write(num);
             Response.Write("<script language='javascript'>alert('提交失败');location.href='OrderEdit.aspx';</script>");
             Response.End();

         }


    }
}