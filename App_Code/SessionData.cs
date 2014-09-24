using System;
using System.Collections.Generic;

using System.Web;

/// <summary>
/// Session 的摘要说明
/// </summary>
public  class SessionData
{
    private string sd="";

    public  string ShowSessionData(string sessiondata)
    {
        this.sd = sessiondata;

        return this.sd;
        
    }
}