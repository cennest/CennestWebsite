<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CennestWebsite.Contact" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/jquery.qtip.css" rel="stylesheet" />
    <link href="FontAwesome/css/font-awesome.css" rel="stylesheet" />
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
                                <label>Name</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" id="reqName" SetFocusOnError="true" CssClass="field-validation-error" controltovalidate="txtName" Display="Dynamic" errormessage="Please enter your name." />
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>                                

                                <label>e-mail address</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" id="reqEmailAddress" SetFocusOnError="true"  CssClass="field-validation-error"  controltovalidate="txtEmailAddress" Display="Dynamic" errormessage="Please enter your email address." />
                                <asp:RegularExpressionValidator ID="regexEmailAddress" runat="server" CssClass="field-validation-error" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Display="Dynamic" ControlToValidate="txtEmailAddress" ErrorMessage="Email address is invalid."></asp:RegularExpressionValidator>
                                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>

                                <label>message subject</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" id="reqMessageSubject" SetFocusOnError="true"  CssClass="field-validation-error" controltovalidate="txtMessageSubject" Display="Dynamic" errormessage="Please enter message subject." />
                                <asp:TextBox ID="txtMessageSubject" runat="server"></asp:TextBox>

                                <label>message</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" id="reqMessage" SetFocusOnError="true" CssClass="field-validation-error" controltovalidate="txtMessage" Display="Dynamic" errormessage="Please enter message." />
                                <asp:TextBox ID="txtMessage" Rows="12" Columns="3" TextMode="MultiLine" runat="server"></asp:TextBox>


                                <%--<recaptcha:RecaptchaControl ID="recaptcha" runat="server" Width="100%" CustomThemeWidget="recaptcha_widget" PrivateKey="6LdYJe4SAAAAAB34aAa-9HDXeEK7D4m56UsEh-zb" PublicKey="6LdYJe4SAAAAAFOVLtAWXQMIDe503qBFKw8fvJ2A" />--%>



                                <%--Custom Recaptcha Start--%>
                                <div class="captcha-wrapper" id="captcha-wrapper" style="display: none">
                                    <div class="captcha-input-container">
                                        <div id="recaptcha_image"></div>
                                        <span id="captchaErrorContainer" class="field-validation-error">
                                            <asp:Literal ID="captchaError" runat="server"></asp:Literal>
                                        </span>
                                        <input type="text" placeholder="Type text here" class="captcha" id="recaptcha_response_field" name="recaptcha_response_field">
                                    </div>
                                    <div class="captcha-action">
                                        <ul>
                                            <li>
                                                <a href="javascript:Recaptcha.switch_type('image')" id="captcha-refresh" title="Refresh"><i class="fa fa-refresh"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:Recaptcha.switch_type('audio')" id="captcha-audio" title="Volume"><i class="fa fa-volume-up"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:Recaptcha.showhelp()" id="captcha-help" title="Help"><i class="fa fa-question-circle"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <recaptcha:RecaptchaControl CustomThemeWidget="captcha-wrapper" Theme="custom" ID="recaptcha" runat="server" PrivateKey="6LdYJe4SAAAAAB34aAa-9HDXeEK7D4m56UsEh-zb" PublicKey="6LdYJe4SAAAAAFOVLtAWXQMIDe503qBFKw8fvJ2A" />
                                <%--Custom Recaptcha End--%>



                                <br />
                                <span class="redText">*</span>Required fields
                                <br />

                                <asp:Button ID="btnSubmit" runat="server" CausesValidation="true" CssClass="cennestButton mt5" Text="SUBMIT" OnClick="btnSubmit_Click" />

                                <asp:HiddenField runat="server" ID="formSumbitResult" />

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
    <script src="Scripts/jquery.qtip.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $("#liContactUs").addClass("active");

            $('#recaptcha_image').removeAttr('style');

            $('#recaptcha_challenge_image').removeAttr('height').removeAttr('width');

            if ($('#captchaErrorContainer').html().trim() != "") {
                $('html, body').animate({ scrollTop: $('#captchaErrorContainer').offset().top });
            }

            if ($("#<%=formSumbitResult.ClientID%>").val() == "true") {

                $("#<%=btnSubmit.ClientID%>").qtip({
                    content: 'Your message has been submitted successfully.',
                    style: {
                        classes: 'success-message'
                    },
                    show: {
                        when: 'click',
                        ready: true
                    },
                    hide: false,
                    position: {
                        my: 'center left',  // Position my top left...
                        at: 'center right', // at the bottom right of...
                        target: $("#<%=btnSubmit.ClientID%>"), // my target
                        adjust: {
                            x: 10
                        }
                    }
                });

                $('html, body').animate({ scrollTop: $("#<%=btnSubmit.ClientID%>").offset().top });

                $('.error-message').css({ left: $('.error-message').offset().left + 50 });

                setTimeout(function () {
                    $("#<%=btnSubmit.ClientID%>").qtip('destroy');
                }, 5000);

            }
            else if ($("#<%=formSumbitResult.ClientID%>").val() == "false") {
                
                $("#<%=btnSubmit.ClientID%>").qtip({
                    content: 'An error occured please try again.',
                    style: {
                        classes: 'error-message'
                    },
                    show: {
                        when: 'click',
                        ready: true
                    },
                    hide: false,
                    position: {
                        my: 'center left',  // Position my top left...
                        at: 'center right', // at the bottom right of...
                        target: $("#<%=btnSubmit.ClientID%>"), // my target
                        adjust: {
                            x: 10
                        }
                    }
                });

                $('html, body').animate({ scrollTop: $("#<%=btnSubmit.ClientID%>").offset().top });

                setTimeout(function () {
                    $("#<%=btnSubmit.ClientID%>").qtip('destroy');
                }, 5000);

            }
            
        });

    </script>

</asp:Content>
