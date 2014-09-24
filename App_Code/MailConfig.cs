﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Mail 的摘要说明
/// </summary>
public static class MailConfig
{
    /// <summary>
    /// 读取配置文件中的SMTP服务器
    /// </summary>
    public static string SMTPServer
    {
        get
        {
            string configSMTPServer=ConfigurationManager.AppSettings["SMTPServer"].ToString();
            if (configSMTPServer != null || configSMTPServer != "")
            {
                return configSMTPServer;
            }
            else
            {
                return null;
            }
        }
    }
    /// <summary>
    /// 读取配置文件中的用户账号
    /// </summary>
    public static string SMTPUser
    {
        get
        {
            string configSMTPUser = ConfigurationManager.AppSettings["SMTPUser"].ToString();
            if (configSMTPUser != null || configSMTPUser != "")
            {
                return configSMTPUser;
            }
            else
            {
                return null;
            }
        }
    }
    /// <summary>
    /// 读取配置文件中的用户密码
    /// </summary>
    public static string SMTPPwd
    {
        get
        {
            string configSMTPPwd = ConfigurationManager.AppSettings["SMTPPwd"].ToString();
            if (configSMTPPwd != null || configSMTPPwd != "")
            {
                return configSMTPPwd;
            }
            else
            {
                return null;
            }
        }
    }
    /// <summary>
    /// 读取配置文件中的SMTP端口号
    /// </summary>
    public static int SMTPPort
    {
        get
        {
            string configSMTPPort = ConfigurationManager.AppSettings["SMTPPort"].ToString();
            if (configSMTPPort != null || configSMTPPort != "")
            {
                return int.Parse(configSMTPPort);
            }
            else
            {
                return 0;
            }
        }
    }
    /// <summary>
    /// 读取配置文件中的显示名称
    /// </summary>
    public static string DisplayName
    {
        get
        {
            string configDisplay = ConfigurationManager.AppSettings["DisplayName"].ToString();
            if (configDisplay != null || configDisplay != "")
            {
                return configDisplay;
            }
            else
            {
                return null;
            }
        }
    }
}
