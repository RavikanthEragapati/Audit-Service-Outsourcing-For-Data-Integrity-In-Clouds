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
    string a, b, c, d, ee, f, g, h;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// below code we extract all the data of user using the given input on a button click.
    /// we assign those values to local variables.
    /// we check if the given input and data in the db are same or not 
    /// if same we redirect to a appropriate page.
    /// else we show a error msg.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select uid,uname,name,pwd,mail,usertype,skey from dataowner_registration where uname='" + TextBox1.Text + "' and pwd='" + TextBox3.Text + "' and skey='" + TextBox2.Text + "'", con);
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

            Session["id"] = a;
            Session["key"] = g;
            Session["name"] = c;
            Session["uname"] = b;

            if (TextBox1.Text == b && TextBox2.Text == g && TextBox3.Text == d)
            {
                Response.Redirect("dataownerlogin.aspx");
            }
            else
            {
                MsgBox.Show("Incorrect details. Check it");
            }
        }
        else if (TextBox1.Text == "tpa" && TextBox2.Text == "tpa")
        {
            Response.Redirect("TPA.aspx");
        }
        else
        {
            MsgBox.Show("not valid");
        }
        con.Close();

    }
}