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

using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;


/// <summary>
/// Summary description for GmailSender
/// </summary>
public class GmailSender
{
    public GmailSender()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static bool SendMail(string gMailAccount, string password, string to, string subject, string message)
    {
        try
        {
            NetworkCredential loginInfo = new NetworkCredential("mailproject569@gmail.com", "project5");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("mailproject569@gmail.com");
            msg.To.Add(new MailAddress(to));
            msg.Subject = subject;
            msg.Body = message;
            msg.IsBodyHtml = true;

            //if any files are attached used this code..
            //msg.Attachments.Add(new Attachment("D:\\Human.doc"));
            //msg.Attachments.Add(new Attachment("D:\\Music.mp3"));
            //msg.Attachments.Add(new Attachment("D:\\Music.mp3"));

            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.Send(msg);

            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }
}
