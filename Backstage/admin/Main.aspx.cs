using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer1_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string AdminMail = string.Empty;
        if (Session["AdminMail"] == null)
        {
            AdminMail = "";
        }
        else
        {
            AdminMail = Session["AdminMail"].ToString();



        }
        if (AdminMail == "")
        {
            Response.Write("<script language='javascript'>alert('进入登录界面');location.href='Login.aspx';</script>");
            Response.End();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SHCompInfo.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowScenic.aspx");

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("WTGCompInfo.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        Response.Redirect("UpdatePwd.aspx");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompInfo.aspx");

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateUserInfo.aspx");

    }
}