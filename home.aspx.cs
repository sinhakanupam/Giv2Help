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


public partial class home : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");


    public string uid, small_uid, f_name, name, location;

    public int count_req_app=0, count_req_rej=0, count_req_pend=0, count_req_sent=0, count_happy=0,total=0;


    protected void Page_Load(object sender, EventArgs e)
    {

       // Session["mem_id"] = 2;

        if (Int32.Parse(Request.QueryString["mem_typ"])==0)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from member_detail where mem_id='" + Session["mem_id"] + "'", cn);
            DataTable dt = new DataTable();

            cn.Open();
            da.Fill(dt);
            cn.Close();
            f_name = dt.Rows[0]["f_name"].ToString();
            name = f_name + "  " + dt.Rows[0]["l_name"].ToString();
            location = dt.Rows[0]["city"].ToString() + "," + dt.Rows[0]["country"].ToString();

           
                 

            

        }

        else if (Int32.Parse(Request.QueryString["mem_typ"]) == 1)
        {



            var accessToken = Session["AccessToken"].ToString();
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
                SqlCommand cd = new SqlCommand("insert into member_detail(f_name,l_name,email,city,country,fb_mem_id,type,org,work,gender,locale,verified) values('" + f_name + "','" + result.last_name + "','" + result.email + "','" + values[0].ToString() + "','" + values[1].ToString() + "','" + temp_uid + "','Individual','Professional','" + result.work[0].employer.name + "','" + result.gender + "','" + result.locale + "','Verified')", cn);
                cn.Open();
                cd.ExecuteNonQuery();
                cn.Close();


            }

        }




    }

    public void DoMagic()
    {

        //Code for notification bar


        SqlDataAdapter notif = new SqlDataAdapter("select * from prod_request where mem_id='" + Session["mem_id"] + "' and status='APPROVED'", cn);
        DataTable req_app = new DataTable();

        SqlDataAdapter notif1 = new SqlDataAdapter("select * from prod_request where mem_id='" + Session["mem_id"] + "' and status='REJECT'", cn);
        DataTable req_rej = new DataTable();

       
        SqlDataAdapter notif3 = new SqlDataAdapter("select * from prod_request where owner_id='" + Session["mem_id"] + "' and status='PENDING'", cn);
        DataTable req_u_made = new DataTable();

        SqlDataAdapter notif4 = new SqlDataAdapter("select * from notif where mem_id='" + Session["mem_id"] + "'", cn);
        DataTable status = new DataTable();


        SqlDataAdapter notif5 = new SqlDataAdapter("select * from happiness_wall a inner join prod_request b on a.req_id=b.req_id where b.mem_id='" + Session["mem_id"] + "'", cn);
        DataTable happy = new DataTable();

        cn.Open();
        notif.Fill(req_app);
        notif1.Fill(req_rej);
        
        notif3.Fill(req_u_made);
        notif5.Fill(happy);
        notif4.Fill(status);

        cn.Close();

        if (status.Rows.Count > 0)
        {

            if (Int32.Parse(status.Rows[0]["prod_req_approved"].ToString()) == req_app.Rows.Count)
            {

            }

            else
            {
                SqlCommand cd = new SqlCommand("update notif set prod_req_approved='" + req_app.Rows.Count + "' where mem_id='" + Session["mem_id"] + "'", cn);

                //req_app = req_app.Rows.Count - Int32.Parse(status.Rows[0]["prod_req_approved"].ToString());

                int a = req_app.Rows.Count;
                int b = Int32.Parse(status.Rows[0]["prod_req_approved"].ToString());

                count_req_app = a - b;

                cn.Open();
                cd.ExecuteNonQuery();
                cn.Close();



            }

            if (Int32.Parse(status.Rows[0]["prod_req_rej"].ToString()) == req_rej.Rows.Count)
            {

            }

            else
            {
                SqlCommand cd = new SqlCommand("update notif set prod_req_rej='" + req_rej.Rows.Count + "' where mem_id='" + Session["mem_id"] + "'", cn);

                //req_app = req_app.Rows.Count - Int32.Parse(status.Rows[0]["prod_req_approved"].ToString());

                int a = req_rej.Rows.Count;
                int b = Int32.Parse(status.Rows[0]["prod_req_rej"].ToString());

                count_req_rej  = a - b;

                cn.Open();
                cd.ExecuteNonQuery();
                cn.Close();



            }

            if (Int32.Parse(status.Rows[0]["incoming"].ToString()) == req_u_made.Rows.Count)
            {

            }

            else
            {
                SqlCommand cd = new SqlCommand("update notif set incoming='" + req_u_made.Rows.Count + "' where mem_id='" + Session["mem_id"] + "'", cn);

                //req_app = req_app.Rows.Count - Int32.Parse(status.Rows[0]["prod_req_approved"].ToString());

                int a = req_u_made.Rows.Count;
                int b = Int32.Parse(status.Rows[0]["incoming"].ToString());

                count_req_sent  = a - b;

                cn.Open();
                cd.ExecuteNonQuery();
                cn.Close();



            }


            if (Int32.Parse(status.Rows[0]["happiness"].ToString()) == happy.Rows.Count)
            {

            }

            else
            {
                SqlCommand cd = new SqlCommand("update notif set happiness='" + happy.Rows.Count + "' where mem_id='" + Session["mem_id"] + "'", cn);

                //req_app = req_app.Rows.Count - Int32.Parse(status.Rows[0]["prod_req_approved"].ToString());

                int a = happy.Rows.Count;
                int b = Int32.Parse(status.Rows[0]["happiness"].ToString());

                count_happy = a - b;

                cn.Open();
                cd.ExecuteNonQuery();
                cn.Close();



            }

            total = count_happy + count_req_app + count_req_rej + count_req_sent;



            
        }

           

       
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        // Do the magic, then disable the timer
        DoMagic();
        Timer1.Enabled = false;
    }


}