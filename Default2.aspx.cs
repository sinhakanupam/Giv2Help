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

public partial class Default2 : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Anupam\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

    public int count=1;
    public string k;


    protected void Page_Load(object sender, EventArgs e)
    {

        Session["mem_id"] = "";


        Session["AccessToken"] = "";
       

       // int req_id = 1;

        //SqlCommand cd1 = new SqlCommand("delete from temporary", cn);
        //cn.Open();
        //cd1.ExecuteNonQuery();
        //cn.Close();

      //  Label4.Text = "./test/11403465_10207338215120189_2927017680311175806_n.jpg";


        SqlCommand cd1 = new SqlCommand("delete from temporary", cn);

        SqlCommand cd = new SqlCommand("INSERT INTO temporary(pic) output INSERTED.mem_id values('jdenjen')", cn);


        cn.Open();
        int modified = (int)cd.ExecuteScalar();
       cn.Close();



       Label4.Text = modified.ToString();



        
    }


    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from state where CITY like @Name+'%'", con);
        cmd.Parameters.AddWithValue("@Name", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        List<string> CITY = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CITY.Add(dt.Rows[i][1].ToString());
        }
        return CITY;
    }
    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {


        //count = count + 1;



        string fileNameWithPath = Server.MapPath("~/test/")+e.FileName.ToString();

       

        AjaxFileUpload1.SaveAs(fileNameWithPath);

       
    


    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        Label1.Text = ImgExSrc1.Value;
        Label2.Text = ImgExSrc2.Value;
        Label3.Text = ImgExSrc3.Value;








        //SqlCommand cd = new SqlCommand("insert into temporary(mem_id,pic) values('444','" + img1.Src.ToString() + "')", cn);
        //cn.Open();
        //cd.ExecuteNonQuery();
        //cn.Close();

       // Response.Redirect("faq.html");


        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from member_detail where email='" + TextBox2.Text + "' and password='" + TextBox3.Text + "'", cn);
 
        DataTable dt = new DataTable();
        cn.Open();
        da.Fill(dt);
        cn.Close();

        if (dt.Rows.Count > 0)
        {
            Session["mem_id"] = dt.Rows[0]["mem_id"];
            Response.Redirect("home.aspx");

        }

        else
        {



        }

    }
}