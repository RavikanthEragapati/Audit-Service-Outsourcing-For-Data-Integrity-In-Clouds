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
using System.Text.RegularExpressions;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Globalization;
using System.Net.Mail;
using System.Net;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    string gMailAccount = "e.ravikanth@gmail.com";
    string password = "GnuSRavi!@#)(*";
    string to, a, b, c, d, ra, dd;
    string owrid, owrpwd, yes, nam;
    string subject = "Your Secret Key to download files....";
    string message;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);

    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["eff1"]);


    int h = 0;
    Class1 obj = new Class1();
    public static RSACryptoServiceProvider rsa;
    encryption en = new encryption();
    StringBuilder sb = new StringBuilder();
    StringBuilder sb1 = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //Panel1.Visible = false;
            //Panel2.Visible = false;
            Label3.Visible = false;
            //Label2.Visible = false;
            //TextBox1.Visible = false;
        }


        TextBox6.Text = (string)Session["text"]; ;
        string text = TextBox6.Text;
        string splitby = " ";
        Regex rg = new Regex(splitby);
        string[] st = rg.Split(text);
        int m = st.Count();
        for (int k = 0; k < m; k++)
        {
            if (st[k].ToString() != "")
            {
                DataSet da = new DataSet();
                da = obj.filematching(st[k].ToString());

                if (da.Tables[0].Rows.Count > 0)
                {
                    for (int f = 0; f < da.Tables[0].Rows.Count; f++)
                    {


                        // creation of linkbutton

                        LinkButton linkbutton = new LinkButton();
                        linkbutton.Text = da.Tables[0].Rows[f]["filename"].ToString() + "<br><br>";
                        linkbutton.Visible = true;
                        linkbutton.CommandName = da.Tables[0].Rows[f]["filename"].ToString();
                        linkbutton.Command += new CommandEventHandler(this.link_click);
                        linkbutton.ID = h.ToString();
                        this.downloadfiles.Controls.Add(linkbutton);
                        linkbutton.Visible = true;
                        lbl_entxt.Visible = true;
                        Panel4.Visible = true;

                        h++;

                    }
                }
                else
                {
                    MsgBox.Show("No files found");
                }
            }
        }



        try
        {

            Panel3.Visible = true;
            Panel4.Visible = true;

            Session["message"] = TextBox6.Text;

            // create secret key

            AssignParameter();
            //provide public and private RSA params
            StreamWriter writer = new StreamWriter(@"C:\Users\Rocky\Documents\Visual Studio 2010\Projects\WebSite1\privatekey.xml");
            string publicPrivateKeyXML = rsa.ToXmlString(true);
            writer.Write(publicPrivateKeyXML);
            writer.Close();
            //provide public only RSA params	
            writer = new StreamWriter(@"C:\Users\Rocky\Documents\Visual Studio 2010\Projects\WebSite1\publickey.xml");
            string publicOnlyKeyXML1 = rsa.ToXmlString(false);
            writer.Write(publicOnlyKeyXML1);
            writer.Close();

            // Label1.Text=Cryptography.EncryptData(txt_keyword.Text);

            // Encryption

            AssignParameter();
            StreamReader reader = new StreamReader(@"C:\Users\Rocky\Documents\Visual Studio 2010\Projects\WebSite1\publickey.xml");
            string publicOnlyKeyXML = reader.ReadToEnd();
            rsa.FromXmlString(publicOnlyKeyXML);
            reader.Close();
            //read plaintext, encrypt it to ciphertext	
            byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes(TextBox6.Text);
            byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
            for (int x = 0; x < cipherbytes.Length; x++)
            {
                sb.Append(cipherbytes[x].ToString() + "<br>");
            }
            Label3.Text = Convert.ToBase64String(cipherbytes);
            sb.Append(Label3.Text);
            Literal1.Text = Convert.ToString(sb);






            AssignParameter();
            byte[] getpassword = Convert.FromBase64String(Label3.Text);
            StreamReader reader1 = new StreamReader(@"C:\Users\Rocky\Documents\Visual Studio 2010\Projects\WebSite1\privatekey.xml");
            string publicPrivateKeyXML2 = reader1.ReadToEnd();
            rsa.FromXmlString(publicPrivateKeyXML2);
            reader1.Close();

            byte[] plain = rsa.Decrypt(getpassword, false);
            for (int y = 0; y < plain.Length; y++)
            {
                sb1.Append(plain[y].ToString() + "<br>");
            }
            Label1.Text = System.Text.Encoding.UTF8.GetString(plain);
            sb1.Append(Label1.Text);
            Label1.Visible = false;
            Literal2.Text = Convert.ToString(sb1);
            Panel5.Visible = true;

            //obj.storesearchdatas((string)Session["userid"],Label1.Text, Label2.Text);

        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
        }


    }



    protected void link_click(object sender, CommandEventArgs e)
    {
        //Response.Write(" <script type='text/javascript'> finaldoc=window.open('Default.aspx?id='"+e.CommandName+"'');</script>");
        Response.Redirect("secretkeydownload.aspx?id='" + e.CommandName + "'");


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    public static void AssignParameter()
    {
        const int PROVIDER_RSA_FULL = 1;
        const string CONTAINER_NAME = "SpiderContainer1";
        CspParameters cspParams;
        cspParams = new CspParameters(PROVIDER_RSA_FULL);
        cspParams.KeyContainerName = CONTAINER_NAME;
        cspParams.Flags = CspProviderFlags.UseMachineKeyStore;
        cspParams.ProviderName = "Microsoft Strong Cryptographic Provider";
        rsa = new RSACryptoServiceProvider(cspParams);
    }
}