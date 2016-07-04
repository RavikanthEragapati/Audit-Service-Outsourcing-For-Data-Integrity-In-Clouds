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
 /*   SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["eff"]);*/
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = (string)Session["id"];
        Label5.Text = (string)Session["name"];
        Label3.Text = (string)Session["uname"];

   /*     con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select doid,doname,fileid,filename,filee,tm from upload where doid='" + Label4.Text + "' and doname='" + Label5.Text + "'", con1);
        DataSet sd = new DataSet();
        sda.Fill(sd);
        if (sd.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = sd;
            GridView1.DataBind();

        }*/
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