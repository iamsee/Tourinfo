using System;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Database db = new Database();
            ddl.DataSource = db.GetDataSet("Select ScenicName from TB_Scenic");
            ddl.DataTextField = "ScenicName";
            ddl.DataValueField = "ScenicName";
            ddl.DataBind();
            //this.ddl.Items.Add(new ListItem("awsedf", "1"));
            //this.ddl.Items.Add(new ListItem("2wq", "2"));
            //this.ddl.Items.Add(new ListItem("12hgb", "3"));
            //this.ddl.Items.Add(new ListItem("er2", "4"));
            //this.ddl.Items.Add(new ListItem("1fdv", "5 "));
            //this.ddl.Items.Add(new ListItem("ccc", "6"));
            //this.ddl.Items.Add(new ListItem("1vc", "7"));
            //this.ddl.Items.Add(new ListItem("2vcd", "8"));
            //this.ddl.Items.Add(new ListItem("sdxc1", "9"));
            //this.ddl.Items.Add(new ListItem("cx2", "10"));
            //this.ddl.Items.Add(new ListItem("ds1", "11 "));
            //this.ddl.Items.Add(new ListItem("lk2", "12"));
            //this.ddl.Items.Add(new ListItem("gh1", "13"));
            //this.ddl.Items.Add(new ListItem("ghju", "14"));
            //this.ddl.Items.Add(new ListItem("1jhg", "15"));
            //this.ddl.Items.Add(new ListItem("2gbg", "16"));
            //this.ddl.Items.Add(new ListItem("5t2tr", "17"));
            //this.ddl.Items.Add(new ListItem("435tg2", "18"));
            //this.ddl.Items.Add(new ListItem("14ow", "19"));
            //this.ddl.Items.Add(new ListItem("2wqewds", "20"));
            //this.ddl.Items.Add(new ListItem("12hgb", "21"));
            //this.ddl.Items.Add(new ListItem("2desf", "22"));
            //this.ddl.Items.Add(new ListItem("1fdv", "23 "));
            //this.ddl.Items.Add(new ListItem("2bv", "24"));
            //this.ddl.Items.Add(new ListItem("1vc", "25"));
            //this.ddl.Items.Add(new ListItem("2vcd", "26"));
            //this.ddl.Items.Add(new ListItem("sdxc1", "27"));
            //this.ddl.Items.Add(new ListItem("cx2", "28"));
            //this.ddl.Items.Add(new ListItem("ds1", "29"));
            //this.ddl.Items.Add(new ListItem("lk2", "30"));
            //this.ddl.Items.Add(new ListItem("1dsf", "31"));
            //this.ddl.Items.Add(new ListItem("ghju", "32"));
            //this.ddl.Items.Add(new ListItem("1jhg", "33"));
            //this.ddl.Items.Add(new ListItem("2gbg", "34"));
            //this.ddl.Items.Add(new ListItem("5t2tr", "35"));
            //this.ddl.Items.Add(new ListItem("435tg2", "36"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Write("<script>alert('" + ddl.SelectedValuesToString(",").ToString().Trim() + "');</script>");
        
    }
}