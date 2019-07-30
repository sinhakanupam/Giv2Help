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
using System.Web.UI.HtmlControls;



public partial class upload : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        Session["mem_id"] = 2;


    }

    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {


        string fileNameWithPath = Server.MapPath("~/test/") + e.FileName.ToString();

        AjaxFileUpload1.SaveAs(fileNameWithPath);
        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cd = new SqlCommand("insert into item_data(name,area,cat,details,condition,owner_id,pic_1,pic_2,pic_3,pic_4,date) output INSERTED.item_id values('" + item_name.Text + "','" + area.Text + "','" + DropDownList2.SelectedValue + "','" + item_desc.Text + "','" + DropDownList1.SelectedValue + "','" + Session["mem_id"] + "','" + ImgExSrc1.Value + "','" + ImgExSrc2.Value + "','" + ImgExSrc3.Value + "','" + ImgExSrc4.Value + "','" + System.DateTime.Today.ToString("dd/MM/yyyy") + "')", cn);

        cn.Open();
        int k = (int)cd.ExecuteScalar();

        cn.Close();

        Response.Redirect("details.aspx?item_id="+k.ToString()+"");



      
    }
}