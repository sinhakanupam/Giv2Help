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


public partial class details : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    public string item_name,condition,pic_1,pic_2,pic_3,pic_4,area,city,country,cat,owner_id,req_count;

    public int item_id;

    public string link_parser;

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["mem_id"] != "")
        {
            //item_del signifies deletion of product by member.


            if (Request.QueryString["item_del"] == "1")
            {

                item_id = Int32.Parse(Request.QueryString["item_id"]);
                SqlDataAdapter da52 = new SqlDataAdapter("select * from prod_request where owner_id='" + Session["mem_id"] + "' and item_id='" + item_id + "'", cn);
                DataTable dt52 = new DataTable();
                cn.Open();
                da52.Fill(dt52);
                cn.Close();
                req_count = dt52.Rows.Count.ToString();
                Panel3.Visible = true;


            }

            else if (Request.QueryString["item_del"] == "0")
            {

                Panel3.Visible = false;
            }




            if (!IsPostBack)
            {
                // Session["mem_id"] = 2;

                item_id = Int32.Parse(Request.QueryString["item_id"]);



                SqlDataAdapter da = new SqlDataAdapter("select * from item_data where item_id='" + item_id + "'", cn);
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
                req_panel.Visible = true;
                Panel7.Visible = false;
                Panel4.Visible = false;

                //logic to check already requested product

                if (Session["mem_id"].ToString() != "")
                {


                    SqlDataAdapter da1 = new SqlDataAdapter("select * from prod_request where item_id='" + item_id + "' and mem_id='" + Session["mem_id"] + "'", cn);
                    DataTable dt1 = new DataTable();
                    cn.Open();
                    da1.Fill(dt1);
                    cn.Close();

                    //removing request button during item delete process

                    if (dt1.Rows.Count > 0)
                    {
                        if (Request.QueryString["item_del"] == "1")
                        {
                            Panel1.Visible = false;
                            Panel2.Visible = false;
                        }
                        else
                        {
                            Panel1.Visible = false;
                            Panel2.Visible = true;

                        }


                    }

                    else if (dt1.Rows.Count == 0)
                    {
                        if (Request.QueryString["item_del"] == "1")
                        {
                            Panel1.Visible = false;
                            Panel2.Visible = false;
                        }
                        else
                        {
                            Panel1.Visible = true;
                            Panel2.Visible = false;
                        }

                    }


                }

            }


        }

        else
        {

            if (!IsPostBack)
            {
                item_id = Int32.Parse(Request.QueryString["item_id"]);



                SqlDataAdapter da = new SqlDataAdapter("select * from item_data where item_id='" + item_id + "'", cn);
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

                SqlDataAdapter da_cont = new SqlDataAdapter("select DISTINCT CONT from state", cn);
                DataSet ds_cont = new DataSet();
                cn.Open();
                da_cont.Fill(ds_cont);
                cn.Close();
                DropDownList1.DataTextField = ds_cont.Tables[0].Columns["CONT"].ToString();
                DropDownList1.DataValueField = ds_cont.Tables[0].Columns["CONT"].ToString();
                DropDownList1.DataSource = ds_cont.Tables[0];
                DropDownList1.DataBind();

                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel4.Visible = false;
                Panel7.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false;
                req_panel.Visible = false;

                //link_parser = "/website5/detail_fb.ashx?item_id="+item_id+"&item_del=0";



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

        SqlCommand cd = new SqlCommand("insert into prod_request(item_id,owner_id,mem_id,req_phon,cause,pic_1,pic_2,pic_3,pic_4,status,req_date) values('" + item_id + "','" + owner_id + "','" + Session["mem_id"] + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + ImgExSrc1.Value + "','" + ImgExSrc2.Value + "','" + ImgExSrc3.Value + "','" + ImgExSrc4.Value + "','PENDING','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "')", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cn.Close();



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        item_id = Int32.Parse(Request.QueryString["item_id"]);
        //Session["mem_id"] = Session["mem_id"].ToString() + "," + item_id.ToString();


        Session["prd_id"] = item_id;

        Response.Redirect("item_req.aspx");



    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        item_id = Int32.Parse(Request.QueryString["item_id"]);

        SqlCommand cd = new SqlCommand("delete from item_data where item_id='" + item_id + "'", cn);
        SqlCommand cd1 = new SqlCommand("update prod_request set status='REJECT' WHERE item_id='" + item_id + "'", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cd1.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("my_upload.aspx");



    }


    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

        // CONTROLLING DISPLAY OF REGISTRATION TEXBOX BASED ON TYE OF MEMBER
        //PANEL1 : NGO   PANEL2: INDIVIDUAL
        if (DropDownList5.SelectedValue == "NGO")
        {
            Panel5.Visible = true;
            Panel6.Visible = false;


        }
        else if (DropDownList5.SelectedValue == "Individual")
        {
            Panel5.Visible = false;
            Panel6.Visible = true;

        }
        else
        {
            Panel5.Visible = false;
            Panel6.Visible = false;
        }

        //------------------------------------------------------------------>

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {



        //DROPDOWN FOR CITY VALUE


        SqlDataAdapter da = new SqlDataAdapter("select DISTINCT CITY from state where CONT='" + DropDownList1.SelectedValue + "'", cn);
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        DropDownList3.DataTextField = ds.Tables[0].Columns["CITY"].ToString();
        DropDownList3.DataValueField = ds.Tables[0].Columns["CITY"].ToString();
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataBind();

        //--------------------------------------->

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        Panel7.Visible = false;

    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        item_id = Int32.Parse(Request.QueryString["item_id"]);
        SqlDataAdapter da = new SqlDataAdapter("select * from member_detail where email='" + TextBox10.Text + "' and password='" + TextBox11.Text + "'", cn);
        DataTable dt = new DataTable();
        cn.Open();
        da.Fill(dt);
        cn.Close();

        if (dt.Rows.Count > 0)
        {
            Session["mem_id"] = dt.Rows[0]["mem_id"];
            Response.Redirect("details.aspx?item_id=" + item_id + "&item_del=0");




        }

        else
        {
            error.Visible = true;


        }

    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel4.Visible = false;


    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string org, website;
        //assigning deafult value
        org = "";
        website = "";
        //-------------------------->

        // LOGIC TO GET ORG AND NGO DATA BASED OF TYPE OF MEMBER
        // INDIVIDUAL: ORG=TYPE OF PROFESSSION WEBSITE=COMPANY WORKIG FOR
        if (DropDownList5.SelectedValue == "NGO")
        {

            org = TextBox6.Text;
            website = TextBox7.Text;



        }
        else if (DropDownList5.SelectedValue == "Individual")
        {
            org = DropDownList6.SelectedValue.ToString();

            website = TextBox8.Text;
        }
        //------------------------------------------------------------------>

        // SQL QUERY TO INSERT MEMEBER DETAIL FROM EMAIL REGISTRATION PAGE
        SqlCommand cd = new SqlCommand("insert into member_detail(f_name,password,email,phone,country,city,type,org,website,work) output INSERTED.mem_id values('" + reg_name.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox9.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + DropDownList5.SelectedValue.ToString() + "','" + org + "','" + website + "','" + org + "')", cn);
        cn.Open();
        int modified=(int)cd.ExecuteScalar();

        cn.Close();
        //------------------------------------------------------>

        Session["mem_id"] = modified;
        item_id = Int32.Parse(Request.QueryString["item_id"]);

        Response.Redirect("details.aspx?item_id=" +item_id+ "&item_del=0");
        
    }
}