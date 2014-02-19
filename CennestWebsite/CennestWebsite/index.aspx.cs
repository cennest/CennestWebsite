﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RssToolkit.Rss;

namespace CennestWebsite
{
    public partial class index : System.Web.UI.Page
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
                    ViewState["BlogDescription1"] = rss.Channel.Items[0].Description.Trim().Replace("[&#8230;]", "");
                    ViewState["Link1"] = rss.Channel.Items[0].Link;

                    if (rss.Channel.Items.Count > 1)
                    {
                        ViewState["BlogDate2"] = String.Format("Posted on {0:M} {0:dd}, {0:yyyy}", rss.Channel.Items[1].PubDateParsed.ToLocalTime());
                        ViewState["BlogTitle2"] = rss.Channel.Items[1].Title;
                        ViewState["BlogDescription2"] = rss.Channel.Items[1].Description.Trim().Replace("[&#8230;]", "");
                        ViewState["Link2"] = rss.Channel.Items[1].Link;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}