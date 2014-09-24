using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_company_ShowPath : System.Web.UI.Page
{
    private Database db = new Database();
    private DataSet ds = new DataSet();
    private DataTable dt = new DataTable();
    private string sqlString = string.Empty;
    DataTable dty = new DataTable();
    DataTable dtm = new DataTable();
    DataTable dtd = new DataTable();
    Time time = new Time();
    string ID;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (this.IsPostBack)
            return;
        bind();
        bindy();

        string CompMail = string.Empty;
        Database db = new Database();
        if (Session["CompMail"] == null)
        {
            CompMail = "";
        }
        else
        {
            CompMail = Session["CompMail"].ToString();



        }
        //if (CompMail == "")
        //{
        //    Response.Write("<script language='javascript'>alert('你没有登录不可以查看此页面');location.href='../../CompLogin.aspx';</script>");
        //    Response.End();
        //}



    }

    protected void bind()    //绑定数据源
    {

        string sqlstr1 = "select * from TB_Path";
        DataSet ds = db.GetDataSet(sqlstr1);//数据访问函数自定义
        this.GV_ShowPath.DataSource = ds;
        this.GV_ShowPath.DataKeyNames = new string[] { "PathID" };//定义主要字段以便后来方便使用

        this.GV_ShowPath.DataBind();

        Num num = new Num();
        ddl_TotalNum.DataSource = num.getnum();
        ddl_TotalNum.DataTextField = "num";
        ddl_TotalNum.DataValueField = "num";
        ddl_TotalNum.DataBind();

        sqlString = "select ScenicName from TB_Scenic";
        ds = db.GetDataSet(sqlString);
        ddl.DataSource = ds;
        ddl.DataTextField = "ScenicName";
        ddl.DataValueField = "ScenicName";
        ddl.DataBind();

        string a = ddl.SelectedValue.ToString();

    }

    public void bindy()
    {
        dty = time.getyear();
        ddl_Year.DataSource = dty;
        ddl_Year.DataTextField = "Year";
        ddl_Year.DataValueField = "Year";
        ddl_Year.DataBind();
    }

    public void bindm()
    {
        dtm = time.getmonth();
        ddl_Month.DataSource = dtm;
        ddl_Month.DataTextField = "Month";
        ddl_Month.DataValueField = "Month";
        ddl_Month.DataBind();
    }

    public void bindd()
    {
        dtd = time.getday();
        ddl_Day.DataSource = dtd;
        ddl_Day.DataTextField = "Day";
        ddl_Day.DataValueField = "Day";
        ddl_Day.DataBind();
    }










    protected void GV_ShowPath_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            ID = DataBinder.Eval(e.Row.DataItem, "PathID").ToString();
            DropDownList ddl = (DropDownList)e.Row.FindControl("DDL_Scenic");
            sqlString = "select ScenicName from TB_Scenic where ScenicID in ( select ScenicID from TB_SJP where PathID='" + ID + "');";
            ds = db.GetDataSet(sqlString);
            ddl.DataSource = ds;
            ddl.DataValueField = "ScenicName";
            ddl.DataTextField = "ScenicName";
            //ddlbind();
            ddl.DataBind();
        }
    }


    //public DataSet ddlbind()
    //{
    //    sqlString = "select ScenicID from TB_SJP where PathID='" + ID + "';";
    //    ds = db.GetDataSet(sqlString);
    //    return ds;
    //}

    protected void GV_ShowPath_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //sqlString = "delete from TB_Scenic where ScenicID in (select ScenicID from TB_SJP where PathID ='" + GV_ShowPath.DataKeys[e.RowIndex].Value.ToString() + "');";
        //int a = db.ExecuteSQL(sqlString);
        sqlString = "delete from TB_SJP where PathID ='" + GV_ShowPath.DataKeys[e.RowIndex].Value.ToString() + "';";
        int b = db.ExecuteSQL(sqlString);

        sqlString = "delete from TB_Path where PathID ='" + GV_ShowPath.DataKeys[e.RowIndex].Value.ToString() + "';";

        int c = db.ExecuteSQL(sqlString);



        if (c > 0 || b>0)
        {
            Response.Write("<script>alert('成功');</script>");
            bind();
        }
        

    }

    protected void update_path_Click(object sender, EventArgs e)
    {

        string b = ddl.SelectedValuesToString(",").ToString().Trim();
        if (b == "")
        {
            Response.Write("<script>alert('路线为空，请重新选择');</script>");
        }
        else
        {

            int PathID = 0;
            int CompID = 1;
            string ReadyGoTime = ddl_Year.SelectedValue.ToString() + "/" + ddl_Month.SelectedValue.ToString() + "/" + ddl_Day.SelectedValue.ToString();

            string PathName = Text_PathName.Text.Trim();

            float PathPrice = 0.0f;
            try
            {
                PathPrice = Convert.ToSingle(Text_Price.Text.Trim());
            }
            catch
            {
                Response.Write("<script>alert('输入的价格有误请检查输入');</script>");
            }
            int TotalPeople = Convert.ToInt32(ddl_TotalNum.SelectedValue.ToString());
            string PathGuide = Text_Guide.Text.Trim();
            sqlString = "select * from TB_Path where PathName ='" + PathName + "';";
            ds = db.GetDataSet(sqlString);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('路线名重复，重新输入');</script>");
                Text_PathName.Text = "";
                Text_PathName.Focus();

            }
            else
            {


                if (Text_PathName.Text == "")
                {
                    Response.Write("<script>alert('路线名为空，重新输入');</script>");
                }
                else
                {
                    sqlString = "insert into TB_Path (CompID, PathName,PathPrice,TotalPeople,ReadyGoTime,PathGuide) values (" + CompID + ",'" + PathName + "'," + PathPrice + "," + TotalPeople + ",'" + ReadyGoTime + "','" + PathGuide + "');";
                    int show = db.ExecuteSQL(sqlString);
                    if (show > 0)
                    {
                        Response.Write("<script>alert('增加成功');</script>");
                    }

                    sqlString = "select PathID from TB_Path where PathName ='" + PathName + "';";
                    ds = db.GetDataSet(sqlString);
                    PathID = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());




                    string[] strarr = b.Split(',');
                    foreach (string i in strarr)
                    {
                        //Response.Write("<script>alert('"+i+"');</script>");
                        sqlString = "select ScenicID from TB_Scenic where ScenicName ='" + i + "';";
                        ds = db.GetDataSet(sqlString);
                        int ScenicID = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                        sqlString = "insert TB_SJP (ScenicID,PathID) values (" + ScenicID + "," + PathID + ");";
                        int t = db.ExecuteSQL(sqlString);
                        bind();

                    }
                }
            }


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = ddl.SelectedValue.ToString();
    }

    protected void GV_ShowPath_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == ("But_StartFT"))
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GV_ShowPath.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());

            string x = e.CommandSource.ToString();

            sqlString = "update TB_Path set PathState= '正在发团' where PathID=" + PathID + ";";
            int t = db.ExecuteSQL(sqlString);
            if (t > 0)
            {
                Response.Write("<script>alert('开始发团');</script>");
                bind();
            }

        }
        else if (e.CommandName.ToString() == ("But_OverFT"))
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GV_ShowPath.DataKeys[index];
            int PathID = Convert.ToInt32(key.Value.ToString());
            sqlString = "update TB_Path set PathState= '发团结束' where PathID=" + PathID + ";";
            int t = db.ExecuteSQL(sqlString);
            if (t > 0)
            {
                Response.Write("<script>alert('发团结束');</script>");
                bind();
            }
        }
    }


    protected void ddl_Year_SelectedIndexChanged(object sender, EventArgs e)
    {
        time.SelectYear = ddl_Year.SelectedValue.ToString();
        bindm();
    }
    protected void ddl_Month_SelectedIndexChanged(object sender, EventArgs e)
    {
        time.SelectMonth = ddl_Month.SelectedValue.ToString();
        bindd();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
 

