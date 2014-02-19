<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CennestWebsite.Contact" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

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
                            <form runat="server">
                                <label>Name</label><span class="redText">*</span>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtName" Display="Dynamic" errormessage="Please enter your name." />

                                <label>e-mail address</label><span class="redText">*</span>
                                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>

                                <label>message subject</label><span class="redText">*</span>
                                <asp:TextBox ID="txtMessageSubject" runat="server"></asp:TextBox>

                                <label>message</label><span class="redText">*</span>
                                <asp:TextBox ID="txtMessage" Rows="12" Columns="3" TextMode="MultiLine" runat="server"></asp:TextBox>

                                <recaptcha:RecaptchaControl ID="recaptcha" runat="server" PrivateKey="6LdYJe4SAAAAAB34aAa-9HDXeEK7D4m56UsEh-zb" PublicKey="6LdYJe4SAAAAAFOVLtAWXQMIDe503qBFKw8fvJ2A" />
                                <span class="captchaError"><asp:Literal ID="captchaError" runat="server" ></asp:Literal></span>
                                <br />
                                <span class="redText">*</span>Required fields <br /> 

                                <asp:Button ID="btnSubmit" runat="server" CausesValidation="false" CssClass="cennestButton mt5" Text="SUBMIT" OnClick="btnSubmit_Click" />

                            </form>
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
