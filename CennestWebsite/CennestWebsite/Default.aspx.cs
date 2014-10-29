using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RssToolkit.Rss;
using TweetSharp;

namespace CennestWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        const string accessToken = "14655624-ycSyePBDvuYlw3pbCSWsmOGOr1xPQ1LDrFjQIuSCA";
        const string accessTokenSecret = "rYkPGVzU266NXZTJiiCXT95bm610SPm7U31p6I4oLFFEB";
        const string consumerKey = "QNY8Hd90TMz1FZOCxQwRA";
        const string consumerSecret = "e9BuxQ0LsdyMEvG0HqGFWyFkkgKAnXrDv3BMEW86bk";
        const string twitterAccountToDisplay = "anshulee"; // The twitter account name goes here

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                RssDocument rss = RssDocument.Load(new Uri("http://cennest.com/weblog/?feed=rss2"));
                if (rss != null && rss.Channel != null && rss.Channel.Items != null)
                {
                    ViewState["BlogDate1"] = String.Format("Posted on {0:M}, {0:yyyy}", rss.Channel.Items[0].PubDateParsed.ToLocalTime());
                    ViewState["BlogTitle1"] = rss.Channel.Items[0].Title;
                    ViewState["BlogDescription1"] = rss.Channel.Items[0].Description.Trim().Replace("[&#8230;]", "");
                    ViewState["Link1"] = rss.Channel.Items[0].Link;

                    if (rss.Channel.Items.Count > 1)
                    {
                        ViewState["BlogDate2"] = String.Format("Posted on {0:M}, {0:yyyy}", rss.Channel.Items[1].PubDateParsed.ToLocalTime());
                        ViewState["BlogTitle2"] = rss.Channel.Items[1].Title;
                        ViewState["BlogDescription2"] = rss.Channel.Items[1].Description.Trim().Replace("[&#8230;]", "");
                        ViewState["Link2"] = rss.Channel.Items[1].Link;
                    }
                }

                Twittsharp();

            }
            catch (Exception ex)
            {

            }
        }

        private void Twittsharp()
        {
            // In v1.1, all API calls require authentication
            var service = new TwitterService(consumerKey, consumerSecret);
            service.AuthenticateWith(accessToken, accessTokenSecret);

            List<TwitterStatus> tweets = service.ListTweetsOnUserTimeline(new ListTweetsOnUserTimelineOptions()).ToList();
            twitterfeed.DataSource = tweets;
            twitterfeed.DataBind();
        }

    }
}