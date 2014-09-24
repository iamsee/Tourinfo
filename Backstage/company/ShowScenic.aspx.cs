using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_company_ShowScenic : System.Web.UI.Page
{
    private Database db = new Database();
    private DataSet ds = new DataSet();
    private DataTable dt = new DataTable();
    private string sqlString = string.Empty;
    DataTable dtp = new DataTable();
    DataTable dtc = new DataTable();
    DataTable dtd = new DataTable();
    CityandContury cc = new CityandContury();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        bind();
        bind_p();
       
        
    }

    public void bind()
    {
        sqlString = "select * from TB_Scenic;";
        ds = db.GetDataSet(sqlString);
        GV_ShowScenic.DataSource = ds;
        GV_ShowScenic.DataKeyNames = new string[] { "ScenicID" };
        GV_ShowScenic.DataBind();

        
       
        
    }

    public void bind_p()
    {
        dtp = cc.getprovincename();
        ddl_Province.DataSource = dtp;
        ddl_Province.DataTextField = "ProvinceName";
        ddl_Province.DataValueField = "ProvinceName";
        ddl_Province.DataBind();
    }
    public void bind_c()
    {
        dtc = cc.getcityname();
        ddl_City.DataSource = dtc;
        ddl_City.DataTextField = "CityName";
        ddl_City.DataValueField = "CityName";

        ddl_City.DataBind();

    }

    public void bind_d()
    {
        dtd = cc.getdistrictname();



        ddl_District.DataSource = dtd;
        ddl_District.DataTextField = "DistrictName";
        ddl_District.DataTextField = "DistrictName";

        ddl_District.DataBind();
    }
    protected void GV_ShowScenic_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GV_ShowScenic.EditIndex = e.NewEditIndex;
        bind();
    }
    protected void GV_ShowScenic_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
         Database db = new Database();
       

        string ScenicID = GV_ShowScenic.DataKeys[e.RowIndex].Value.ToString();

        string ScenicName = ((TextBox)(GV_ShowScenic.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();

        string ScenicLocal = ((TextBox)(GV_ShowScenic.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();

        string ScenicShow = ((TextBox)(GV_ShowScenic.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();

            sqlString = "update TB_Scenic set ScenicName='"+ScenicName+"',ScenicLocal='"+ScenicLocal+"',ScenicShow='"+ScenicShow+"' where ScenicID='"+ScenicID+"';";
        int t = db.ExecuteSQL(sqlString);
        if(t>0)
        {
            GV_ShowScenic.EditIndex = -1;
            Response.Write("<script>alert('更新景点成功');</script>");
            bind();
        }
     
     
    }
    protected void GV_ShowScenic_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GV_ShowScenic.EditIndex = -1;
        bind();
    }
    protected void But_Update_Scenic_Click(object sender, EventArgs e)
    {
        string ScenicName = Text_ScenicName.Text.Trim();
        string ScenicLocal = ddl_Province.SelectedValue.ToString() + "-" + ddl_City.SelectedValue.ToString() + "-" + ddl_District.SelectedValue.ToString();
        string ScenicShow = Text_ScenicShow.Text.ToString();

        sqlString = "insert into TB_Scenic (ScenicName,ScenicLocal,ScenicShow) values ('" + ScenicName + "','" + ScenicLocal + "','" + ScenicShow + "');";
        int t = db.ExecuteSQL(sqlString);
        if(t > 0)
        {
            Response.Write("<script>alert('增加景点成功');</script>");
            bind();
        }

    }
    protected void ddl_Province_SelectedIndexChanged(object sender, EventArgs e)
    {
        cc.SelectProvinceName = ddl_Province.SelectedValue.ToString();
        bind_c();
        
    }
    protected void ddl_City_SelectedIndexChanged(object sender, EventArgs e)
    {
        cc.SelectCityName = ddl_City.SelectedValue.ToString();
        bind_d();
    }
}