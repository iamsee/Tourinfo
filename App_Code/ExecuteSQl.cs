using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;

/// <summary>
/// ExecuteSQl 的摘要说明
/// </summary>
public class ExecuteSQl
{    
	public ExecuteSQl()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 获取数据库连接字符串
    /// </summary>
    public string conString
    {
        get
        {
            string con = ConfigurationManager.ConnectionStrings["EmailValidator"].ConnectionString;
            if (con != null || con != "")
            {
                return con;
            }
            else
            {
                return null;
            }
        }
    }
    /// <summary>
    /// 执行SQl语句
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public int ExcuteSql(string sql)
    {
        string conStr = conString;
        SqlConnection con=new SqlConnection (conStr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            return cmd.ExecuteNonQuery();
        }
        catch 
        {
            return 0;
        }
        finally
        {
            con.Close();
        }
    }
}
