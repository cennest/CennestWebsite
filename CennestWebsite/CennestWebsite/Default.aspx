<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CennestWebsite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Expires" />
    <link href="scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="circlehover/css/common.css" />
    <link rel="stylesheet" type="text/css" href="circlehover/css/style2.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
    
    <!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="row-fluid">
            <div class="span12">

                <div id="headerSeparator"></div>
                <!--Edit Camera Slider here-->
                <div class="camera_full_width">
                    <div id="camera_wrap" class="shadow">
                        <div data-src="slider-images/bannerImg01.png"></div>
                        <div data-src="slider-images/bannerImg01.png"></div>
                        <div data-src="slider-images/bannerImg01.png"></div>
                    </div>
                    <br style="clear: both" />
                    <div style="margin-bottom: 40px"></div>
                </div>
                <!--End Camera Slider here-->

                <hr>

                <div id="headerSeparator2"></div>

            </div>
        </div>

        <div class="row-fluid">
            <div><h1 class="text-center orangeText">Our Offerings</h1></div>
            <div id="divMain">
                <div class="ch-grid-container">
                                    <ul class="ch-grid">
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info">
                                    <h3>Mobile. Web. Cloud</h3>
                                    <p><a href="Services.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div>
                            <h5>Mobile. Web. Cloud</h5>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info">
                                <h3>Product Management & Prototyping</h3>
                                <p><a href="Services.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div>
                            <h5>Product Management & Prototyping</h5>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-3">
                            <div class="ch-info">
                                <h3>Technology Consulting</h3>
                                <p><a href="Services.aspx">Read More</a></p>
                            </div>
                        </div>
                        <div>
                            <h5>Technology Consulting</h5>
                        </div>
                    </li>
                </ul>
                </div>


                <hr>
                <div><h1 class="text-center orangeText">Technical Updates</h1></div>
                <!--Edit Main Content here-->
                <div id="blogContainer" class="row-fluid">
                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-website icon"></i>--%>
                            <h4 class="title"><a target="_blank" href="<%= ViewState["Link1"] %>"><%= ViewState["BlogTitle1"] %></a></h4>
                            <span class="posted-date"><%= ViewState["BlogDate1"] %></span>
                            <br /><br />
                            <p class="description text-justify">
                                <%= ViewState["BlogDescription1"] %>
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-checkmark icon"></i>--%>
                           <h4 class="title"><a target="_blank" href="<%= ViewState["Link2"] %>"><%= ViewState["BlogTitle2"] %></a></h4>
                            <span class="posted-date"><%= ViewState["BlogDate2"] %></span>
                            <br /><br />
                            <p class="description text-justify">
                                <%= ViewState["BlogDescription2"] %>
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box" id="twitter-feeds">
                            <asp:Repeater ID="twitterfeed" runat="server" ViewStateMode="Enabled">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td style="vertical-align:top;width:45px;">
                                                <div class="twitter-pic">
                                                    <a href="<%# ((TweetSharp.TwitterStatus)Container.DataItem).User.Url %>" target="_blank">
                                                        <img src="<%# ((TweetSharp.TwitterStatus)Container.DataItem).User.ProfileImageUrl %>" width="42" height="42" alt="twitter icon" />
                                                    </a>
                                                </div>
                                            </td>
                                            <td style="vertical-align:top;">
                                                <div class="twitter-text">
                                                    <p>
                                                        <span class="tweetprofilelink">
                                                            <strong>
                                                                <a href="<%# ((TweetSharp.TwitterStatus)Container.DataItem).User.Url %>" target="_blank"><%# ((TweetSharp.TwitterStatus)Container.DataItem).User.Name %></a>
                                                            </strong>
                                                            <a href="<%# ((TweetSharp.TwitterStatus)Container.DataItem).User.Url %>" target="_blank">@<%# ((TweetSharp.TwitterStatus)Container.DataItem).User.ScreenName %></a>
                                                        </span>
                                                        <br>
                                                        <%# ((TweetSharp.TwitterStatus)Container.DataItem).TextAsHtml %>
                                                    </p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                </div>
                <!--End Main Content here-->
            </div>
        </div>
        <!--End Main Content Area here-->

        <!--Edit Footer here-->
        <div id="footerInnerSeparator"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script type="text/javascript" src="circlehover/js/modernizr.custom.79639.js"></script>
    <script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
    <script src="scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">function startCamera() { $('#camera_wrap').camera({ fx: 'simpleFade, mosaicSpiralReverse', time: 2000, loader: 'none', playPause: false, navigation: true, height: '38%', pagination: true }); } $(function () { startCamera() });</script>

</asp:Content>
