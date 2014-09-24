using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customer1_SelectPath : System.Web.UI.Page
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
        string select1 = "select pathname 线路,CompName 公司名称,pathprice 价格,totalpeople 最大人数,finalpeople 已报人数,scenicname 景点名,sceniclocal 所在地,scenicshow 景点介绍 from TB_Path,TB_Scenic,TB_SJP,TB_Company";
        string select2 = " where TB_Path.PathID = TB_SJP.PathID and TB_Scenic.ScenicID= TB_SJP.SceniceID and TB_Company.CompID = TB_Path.CompID order by pathprice asc ";

        string select = select1 + select2;

        ds = db.GetDataSet(select);


        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {


        string sql1 = " select pathname 线路,CompName 公司名称,pathprice 价格,totalpeople 最大人数,finalpeople 已报人数,scenicname 景点名,sceniclocal 所在地,scenicshow 景点介绍 from TB_Path,TB_Scenic,TB_SJP,TB_Company";
        string sql2 = " where TB_Path.PathID = TB_SJP.PathID and TB_Scenic.ScenicID= TB_SJP.SceniceID and pathname in(";
        string sql3 = " select pathname from TB_Path,TB_Scenic,TB_SJP where TB_Path.PathID = TB_SJP.PathID and TB_Scenic.ScenicID= TB_SJP.SceniceID and TB_Company.CompID = TB_Path.CompID and scenicname = '" + TextScience.Text.Trim() + "') order by pathprice asc";
        string sql = sql1 + sql2 + sql3;
        ds = db.GetDataSet(sql);


        GridView1.DataSource = ds;
        GridView1.DataBind();





    }




    protected void Button2_Click(object sender, EventArgs e)
    {

        string pathname = TextName.Text.Trim();
        Session["pathName"] = pathname;
        Response.Redirect("OrderEdit.aspx");



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PathInfo.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");

    }
}