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
        Response.Redirect("PathInfo.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ScienceInfo.aspx");

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("SelectPath.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        Response.Redirect("UpdatePwd.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserInfo.aspx");

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateUserInfo.aspx");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowOrder.aspx");

    }
}