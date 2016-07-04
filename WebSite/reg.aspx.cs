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
    string gMailAccount = "e.ravikanth1@gmail.com";
    string password = "GnuSRavi!@#)(*";
    string to, a, b, c, d;
    string owrid, owrpwd, yes, nam;
    string subject = "Secret Key";
    string message;
    string Id;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
    Class1 c1 = new Class1();

    encryption en = new encryption();
    string ra, uid, pas, unm;

    string sta = "online", sk = "null";

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Text = Convert.ToString(c1.createid());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        Random val = new Random();
        int randomnumber = val.Next(10, 200);
        ra = Convert.ToString(randomnumber);
        Label11.Text = en.createloginid(TextBox3.Text, TextBox4.Text, ra);
        Label12.Text = en.createprivacykey(TextBox3.Text, TextBox5.Text, ra);


        message = "Thanks for registering. Dont share your secret key with anyone. your secret key is : : " + Label12.Text;
        to = TextBox8.Text;
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
                   
            Session["username"] = TextBox5.Text;
            Session["emailid"] = TextBox8.Text;


            SqlCommand cmd = new SqlCommand("insert into dataowner_registration values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + Label12.Text + "','" + sta + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("reg_success.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);

        }

        yes = "yes";
    }

}