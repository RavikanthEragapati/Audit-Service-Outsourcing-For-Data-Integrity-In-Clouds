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

    string Id, nam, ext;
    
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
        Id = Request.Params["ID"];
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter("Select fileid,filename,doid,doname,filee from uploaad where fileid='" + Id + "'", con);
       
        DataSet set = new DataSet();
        sd.Fill(set);
        Session["ii"] = Id;
        if (set.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("openfile1.aspx");
        }
        else
        {


            AssignParameter();
            StreamReader reader = new StreamReader(@"|DataDirectory|\publickey.xml");
            string publicOnlyKeyXML = reader.ReadToEnd();
            rsa.FromXmlString(publicOnlyKeyXML);
            reader.Close();

            byte[] plainbytes = System.Text.Encoding.UTF8.GetBytes((string)Session["message"]);
            byte[] cipherbytes = rsa.Encrypt(plainbytes, false);
            for (int x = 0; x < cipherbytes.Length; x++)
            {
                sb.Append(cipherbytes[x].ToString() + "<br>");
            }
           
        }
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


