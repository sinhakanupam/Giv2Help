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


public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //DEFAULT: PANEL1 AND 2 FORM NGO AND INDIVIDUAL MEMBER TYPE TEXTBOX WILL NOT BE VISIBLE
            Panel1.Visible = false;
            Panel2.Visible = false;
            //----------------------------------->

            //DROPDOWN FOR COUNTRY VALUE

            SqlDataAdapter da = new SqlDataAdapter("select DISTINCT CONT from state", cn);
            DataSet ds = new DataSet();
            cn.Open();
            da.Fill(ds);
            cn.Close();
            DropDownList1.DataTextField = ds.Tables[0].Columns["CONT"].ToString();
            DropDownList1.DataValueField = ds.Tables[0].Columns["CONT"].ToString();
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();

            //--------------------------------------->

            Panel3.Visible = false;
            Panel4.Visible = true;


        }

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

        // CONTROLLING DISPLAY OF REGISTRATION TEXBOX BASED ON TYE OF MEMBER
        //PANEL1 : NGO   PANEL2: INDIVIDUAL
        if (DropDownList5.SelectedValue == "NGO")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;


        }
        else if (DropDownList5.SelectedValue == "Individual")
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            Panel2.Visible = false;
            Panel1.Visible = false;
        }

        //------------------------------------------------------------------>

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string org,website;
        //assigning deafult value
        org = "";
        website = "";
        //-------------------------->

        // LOGIC TO GET ORG AND NGO DATA BASED OF TYPE OF MEMBER
        // INDIVIDUAL: ORG=TYPE OF PROFESSSION WEBSITE=COMPANY WORKIG FOR
        if (DropDownList5.SelectedValue == "NGO")
        {
            
            org=TextBox6.Text;
            website=TextBox7.Text;



        }
        else if (DropDownList5.SelectedValue == "Individual")
        {
            org=DropDownList6.SelectedValue.ToString();

            website=TextBox8.Text;
        }
        //------------------------------------------------------------------>

        // SQL QUERY TO INSERT MEMEBER DETAIL FROM EMAIL REGISTRATION PAGE
        SqlCommand cd = new SqlCommand("insert into member_detail(f_name,password,email,phone,country,city,type,org,website,work) output INSERTED.mem_id values('" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox9.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + DropDownList5.SelectedValue.ToString() + "','" + org + "','" + website + "','" + org + "')", cn);
        cn.Open();
        int modified = (int)cd.ExecuteScalar();
        cn.Close();

        Session["mem_id"] = modified;
        Response.Redirect("home.aspx?mem_typ=0");

       
        //------------------------------------------------------>
        
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
        Panel3.Visible = true;
        Panel4.Visible = false;

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {




        SqlDataAdapter da = new SqlDataAdapter("select * from member_detail where email='" + TextBox10.Text + "' and password='" + TextBox11.Text + "'", cn);
        DataTable dt = new DataTable();
        cn.Open();
        da.Fill(dt);
        cn.Close();

        if (dt.Rows.Count > 0)
        {
            Session["mem_id"] = dt.Rows[0]["mem_id"];
            Response.Redirect("home.aspx?mem_typ=0");

        }

        else
        {
            error.Visible = true;


        }

    }
}