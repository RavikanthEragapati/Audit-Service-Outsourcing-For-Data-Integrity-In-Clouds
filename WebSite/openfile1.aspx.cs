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
    string Id, a, b;
    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["eff"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
            con.Open();
            Id = Request.Params["fileid"];
            SqlCommand cmd = new SqlCommand("select * from uploaad where fileid = " + Id + " ", con);

            DataTable dt = GetData(cmd);
            if (dt != null)
            {
                download(dt);
            }



        }
    }

    private DataTable GetData(SqlCommand cmd)
    {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["eff"]);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }

        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }

    private void download(DataTable dt)
    {

        Byte[] bytes = (Byte[])dt.Rows[0]["filee"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //Response.ContentType = dt.Rows[0]["Ftype"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["filename"].ToString());
        //Response.BinaryWrite("<script type='text/javascript'> <embed src='bytes' style=width:300px; height:200px;> </embed> </script> ");
        Response.ContentType = "application/msword";
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
}
