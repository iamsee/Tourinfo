using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_admin_WTGompInfo : System.Web.UI.Page
{
    private Database db = new Database();
    private DataSet ds = new DataSet();
    private DataTable dt = new DataTable();
    private string sqlString = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        bind();


    }
    public void bind()
    {
        sqlString = "select * from TB_Company where CompState =3 ;";
        ds = db.GetDataSet(sqlString);
        GV_showCompInfo.DataSource = ds;
        GV_showCompInfo.DataKeyNames = new string[] { "CompID" };
        GV_showCompInfo.DataBind();




    }
    protected void GV_showCompInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView theGrid = sender as GridView;
        int newPageIndex = 0;
        if (e.NewPageIndex == -3)
        {
            //点击了Go按钮
            TextBox txtNewPageIndex = null;

            //GridView较DataGrid提供了更多的API，获取分页块可以使用BottomPagerRow 或者TopPagerRow，当然还增加了HeaderRow和FooterRow
            GridViewRow pagerRow = theGrid.BottomPagerRow;

            if (pagerRow != null)
            {
                //得到text控件
                txtNewPageIndex = pagerRow.FindControl("txtNewPageIndex") as TextBox;
            }
            if (txtNewPageIndex != null)
            {
                //得到索引
                newPageIndex = int.Parse(txtNewPageIndex.Text) - 1;
            }
        }
        else
        {
            //点击了其他的按钮
            newPageIndex = e.NewPageIndex;
        }
        //防止新索引溢出
        newPageIndex = newPageIndex < 0 ? 0 : newPageIndex;
        newPageIndex = newPageIndex >= theGrid.PageCount ? theGrid.PageCount - 1 : newPageIndex;

        //得到新的值
        theGrid.PageIndex = newPageIndex;

        //重新绑定
        bind();
    }
    protected void GV_showCompInfo_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "Pass")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GV_showCompInfo.DataKeys[index];
            int CompID = Convert.ToInt32(key.Value.ToString());
            sqlString = "update TB_Company set CompState = 2 where CompID =" + CompID;
            int t = db.ExecuteSQL(sqlString);
            if (t > 0)
            {
                Response.Write("<script language='javascript'>alert('审核通过');</script>");
            }

        }
        if (e.CommandName.ToString() == "Over")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            DataKey key = this.GV_showCompInfo.DataKeys[index];
            int CompID = Convert.ToInt32(key.Value.ToString());
            sqlString = "update TB_Company set CompState = 2 where CompID =" + CompID;
            int t = db.ExecuteSQL(sqlString);
            if (t > 0)
            {
                Response.Write("<script language='javascript'>alert('审核未通过');</script>");
            }

        }

    }
    protected void GV_showCompInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int CompID = Convert.ToInt32(GV_showCompInfo.DataKeys[e.RowIndex].Value.ToString());
        string CompName = ((TextBox)(GV_showCompInfo.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
        string CompMail = ((TextBox)(GV_showCompInfo.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
        string CompPhone = ((TextBox)(GV_showCompInfo.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
        string CompLocal = ((TextBox)(GV_showCompInfo.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
        sqlString = "update TB_Company set CompName='" + CompName + "',CompMail='" + CompMail + "',CompPhone='" + CompPhone + "',CompLocal='" + CompLocal + "' where CompID='" + CompID + "';";
        int t = db.ExecuteSQL(sqlString);
        if (t > 0)
        {
            GV_showCompInfo.EditIndex = -1;
            bind();
        }


    }
    protected void GV_showCompInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GV_showCompInfo.EditIndex = e.NewEditIndex;
        bind();
    }
    protected void GV_showCompInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GV_showCompInfo.EditIndex = -1;
        bind();
    }
    protected void GV_showCompInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CompID = Convert.ToInt32(GV_showCompInfo.DataKeys[e.RowIndex].Value.ToString());
        sqlString = "delete from TB_Company where CompID=" + CompID;
        int t = db.ExecuteSQL(sqlString);
        if (t > 0)
        {
            Response.Write("<script language='javascript'>alert('删除成功');</script>");
            bind();
        }
    }
}