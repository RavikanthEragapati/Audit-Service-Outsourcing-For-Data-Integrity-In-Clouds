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
using System.Globalization;
using System.Net;
using System.IO;
using System.Xml.Linq;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
    string a, b, c, d, ee, f, g, h;

    string gMailAccount = "e.ravikanth1@gmail.com";
    string password = "GnuSRavi!@#)(*";
    string to;
    string owrid, owrpwd, yes, nam;
    string subject = "Secret Key";
    string message;
    string Id;

    encryption en = new encryption();
    string ra, uid, pas, unm;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlDataAdapter sda = new SqlDataAdapter("select uid,uname,name,pwd,mail,dob,usertype,skey from dataowner_registration where uname='" + TextBox1.Text + "' and mail='" + TextBox2.Text + "' and dob ='" + TextBox3.Text + "'", con);
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
            h = ds.Tables[0].Rows[0]["dob"].ToString();

            Session["id"] = a;
            Session["key"] = g;
            Session["name"] = c;

            if (TextBox1.Text == b && TextBox2.Text == ee && TextBox3.Text == h)
            {

        message = "Thanks for registering. Dont share your secret key with anyone. your secret key is : : " +g;
        to = ee;
        NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(gMailAccount);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(msg);
            Response.Redirect("Sent.aspx");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);

        }

        yes = "yes";
            }
            else
            {
                MsgBox.Show("Incorrect details. Check it");
            }
        }
        else
        {
            MsgBox.Show("not valid");
        }
        con.Close();
    }
}