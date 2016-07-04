using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{

    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);

    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["eff1"]);

    string id, pbky, msky, len1, len2, idno;


	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//

    }


    public void register(String nam, String usernam, String pass, String value, String addrs, String city, String residence, String residencnindia, String othrstate, String residencystatus, String citizn, String email, String telephone, String relation, String gender, String dob, String dob1, String dob2, String age, String mothertongue, String educaton, String occupation, String incom, String status, String children, String lookingfor, String abtpartner, String height, String bodytype, String complexin, String cases, String smoke, String drink, String diet, String cntryofbirth, String caste, String subcaste, String star, String raasi, String timeofbirth, String timeofbirth1, String timeofbirth2, String cityofbirth, String familyvalues, String abtyourself, String abtfamily, String hear, String agree, String regdate, String ExpiredDate, String validation, String payment)
    {
        try
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into registerform values('" + nam + "','" + usernam + "','" + pass + "','" + value + "','" + addrs + "','" + city + "','" + residence + "','" + residencnindia + "','" + othrstate + "','" + residencystatus + "','" + citizn + "','" + email + "','" + telephone + "','" + relation + "','" + gender + "',('" + dob + "'+'/'+'" + dob1 + "'+'/'+'" + dob2 + "'),'" + age + "','" + mothertongue + "','" + educaton + "','" + occupation + "','" + incom + "','" + status + "','" + children + "','" + lookingfor + "','" + abtpartner + "','" + height + "','" + bodytype + "','" + complexin + "','" + cases + "','" + smoke + "','" + drink + "','" + diet + "','" + cntryofbirth + "','" + caste + "','" + subcaste + "','" + star + "','" + raasi + "',('" + timeofbirth + "'+':'+'" + timeofbirth1 + "'+''+'" + timeofbirth2 + "'),'" + cityofbirth + "','" + familyvalues + "','" + abtyourself + "','" + abtfamily + "','" + hear + "','" + agree + "','" + regdate + "','" + ExpiredDate + "','" + validation + "','" + payment + "')", con);


            cmd.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
        }
        con.Close();

    }
    public int createid()
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select max(uid) from dataowner_registration", con);
        String var = Convert.ToString(cmd1.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;

    }





    public int createid1()
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select max(fileid)+1 from upload", con);
        String var = Convert.ToString(cmd2.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;

    }


    public int createid2()
    {
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select max(fileid) from upload_file_details", con);
        String var = Convert.ToString(cmd3.ExecuteScalar());
        int var1;
        if (var == null || var == "")
        {
            var1 = 1;
        }
        else
        {
            var1 = Convert.ToInt32(var) + Convert.ToInt32(1);
        }
        con.Close();
        return var1;

    }


    public DataSet filematching(string fnam)
    {
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from uploaad where filename like '" + '%' + fnam + '%' + "' ", con);
        DataSet dst = new DataSet();
        ad.Fill(dst);
        con.Close();
        return dst;
    }



    public void storesearchdatas(string en, string dec, string nm)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select id from register where pkey='" + nm + "'", con);
        idno = Convert.ToString(cmd2.ExecuteScalar());
        SqlCommand cmd3 = new SqlCommand("insert into storedatas values('" + idno + "','" + en + "','" + dec + "')", con);
        cmd3.ExecuteNonQuery();
        con.Close();
    }



    public void uploadfile(string oid, string oname, string fileid, string fname, byte[] fibytes, string tm)
    {
        try
        {
            con.Open();
            int n = fname.Length;
            SqlCommand cmd2 = new SqlCommand("insert into upload values('" + oid + "','" + oname + "','" + fileid + "','" + fname + "',@files,'"+tm+"')", con);
            cmd2.Parameters.AddWithValue("@files", fibytes);
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            MsgBox.Show(ex.Message);
        }
    }


    public void lockkeys(string u, string p)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update searchuserreg set status='locked' where uname='" + u + "' and pwd='" + p + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
    }

    public void lockkeys1(string u)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update emergency set status='locked' where mailid='" + u + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
    }

    public DataSet matchingattributes(string dob,string id,string pwd)
    {
        con.Open();
        SqlDataAdapter ad1 = new SqlDataAdapter("select * from searchuserreg where skey='" + dob + "' and uname='"+id+"' and pwd='"+pwd+"'", con);
        DataSet dt = new DataSet();
        ad1.Fill(dt);
        con.Close();
        return dt;
    }

    public DataSet matchingattributes1(string aa, string bb)
    {
        con1.Open();
        SqlDataAdapter ad2 = new SqlDataAdapter("select * from secretkey where mailid='" + aa + "' and skey='" + bb + "'", con1);
        DataSet dt2 = new DataSet();
        ad2.Fill(dt2);
        con1.Close();
        return dt2;
    }


}

