using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_ShowOrder : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;

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
            Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='CompLogin.aspx';</script>");
            Response.End();
        }




        if (!IsPostBack)
        {
            GetDataTable();
        }

    }

    private void GetDataTable()
    {
        string CompName;
        
        sqlString = "select CompName from TB_Company where CompMail='" + Session["CompMail"] + "';";
        ds = db.GetDataSet(sqlString);
        CompName = ds.Tables[0].Rows[0][0].ToString();
        sqlString = "select * from TB_Order where CompName='" + CompName + "';"; ;
        ds = db.GetDataSet(sqlString);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "PathID" };
        GridView1.DataBind();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string PathName = TextPathName.Text.Trim();
        sqlString = "select * from TB_Order where PathName='"+PathName+"';";
        ds = db.GetDataSet(sqlString);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "PathID" };
        GridView1.DataBind();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName.ToString()=="COrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView1.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());
            sqlString = "delete from TB_Order where PathID=" + PathID;

        }
        else if(e.CommandName.ToString() == "GoOrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView1.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());

            Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='#';</script>");
        }
        else if(e.CommandName.ToString() == "ShowYK")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView1.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());

            int CustID;
            string CustName;
            sqlString = "select CustID,CustName,CustPhone,CustMail,CustZipcode from TB_Order where PathID=" + PathID;
            ds = db.GetDataSet(sqlString);

            GV_ShowCust.DataSource = ds;
            GV_ShowCust.DataKeyNames = new string[] { "CustID" };
            GV_ShowCust.DataBind();
         
        }
    }
}