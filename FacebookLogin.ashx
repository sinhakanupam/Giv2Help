<%@ WebHandler Language="C#" Class="FacebookLogin" %>

using System;
using System.Web;
using Facebook;


public class FacebookLogin : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        var accessToken = context.Request["accessToken"];
        context.Session["AccessToken"] = accessToken;

        context.Response.Redirect("home.aspx?mem_typ=1");
    }

    public bool IsReusable
    {
        get { return false; }
    }
    
     
}