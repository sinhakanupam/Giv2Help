<%@ WebHandler Language="C#" Class="FacebookLogin" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.ComponentModel;
using System.Globalization;
using AjaxControlToolkit;
using Facebook;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;


public class FacebookLogin : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    public string uid, small_uid, f_name, name, location;


    public void ProcessRequest(HttpContext context)
    {
        var accessToken = context.Request["accessToken"];
        context.Session["AccessToken"] = accessToken;

        //var accessToken = Session["AccessToken"].ToString();
        var client = new FacebookClient(accessToken);
        dynamic result = client.Get("me", new { fields = "id,work,first_name,name,location,last_name,email,gender,education,locale" });
        string temp_uid = result.id;

        uid = "https://graph.facebook.com/" + temp_uid + "/picture?width=100&height=100";

        small_uid = "https://graph.facebook.com/" + temp_uid + "/picture?width=29&height=29";

        f_name = result.first_name;
        name = result.name;
        location = result.location.name;

        string s = result.location.name;


        string[] values = s.Split(',');


        SqlDataAdapter da = new SqlDataAdapter("select * from member_detail where fb_mem_id='" + temp_uid + "'", cn);
        DataTable dt = new DataTable();
        cn.Open();
        da.Fill(dt);
        cn.Close();

        if (dt.Rows.Count > 0)
        {

        }
        else
        {
            SqlCommand cd = new SqlCommand("insert into member_detail(f_name,l_name,email,city,country,fb_mem_id,type,org,work,gender,locale,verified) output INSERTED.mem_id values('" + f_name + "','" + result.last_name + "','" + result.email + "','" + values[0].ToString() + "','" + values[1].ToString() + "','" + temp_uid + "','Individual','Professional','" + result.work[0].employer.name + "','" + result.gender + "','" + result.locale + "','Verified')", cn);
            cn.Open();
            int modified = (int)cd.ExecuteScalar();
            cn.Close();

            
            
            context.Session["mem_id"]=modified;
            


        }

        context.Response.Redirect("details.aspx?item_id=" + context.Request.Params["item_id"] + "&item_del=0");
    }

    public bool IsReusable
    {
        get { return false; }
    }
    
     
}