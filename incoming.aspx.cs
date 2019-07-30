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

public partial class incoming : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    public string link, pic_1, pic_2, pic_3, pic_4, verify;

    public int req_id;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {

            Panel1.Visible = true;
            Panel2.Visible = false;


            Session["mem_id"] = 2;

            SqlDataAdapter da1 = new SqlDataAdapter("select a.req_id,a.item_id,a.owner_id,a.mem_id,a.cause,a.pic_1,a.pic_2,a.pic_3,a.pic_4,a.status,a.req_phon,b.mem_id,b.mem_id,b.f_name,b.l_name,b.email,c.item_id,c.name,c.country,c.city from prod_request a INNER JOIN member_detail b ON a.owner_id=b.mem_id INNER JOIN item_data c ON a.item_id=c.item_id where a.mem_id='" + Session["mem_id"] + "'", cn);
            DataTable dt1 = new DataTable();
            cn.Close();
            da1.Fill(dt1);
            cn.Close();

            Repeater1.DataSource = dt1;
            Repeater1.DataBind();

        }

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "request_coming")
        {

            Panel1.Visible = false;
            Panel2.Visible = true;
            //Getting member detail_product_detail_request detail

           req_id = Int32.Parse(((Label)e.Item.FindControl("Label5")).Text);
           request_id.Text = ((Label)e.Item.FindControl("Label5")).Text;


            SqlDataAdapter da = new SqlDataAdapter("select a.req_id,a.item_id,a.owner_id,a.mem_id,a.req_phon,a.cause,a.pic_1,a.pic_2,a.pic_3,a.pic_4,b.mem_id,b.f_name,b.email,b.phone,b.fb_mem_id,b.country,b.city,b.work from prod_request a INNER JOIN member_detail b ON a.owner_id=b.mem_id where a.req_id='" + req_id + "'", cn);
            DataTable dt = new DataTable();
            cn.Open();
            da.Fill(dt);
            cn.Close();

            Label1.Text = dt.Rows[0]["f_name"].ToString();
            link = "https://www.facebook.com/app_scoped_user_id/" + dt.Rows[0]["fb_mem_id"].ToString() + "";

            Label3.Text = dt.Rows[0]["work"].ToString();
            Label4.Text = dt.Rows[0]["country"].ToString();
            Label10.Text = dt.Rows[0]["city"].ToString();
            Label11.Text = dt.Rows[0]["email"].ToString();
            Label12.Text = dt.Rows[0]["req_phon"].ToString();
            pic_1 = dt.Rows[0]["pic_1"].ToString();
            pic_2 = dt.Rows[0]["pic_2"].ToString();
            pic_3 = dt.Rows[0]["pic_3"].ToString();
            pic_4 = dt.Rows[0]["pic_4"].ToString();
            Label14.Text = ((Label)e.Item.FindControl("Label6")).Text;
            Label15.Text = dt.Rows[0]["cause"].ToString();

            if (((Label)e.Item.FindControl("Label40")).Text == "APPROVED")
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
                verify = "~/img/verify.png";
                Image1.ImageUrl = verify;

                notif_approve.Visible = true;
                notif_warn.Visible = false;



            }

            else
            {
                Panel3.Visible = false;
                Panel4.Visible = true;
                verify = "~/img/lock.png";
                Image1.ImageUrl = verify;

                notif_approve.Visible = false;
                notif_warn.Visible = true;


            }



             

        }


    }


    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {


        string fileNameWithPath = Server.MapPath("~/test/") + e.FileName.ToString();

        AjaxFileUpload1.SaveAs(fileNameWithPath);



    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cd = new SqlCommand("insert into happiness_wall(req_id,thanknote,pic_1,pic_2,pic_3,pic_4,date) values('" + Int32.Parse(request_id.Text) + "','" + TextBox1.Text + "','" + ImgExSrc1.Value + "','" + ImgExSrc2.Value + "','" + ImgExSrc3.Value + "','" + ImgExSrc4.Value + "','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "')", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cn.Close();
        Panel5.Visible = false;
        Panel6.Visible = true;


    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("incoming.aspx");


    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel1.Visible = true;


    }

}