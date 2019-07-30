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

public partial class thanks_sent : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    public string fb_mem_id, f_name, p_name, country, city, pic_1, pic_2, pic_3, pic_4, note, date,u_pic;



    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            Panel1.Visible = true;
            Panel2.Visible = false;

            Session["mem_id"] = 2;


           SqlDataAdapter da = new SqlDataAdapter("select a.req_id,a.item_id,a.owner_id,a.mem_id,b.mem_id,b.f_name,b.l_name,b.fb_mem_id,c.item_id,c.name,c.country,c.city,d.req_id,d.thanknote,d.pic_1,d.pic_2,d.pic_3,d.pic_4,d.date from prod_request a INNER JOIN member_detail b ON a.mem_id=b.mem_id INNER JOIN item_data c ON a.item_id=c.item_id INNER JOIN happiness_wall d ON a.req_id=d.req_id where a.mem_id='" + Session["mem_id"] + "'", cn);
            //SqlDataAdapter da = new SqlDataAdapter("select * from prod_request", cn);

            DataTable dt = new DataTable();
            cn.Open();
            da.Fill(dt);
            cn.Close();


            Repeater1.DataSource = dt;
            Repeater1.DataBind();



        }

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "request_coming")
        {

            Panel1.Visible = false;
            Panel2.Visible = true;

            int req_id = Int32.Parse(((Label)e.Item.FindControl("Label5")).Text);
            fb_mem_id = ((Label)e.Item.FindControl("fb_mem_id")).Text;
            f_name = ((Label)e.Item.FindControl("Label7")).Text;
            p_name = ((Label)e.Item.FindControl("Label6")).Text;
            country = ((Label)e.Item.FindControl("Label8")).Text;
            city = ((Label)e.Item.FindControl("Label9")).Text;
            date = ((Label)e.Item.FindControl("date")).Text;

            SqlDataAdapter da = new SqlDataAdapter("select * from happiness_wall where req_id='" + req_id + "'", cn);
            DataTable dt = new DataTable();
            cn.Open();
            da.Fill(dt);
            cn.Close();

            pic_1 = dt.Rows[0]["pic_1"].ToString();
            pic_2 = dt.Rows[0]["pic_2"].ToString();
            pic_3 = dt.Rows[0]["pic_3"].ToString();
            pic_4 = dt.Rows[0]["pic_4"].ToString();


            note = dt.Rows[0]["thanknote"].ToString();

            u_pic= "https://graph.facebook.com/" + fb_mem_id + "/picture?width=100&height=100";



        }
        

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel1.Visible = true;


    }
}