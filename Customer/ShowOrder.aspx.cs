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




        if (!IsPostBack)
        {
            GetDataTable();
        }

    }

    private void GetDataTable()
    {

        sqlString = "select * from TB_Order";
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
            int t = db.ExecuteSQL(sqlString);
            if(t>0)
            {
                Response.Write("<script language='javascript'>alert('取消成功');</script>");
                GetDataTable();
            }
            

        }
        else if(e.CommandName.ToString() == "GoOrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView1.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());

            Response.Write("<script language='javascript'>alert('增加订单成功');location.href='#';</script>");
        }
    }
}