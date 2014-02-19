﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CennestWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <section id="contactus">
                    <h1>Contact Us</h1>
                    <div id="contactusSection">
                        <div id="contactusForm">

                            <label>Name</label><span class="redText">*</span>
                            <input type="text" />

                            <label>e-mail address</label><span class="redText">*</span>
                            <input type="text" />

                            <label>message subject</label><span class="redText">*</span>
                            <input type="text" />


                            <label>message</label><span class="redText">*</span>
                            <textarea rows="12" cols="3"></textarea>

                            <span class="redText">*</span>Required fields
                                    <br />
                            <input type="submit" class="cennestButton mt5" value="SUBMIT" />

                        </div>
                    </div>
                    <div id="feeds">
                        <h4>Recent posts</h4>
                        <div class="OpenSans-Bold f80 ml5">
                            <p>
                                <%--<a target="_blank" href="https://www.google.co.in/maps/preview#!q=105+Central+Way%2C+Suite+202+|+Kirkland%2C+WA+98033&data=!4m15!2m14!1m13!1s0x549012e76d0bfcd9%3A0xdfc8c43e42877c3d!3m8!1m3!1d3343561!2d76.7751435!3d18.8154265!3m2!1i1024!2i664!4f13.1!4m2!3d47.6762409!4d-122.2079862">@ViewBag.contactUsAddress</a>--%>
                                <a target="_blank" href="<%= ViewState["Link1"] %>"><%= ViewState["BlogTitle1"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate1"] %></span>
                            </p>
                            <p>
                                <%--<a href="mailto:info@insideradius.com">@ViewBag.contactUsEmailID</a>--%>
                                <a target="_blank" href="<%= ViewState["Link2"] %>"><%= ViewState["BlogTitle2"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate2"] %></span>
                            </p>
                            <p>
                                <%--<span>@ViewBag.contactUsPhone</span><span class="ml3" id="faxNumber">@ViewBag.contactUsFax</span>--%>
                                <a target="_blank" href="<%= ViewState["Link3"] %>"><%= ViewState["BlogTitle3"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate3"] %></span>
                            </p>
                        </div>

                    </div>
                </section>
            </div>
        </div>
        <!--End Main Content Area here-->

        <!--Edit Footer here-->
        <div id="footerInnerSeparator"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {

            $("#liContactUs").addClass("active");

        });

    </script>

</asp:Content>