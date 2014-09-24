using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_Register : System.Web.UI.Page
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


        
        string userName = TextUserName.Text.Trim();
        string userMail = TextUserMail.Text.Trim();
        string userPwd = TextPassWord.Text.Trim();
        string userRealName = TextBoxRealName.Text.Trim();
        string userIDCard = TextIDCard.Text.Trim();
        string userSex = TextSex.Text.Trim();
        string userAdress = TextAdress.Text.Trim();
        string userZipCode = TextZipCode.Text.Trim();
        string userPhone = TextPhone.Text.Trim();







        //insert into TB_Customer(CustName,CustMail,CustPwd,CustRealName,CustIDCard,CustAddress,CustZipcode,CustPhone) 
        // values('3', '3', '3', '3', '3', '3', '3', '3');
        string sql1 = "insert into TB_Customer(CustName,CustMail,CustPwd,CustRealName,CustIDCard,CustSex,CustAddress,CustZipcode,CustPhone)";
        string sql2 = " values('" + userName + "', '" + userMail + "', '" + userPwd + "', '" + userRealName + "', '" + userIDCard + "', '" + userSex + "','" + userAdress + "', '" + userZipCode + "', '" + userPhone + "')";
        sqlString = sql1 + sql2;
        int num = db.ExecuteSQL(sqlString);

        if (num > 0)
        {

           

            Response.Write("<script language='javascript'>alert('注册成功');location.href='Main.aspx';</script>");



        }
        else
        {

            Response.Write("<script language='javascript'>alert('注册失败');location.href='Register.aspx';</script>");
            Response.End();

        }




    }
}