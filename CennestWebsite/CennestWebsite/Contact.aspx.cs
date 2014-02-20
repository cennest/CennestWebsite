using RssToolkit.Rss;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CennestWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                RssDocument rss = RssDocument.Load(new Uri("http://cennest.com/?feed=rss2"));
                if (rss != null && rss.Channel != null && rss.Channel.Items != null)
                {
                    ViewState["BlogDate1"] = String.Format("Posted on {0:M} {0:dd}, {0:yyyy}", rss.Channel.Items[0].PubDateParsed.ToLocalTime());
                    ViewState["BlogTitle1"] = rss.Channel.Items[0].Title;
                    ViewState["Link1"] = rss.Channel.Items[0].Link;

                    if (rss.Channel.Items.Count > 1)
                    {
                        ViewState["BlogDate2"] = String.Format("Posted on {0:M} {0:dd}, {0:yyyy}", rss.Channel.Items[1].PubDateParsed.ToLocalTime());
                        ViewState["BlogTitle2"] = rss.Channel.Items[1].Title;
                        ViewState["Link2"] = rss.Channel.Items[1].Link;
                    }

                    if (rss.Channel.Items.Count > 2)
                    {
                        ViewState["BlogDate3"] = String.Format("Posted on {0:M} {0:dd}, {0:yyyy}", rss.Channel.Items[2].PubDateParsed.ToLocalTime());
                        ViewState["BlogTitle3"] = rss.Channel.Items[2].Title;
                        ViewState["Link3"] = rss.Channel.Items[2].Link;
                    }

                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                this.recaptcha.Validate();
                if (this.recaptcha.IsValid)
                {
                    ContactUs contactUs = new ContactUs
                    {
                        Name = txtName.Text.Trim(),
                        EmailAddress = txtEmailAddress.Text.Trim(),
                        MessageSubject = txtMessageSubject.Text.Trim(),
                        Message = txtMessage.Text.Trim(),
                        EmailTemplatePath = Server.MapPath("~/EmailTemplates/ContactDetailsTemplate.html")
                    };

                    if (contactUs.SendMail())
                    {
                        txtEmailAddress.Text = string.Empty;
                        txtMessage.Text = string.Empty;
                        txtMessageSubject.Text = string.Empty;
                        txtName.Text = string.Empty;
                        captchaError.Text = string.Empty;
                        formSumbitResult.Value = "true";
                    }
                    else
                    {
                        captchaError.Text = string.Empty;
                        formSumbitResult.Value = "false";
                    }
                }
                else
                {
                    captchaError.Text = "Recaptcha input invalid.";
                }
            }
            catch (Exception ex)
            {
                formSumbitResult.Value = "false";
            }
        }

        protected void RecaptchaValidator_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            recaptcha.Validate();
            e.IsValid = this.recaptcha.IsValid;
        }

    }
}