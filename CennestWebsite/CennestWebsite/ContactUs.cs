using SendGridMail;
using SendGridMail.Transport;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace CennestWebsite
{
    public class ContactUs
    {
        public ContactUs()
        {

        }


        public string Name { get; set; }

        public string EmailAddress { get; set; }

        public string MessageSubject { get; set; }

        public string Message { get; set; }

        public string EmailTemplatePath { get; set; }

        private string GetMailTemplate()
        {
            WebClient client = new WebClient();
            //string path = AppDomain.CurrentDomain.BaseDirectory.ToString() + "\\EmailTemplates\\ContactDetailsTemplate.html";
            return client.DownloadString(this.EmailTemplatePath);
        }

        public bool SendMail()
        {
            try
            {
                var from = new MailAddress("admin@cennest.com");
                var to = new MailAddress[] { new MailAddress("poulomee@cennest.com") };
                var cc = new MailAddress[] { new MailAddress("poulomee@cennest.com") };
                var bcc = new MailAddress[] { new MailAddress("sonal.tirlotkar@cennest.com") };
                string subject = this.MessageSubject;
                string messageBody = GetMailTemplate();
                messageBody = messageBody.Replace("[USERNAME]", this.Name);
                messageBody = messageBody.Replace("[MESSAGE]", this.Message);
                messageBody = messageBody.Replace("[EMAILID]", this.EmailAddress);
                string html = messageBody;
                var text = "";
                SendGrid myMessage = SendGrid.GetInstance(from, to, cc, bcc, subject, html, text);
                var credentials = new NetworkCredential("azure_6fd25c8728d3ebd3f02ed958b388f8f4@azure.com", "xgon325h");
                var transportWeb = SendGridMail.Transport.Web.GetInstance(credentials);
                // Send the email.
                transportWeb.Deliver(myMessage);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}