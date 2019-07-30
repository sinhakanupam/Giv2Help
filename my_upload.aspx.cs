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

public partial class my_upload : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["mem_id"] = 2;

        SqlDataAdapter da = new SqlDataAdapter("select * from item_data where owner_id='" + Session["mem_id"] + "'", cn);
        DataTable dt = new DataTable();
        cn.Open();
        da.Fill(dt);
        cn.Close();

        Repeater1.DataSource = dt;
        Repeater1.DataBind();



    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "request_coming")
        {

            Response.Redirect("details.aspx?item_id=" + ((Label)e.Item.FindControl("item_id")).Text + "&item_del=1");



        }

    }
}