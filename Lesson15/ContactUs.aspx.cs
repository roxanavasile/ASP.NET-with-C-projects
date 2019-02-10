using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//added to support email functions
using System.IO; // for File object 
using System.Net.Mail; // email object (MailMessage)

namespace Lesson15
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", Name.Text);
            mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
            mailBody = mailBody.Replace("##HomePhone##", HomePhone.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", BusinessPhone.Text);
            mailBody = mailBody.Replace("##Comments##", Comments.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response from web site";
            myMessage.Body = mailBody;
            myMessage.From = new MailAddress("rvasile@my.waketech.edu", "Sender Name");
            myMessage.To.Add(new MailAddress("roxanavasile91@gmail.com", "Receiver Name"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);

            //Message.Visible = true;
            //FormTable.Visible = false;

        }
    }
}