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

public partial class prod_req : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
    public string link,pic_1,pic_2,pic_3,pic_4;


    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["mem_id"] = 2;

            SqlDataAdapter da = new SqlDataAdapter("select a.req_id,a.item_id,a.owner_id,a.mem_id,a.cause,a.pic_1,a.pic_2,a.pic_3,a.pic_4,a.status,b.mem_id,b.mem_id,b.f_name,b.l_name,b.email,b.phone,c.item_id,c.name,c.country,c.city from prod_request a INNER JOIN member_detail b ON a.mem_id=b.mem_id INNER JOIN item_data c ON a.item_id=c.item_id where a.owner_id='" + Session["mem_id"] + "'", cn);
            DataTable dt = new DataTable();
            cn.Close();
            da.Fill(dt);
            cn.Close();
            
            
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

            Panel1.Visible = true;
            Panel2.Visible = false;

            Panel3.Visible = true;

            Panel4.Visible = false;
            Panel5.Visible = false;
            
        }
     

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "request_coming")
        {

            Panel1.Visible = false;
            Panel2.Visible = true;
            //Getting member detail_product_detail_request detail

            int req_id = Int32.Parse(((Label)e.Item.FindControl("Label5")).Text);
            request_id.Text = req_id.ToString();


            SqlDataAdapter da = new SqlDataAdapter("select a.req_id,a.item_id,a.owner_id,a.mem_id,a.req_phon,a.cause,a.pic_1,a.pic_2,a.pic_3,a.pic_4,a.status,b.mem_id,b.f_name,b.email,b.phone,b.fb_mem_id,b.country,b.city,b.work from prod_request a INNER JOIN member_detail b ON a.mem_id=b.mem_id where a.req_id='" + req_id + "'", cn);
            DataTable dt = new DataTable();
            cn.Open();
            da.Fill(dt);
            cn.Close();

            if (dt.Rows[0]["status"].ToString() == "APPROVED")
            {
                approved_well.Visible = true;
                reject_well.Visible = false;
                action_well.Visible = false;


            }
            else if (dt.Rows[0]["status"].ToString() == "REJECT")
            {
                reject_well.Visible = true;
                approved_well.Visible = false;
                action_well.Visible = false;


            }

            else
            {

                action_well.Visible = true;
                approved_well.Visible = false;
                reject_well.Visible = false;
                

            }



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

            




        }


    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("prod_req.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cd = new SqlCommand("update prod_request set own_phon='" + TextBox2.Text + "',owner_add='" + TextBox1.Text + "',status='APPROVED' where req_id='" + Int32.Parse(request_id.Text) + "'", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cn.Close();

        Panel3.Visible = false;
        Panel6.Visible = true;
        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cd = new SqlCommand("update prod_request set rej_reason='" + DropDownList2.SelectedValue + "',status='REJECT' where req_id='" + Int32.Parse(request_id.Text) + "'", cn);
        cn.Open();
        cd.ExecuteNonQuery();
        cn.Close();

        Panel4.Visible = false;
        Panel6.Visible = true;


        





    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "REJECT")
        {
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel5.Visible = false;

        }

        else if (DropDownList1.SelectedValue == "ACCEPT")
        {
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;

        }

        else if (DropDownList1.SelectedValue == "HOLD")
        {
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;

        }


    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel1.Visible = true;


    }


}