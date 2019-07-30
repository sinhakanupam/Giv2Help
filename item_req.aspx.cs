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

public partial class item_req : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    public string item_name, condition, pic_1, pic_2, pic_3, pic_4, area, city, country, cat, owner_id;

    public int item_id;

    public string f_name, fb_mem_id,u_pic;



    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {





            item_id = Int32.Parse(Session["prd_id"].ToString());



           


            SqlDataAdapter da = new SqlDataAdapter("select * from item_data a inner join member_detail b on a.owner_id=b.mem_id where item_id='" + item_id + "'", cn);
            DataTable dt = new DataTable();
            cn.Open();
            da.Fill(dt);
            cn.Close();

            pic_1 = dt.Rows[0]["pic_1"].ToString();
            pic_2 = dt.Rows[0]["pic_2"].ToString();
            pic_3 = dt.Rows[0]["pic_3"].ToString();
            pic_4 = dt.Rows[0]["pic_4"].ToString();
            condition = dt.Rows[0]["condition"].ToString();
            area = dt.Rows[0]["area"].ToString();
            city = dt.Rows[0]["city"].ToString();
            country = dt.Rows[0]["country"].ToString();
            cat = dt.Rows[0]["cat"].ToString();
            item_name = dt.Rows[0]["name"].ToString();
            desc.Text = dt.Rows[0]["details"].ToString();
            owner_id = dt.Rows[0]["owner_id"].ToString();
           f_name = dt.Rows[0]["f_name"].ToString();
           // f_name = Session["mem_id"].ToString(); //just to test seesion value.
           // f_name = item_id.ToString();

           Label1.Text = owner_id.ToString();


            fb_mem_id = dt.Rows[0]["fb_mem_id"].ToString();

            u_pic = "https://graph.facebook.com/" + fb_mem_id + "/picture?width=100&height=100";



            //logic to check already requested product

           

        }


    }

    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {


        string fileNameWithPath = Server.MapPath("~/test/") + e.FileName.ToString();

        AjaxFileUpload1.SaveAs(fileNameWithPath);



    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cd = new SqlCommand("insert into prod_request(item_id,owner_id,mem_id,req_phon,cause,pic_1,pic_2,pic_3,pic_4,status,req_date) values('" + Int32.Parse(Session["prd_id"].ToString()) + "','" + Int32.Parse(Label1.Text) + "','" + Session["mem_id"] + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + ImgExSrc1.Value + "','" + ImgExSrc2.Value + "','" + ImgExSrc3.Value + "','" + ImgExSrc4.Value + "','PENDING','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "')", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("prod_req.aspx");






    }

}