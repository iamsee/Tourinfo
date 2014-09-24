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


        string CompMail = string.Empty;
        if (Session["CompMail"] == null)
        {
            CompMail = "";
        }
        else
        {
            CompMail = Session["CompMail"].ToString();



        }
        if (CompMail == "")
        {
            Response.Write("<script language='javascript'>alert('进入登录界面');location.href='CompLogin.aspx';</script>");
            Response.End();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompLogin.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowPath.aspx");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowScenic.aspx");

    }
   
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        Response.Redirect("UpdatePwd.aspx");

    }

  
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowOrder.aspx");

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowOrder.aspx");
    }
}