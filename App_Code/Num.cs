using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

/// <summary>
/// Num 的摘要说明
/// </summary>
public class Num
{

    Database db = new Database();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    string sqlString = string.Empty;

 //   public string GetNum { set; get; }

    public DataTable getnum()
    {
        dt = db.GetDataTable("select * from S_Num");
        return dt;
    }

}
