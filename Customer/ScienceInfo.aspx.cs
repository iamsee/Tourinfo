using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_About : System.Web.UI.Page
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
            GridView2.DataKeyNames = new string[] { "PathID" };
        }

    }

    private void GetDataTable()
    {

        string sql = "select ScenicID,ScenicName,ScenicLocal,ScenicShow from TB_Scenic";
        ds = db.GetDataSet(sql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "ScenicID" };
        GridView1.DataBind();
       

        
    }





    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName.ToString() == "CheckOrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView1.DataKeys[index];
            int ScenicID = Convert.ToInt32(key.Value.ToString());
            string sql1 = "select PathID,pathname ,CompName ,pathprice ,totalpeople ,finalpeople ,PathState ";
            string sql2 = ",PathStay ,PathFood ,Pathtraffice  ,PathGuide   from TB_Path,TB_Company ";
            string sql3 = "where TB_Company.CompID = TB_Path.CompID and TB_Path.PathID in ";
            string sql4 = "(select PathID from TB_SJP where ScenicID = " + ScenicID + ") order by pathprice asc;";
            string sql = sql1 + sql2 + sql3 + sql4;
            ds = db.GetDataSet(sql);
            GridView2.DataSource = ds;
            GridView2.DataBind();


            
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "AddInOrder")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GridView2.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());


            int CustID;

            string ReadyGoTime;
            string OrderDate = "getdate()";
            double PathPrice;
            string PathName;
            string compID;
            string CompName;
            string CustName;
            string CustPhone;
            string CustMail;
            string CustZipcode;

            sqlString = "select CustID from TB_Customer where CustMail='" + Session["CustMail"] + "';";
            ds = db.GetDataSet(sqlString);
            CustID = Convert.ToInt32((ds.Tables[0].Rows[0][0].ToString()));
            sqlString = "select CustName,CustPhone,CustMail,CustZipcode from TB_Customer where CustID=" + CustID;
            ds = db.GetDataSet(sqlString);
            CustName = ds.Tables[0].Rows[0][0].ToString();
            CustPhone = ds.Tables[0].Rows[0][1].ToString();
            CustMail = ds.Tables[0].Rows[0][2].ToString();
            CustZipcode = ds.Tables[0].Rows[0][3].ToString();

            sqlString = "select PathPrice,ReadyGoTime,PathName  from TB_Path where PathID=" + PathID;
            ds = db.GetDataSet(sqlString);
            ReadyGoTime = ds.Tables[0].Rows[0][1].ToString();
            PathPrice = Convert.ToSingle(ds.Tables[0].Rows[0][0].ToString());
            PathName = ds.Tables[0].Rows[0][2].ToString();
            sqlString = "select CompID from TB_Path where PathID=" + PathID;
            ds = db.GetDataSet(sqlString);
            compID = ds.Tables[0].Rows[0][0].ToString();
            sqlString = "select CompName from TB_Company where CompID=" + compID;
            ds = db.GetDataSet(sqlString);
            CompName = ds.Tables[0].Rows[0][0].ToString();

            sqlString = "insert into TB_Order (CustID,CustName,CustPhone,CustMail,CustZipcode,PathID,PathName,CompName,PathPrice,ReadyGoTime,OrderDate) values (" + CustID + ",'" + CustName + "','" + CustPhone + "','" + CustMail + "','" + CustZipcode + "'," + PathID + ",'" + PathName + "','" + CompName + "'," + PathPrice + ",'" + ReadyGoTime + "'," + OrderDate + ");";
            int t = db.ExecuteSQL(sqlString);
            if (t > 0)
            {
                Response.Write("<script>alert('增加订单成功');</script>");
            }





        }     
    }
}