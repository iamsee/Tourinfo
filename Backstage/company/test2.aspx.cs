using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backstage_company_test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack)
            return;
        bind();
    }
    protected void bind()    //绑定数据源
    {
        Database db = new Database();
        string sqlstr1 = "select * from TB_Path";
        DataSet ds = db.GetDataSet(sqlstr1);//数据访问函数自定义
        this.GridView1.DataSource = ds;
        this.GridView1.DataKeyNames = new string[] { "PathID" };//定义主要字段以便后来方便使用
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sqlstr;
        sqlstr = "delete from TB_Path where PathID='" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        Database db = new Database();
        db.ExecuteSQL(sqlstr);
    }
}