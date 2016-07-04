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
    string a, b, c, d, ee, f, g, h, i;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label15.Text = (string)Session["username"];
        Label16.Text = (string)Session["emailid"];
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from dataowner_registration where uname='" + Label15.Text + "' and mail='" + Label16.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            a = ds.Tables[0].Rows[0]["uid"].ToString();
            b = ds.Tables[0].Rows[0]["uname"].ToString();
            c = ds.Tables[0].Rows[0]["name"].ToString();
            d = ds.Tables[0].Rows[0]["pwd"].ToString();
            ee = ds.Tables[0].Rows[0]["mail"].ToString();
            f = ds.Tables[0].Rows[0]["usertype"].ToString();
            g = ds.Tables[0].Rows[0]["skey"].ToString();
            h = ds.Tables[0].Rows[0]["mobile"].ToString();
            i = ds.Tables[0].Rows[0]["dob"].ToString();

            Label8.Text = a;
            Label9.Text = b; 
            Label10.Text = d; 
            Label11.Text = ee; 
            Label12.Text = h; 
            Label13.Text = i; 
            Label14.Text = f; 


        }
        else
        {
            MsgBox.Show("not valid");
        }
        con.Close();
    }
}