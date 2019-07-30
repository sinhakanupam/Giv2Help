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

public partial class store : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");



    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where (item_id % 2) = 1", cn);
        DataTable item = new DataTable();
        cn.Open();
        da.Fill(item);
        cn.Close();


        SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where (item_id % 2) = 0", cn);
        DataTable item1 = new DataTable();
        cn.Open();
        da1.Fill(item1);
        cn.Close();


        Repeater1.DataSource = item1;
        Repeater1.DataBind();

        Repeater2.DataSource = item;
        Repeater2.DataBind();

        SqlDataAdapter da2 = new SqlDataAdapter("select distinct CITY from state", cn);
        DataSet ds = new DataSet();

        cn.Open();
        da2.Fill(ds);
        cn.Close();

        DropDownList2.DataTextField = ds.Tables[0].Columns["CITY"].ToString();
        DropDownList2.DataValueField = ds.Tables[0].Columns["CITY"].ToString();
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataBind();

    }

    

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "request_coming")
        {




        }


    }


    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "request_coming")
        {




        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable item1 = new DataTable();

        DataTable item = new DataTable();
        if (DropDownList1.SelectedValue == "All" && DropDownList2.SelectedValue=="ALL" && TextBox2.Text=="")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where (item_id % 2) = 0", cn);

            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


           

        }

        else if (DropDownList1.SelectedValue == "All" && DropDownList2.SelectedValue != "ALL" && TextBox2.Text == "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' and (item_id % 2) = 0", cn);

            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();

        }

        else if (DropDownList1.SelectedValue == "All" && DropDownList2.SelectedValue == "ALL" && TextBox2.Text != "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where name like ('%" + TextBox2.Text + "%') AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where name like ('%" + TextBox2.Text + "%') and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }

        else if (DropDownList1.SelectedValue == "All" && DropDownList2.SelectedValue != "ALL" && TextBox2.Text != "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' AND name like ('%" + TextBox2.Text + "%') AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' and name like ('%" + TextBox2.Text + "%') and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }

        else if (DropDownList1.SelectedValue != "All" && DropDownList2.SelectedValue != "ALL" && TextBox2.Text != "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' AND name like ('%" + TextBox2.Text + "%') AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where city='" + DropDownList2.SelectedValue + "' and name like ('%" + TextBox2.Text + "%') and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }

        else if (DropDownList1.SelectedValue != "All" && DropDownList2.SelectedValue == "ALL" && TextBox2.Text != "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='"+DropDownList1.SelectedValue+"' and name like ('%" + TextBox2.Text + "%') AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='" + DropDownList1.SelectedValue + "' and name like ('%" + TextBox2.Text + "%') and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }
        else if (DropDownList1.SelectedValue != "All" && DropDownList2.SelectedValue != "ALL" && TextBox2.Text == "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='" + DropDownList1.SelectedValue + "' and city='" + DropDownList2.SelectedValue + "' AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='" + DropDownList1.SelectedValue + "' and city='" + DropDownList2.SelectedValue + "' and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }

        else if (DropDownList1.SelectedValue != "All" && DropDownList2.SelectedValue == "ALL" && TextBox2.Text == "")
        {
            SqlDataAdapter da = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='" + DropDownList1.SelectedValue + "' AND (item_id % 2) = 1", cn);
            SqlDataAdapter da1 = new SqlDataAdapter("select item_id,name,pic_1,cat,city,details,condition from item_data where cat='" + DropDownList1.SelectedValue + "' and (item_id % 2) = 0", cn);
            cn.Open();
            da.Fill(item);
            da1.Fill(item1);
            cn.Close();


        }

        

        Repeater1.DataSource = item1;
        Repeater1.DataBind();

        Repeater2.DataSource = item;
        Repeater2.DataBind();

    }
}