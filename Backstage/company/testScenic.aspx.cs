using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_company_testScenic : System.Web.UI.Page
{
    private Database db = new Database();
    private DataTable dt = new DataTable();
    private DataSet ds = new DataSet();
    private string sqlString = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetDataTable();
        }

    }
    private void GetDataTable()
    {  // string select = "SELECT [CompID], [CompName], [CompMail],[CompPwd] FROM [TB_Company] where CompMail =" + "'" + CompMail + "'" + ";";
        string select = "SELECT [ScenicID], [ScenicName], [ScenicLocal],[ScenicShow] FROM [TB_Scenic] ";
        ds = db.GetDataSet(select);
        // dt = ds.Tables[0];

        GV_ShowScenic.DataSource = ds;
        GV_ShowScenic.DataBind();

    }

    protected void gvshow_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int i = e.NewEditIndex;

        (GV_ShowScenic.Rows[i].FindControl("Text_ScenicName") as TextBox).Enabled = true; //激活要编辑的TextBox

    }
    protected void gvshow_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Save")  //保存更新数据
        {
            int index = Convert.ToInt32(e.CommandArgument);
            string Text_ScenicName = (GV_ShowScenic.Rows[index].FindControl("Text_ScenicName") as TextBox).Text;
            string Text_ScenicLocal = (GV_ShowScenic.Rows[index].FindControl("Text_ScenicLocal") as TextBox).Text;
            string Text_ScenicShow = (GV_ShowScenic.Rows[index].FindControl("Text_ScenicShow") as TextBox).Text;
            string sGwid = GV_ShowScenic.Rows[index].Cells[0].Text.ToString();
            string test1 = GV_ShowScenic.Rows[index].Cells[1].Text.ToString();
            string test2 = GV_ShowScenic.Rows[index].Cells[2].Text.ToString();
            string test3 = GV_ShowScenic.Rows[index].Cells[3].Text.ToString();
            
            string sql = "update TB_Scenic set = ScenicName'" + Text_ScenicName + "', ScenicLocl='" + Text_ScenicLocal + "',ScenicShow='" + Text_ScenicShow + "'";
            
            db.ExecuteSQL(sql);
            GetDataTable();
        }
    }
    protected void gvshow_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //为btnsave 赋予rowindex
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button btn = (Button)e.Row.Cells[4].FindControl("btnSave");
            btn.CommandArgument = e.Row.RowIndex.ToString();
        }
    }
}