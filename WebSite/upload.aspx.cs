using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["id"];
        Label2.Text = (string)Session["uname"];
        TextBox1.Text = Convert.ToString(c1.createid1());
        TextBox3.Text = DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        if (FileUpload1.PostedFile == null || String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) || FileUpload1.PostedFile.InputStream == null || TextBox2.Text == "")
        {
            Label4.Text = "<br />Error - unable to upload file. Please try again.<br />";
        }
        else
        {
            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            c1.uploadfile(Label1.Text, Label2.Text, TextBox1.Text, TextBox2.Text, filebytes,TextBox3.Text);
            Label4.Text = "File successfully uploaded";
            Response.Redirect("upload.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("dataownerlogin.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("upload.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }

}