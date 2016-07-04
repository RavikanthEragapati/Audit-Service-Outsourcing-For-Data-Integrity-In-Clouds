using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for encryption
/// </summary>
public class encryption
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
    SqlCommand com,cmd1;
    string logid, len2, prky,prky1,len1,ske,len3;

    string id;
    int fid;
	public encryption()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string Encrypt(string toEncrypt, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
        System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
        string key = (string)settingsReader.GetValue("search", typeof(string));
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
        }
        else
                    keyArray = UTF8Encoding.UTF8.GetBytes(key);

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            tdes.Clear();
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);

        }   
    public static string Decrypt(string cipherString, bool useHashing)
    {
        byte[] keyArray;
        byte[] toEncryptArray = Convert.FromBase64String(cipherString);
        System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
        string key = (string)settingsReader.GetValue("search", typeof(String));
        if (useHashing)
        {
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();
            
        }
        else
            keyArray = UTF8Encoding.UTF8.GetBytes(key);

        TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
        tdes.Key = keyArray;
        tdes.Mode = CipherMode.ECB;
        tdes.Padding = PaddingMode.PKCS7;

        ICryptoTransform cTransform = tdes.CreateDecryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
                     
        tdes.Clear();
        return UTF8Encoding.UTF8.GetString(resultArray);
    }
    public  int idd()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(id) from user_reg", cn);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
        }
        cn.Close();
        return fid;
    }


    public int reid()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(reqid) from reqtobroker", cn);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
        }
        cn.Close();
        return fid;
    }

    public int docid()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(id) from Docreg", cn);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
        }
        cn.Close();
        return fid;
    }


    public int patid()
    {
        cn.Open();
        cmd1 = new SqlCommand("select max(id) from Patreg", cn);
        id = Convert.ToString(cmd1.ExecuteScalar());
        if (id == "")
        {
            fid = 1;
        }
        else
        {
            fid = Convert.ToInt16(id);
            fid = fid + 1;
        }
        cn.Close();
        return fid;
    }


    public string createloginid(string n1, string n2, string n3)
    {
        len1 = Convert.ToString(n2.Length);
        logid = Convert.ToString(n2 + n1 + len1 + n3);
        return logid;
    }

    public string skey(string n1)
    {
        len3 = Convert.ToString(n1.Length);
        ske = Convert.ToString(len3 + len3);
        return ske;
    }


    public string createprivacykey(string s1, string s2, string s3)
    {

        len2 = Convert.ToString(s2.Length);
        prky = Convert.ToString(s2 + s1 + len2 + s3);
        return prky;
    }
    public string secretkey(string r2, string r3)
    {
        //len3 = Convert.ToString(r2.Length);
        prky1 = Convert.ToString(r2 + r3);
        return prky1;
    }


    public void register(string id, string unam, string ps, string num, string em, string city, string fnm, string dat)
    {
        //cn.Open();
        //SqlCommand cmd = new SqlCommand("Insert into registration values('" + id + "','" + unam + "','" + ps + "','" + num + "','" + em + "','" + city + "','" + fnm + "','" + dat + "')", cn);
        //cmd.ExecuteNonQuery();
        try
        {
            cn.Open();
            com = new SqlCommand();
            com.Connection = cn;
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "register";
            com.Parameters.Add("@userid", SqlDbType.Int, 0);
            com.Parameters["@userid"].Value = id;
            com.Parameters.Add("@username", SqlDbType.VarChar, 50);
            com.Parameters["@username"].Value = unam;
            com.Parameters.Add("@password", SqlDbType.VarChar, 50);
            com.Parameters["@password"].Value = ps;
            com.Parameters.Add("@contactno", SqlDbType.VarChar, 50);
            com.Parameters["@contactno"].Value = num;
            com.Parameters.Add("@email", SqlDbType.VarChar, 50);
            com.Parameters["@email"].Value = em;
            com.Parameters.Add("@city", SqlDbType.VarChar, 50);
            com.Parameters["@city"].Value = city;
            com.Parameters.Add("@filename", SqlDbType.VarChar, 50);
            com.Parameters["@filename"].Value = fnm;
            com.Parameters.Add("@date", SqlDbType.DateTime);
            com.Parameters["@date"].Value = dat;
            com.ExecuteNonQuery();
            cn.Close();
        }
        catch (Exception e)
        {
            MsgBox.Show(e.Message);
        }
        //cn.Close();
    }

    public DataSet checkuser(string usr,string psw)
    {
        cn.Open();
        SqlDataAdapter adt = new SqlDataAdapter("select username,password from registration where username='" + usr + "' and password='" + psw + "'", cn);
        DataSet da = new DataSet();
        adt.Fill(da);
        cn.Close();
        return da;
        
    }

   
    
}
