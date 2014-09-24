using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_Company : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;
    private SessionData sed = new SessionData();
   
     
    protected void Page_Load(object sender, EventArgs e)
    {
        string CompMail = string.Empty;
        if (Session["CompMail"] == null)
        {
            CompMail = "";
        }
        else
        {
            CompMail = Session["CompMail"].ToString();
            
           
           
        }
        if (CompMail == "")
        {
            Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='../../CompLogin.aspx';</script>");
            Response.End();
        }
        Lab_ShowCompMail.Text = CompMail;
     
    }

    private void SessionData(string CompMail)
    {
        throw new NotImplementedException();
    }




 

    
}