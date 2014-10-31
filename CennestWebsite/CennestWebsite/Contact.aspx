<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CennestWebsite.Contact" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/jquery.qtip.css" rel="stylesheet" />
    <link href="FontAwesome/css/font-awesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content ">

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <section id="contactus">
                    <h1>Contact Us</h1>
                    <div id="contactusSection">
                        <div id="contactusForm">
                            <form runat="server">
                                <label>Name</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" ID="reqName" SetFocusOnError="true" CssClass="field-validation-error" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Please enter your name." />
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                                <label>e-mail address</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" ID="reqEmailAddress" SetFocusOnError="true" CssClass="field-validation-error" ControlToValidate="txtEmailAddress" Display="Dynamic" ErrorMessage="Please enter your email address." />
                                <asp:RegularExpressionValidator ID="regexEmailAddress" runat="server" CssClass="field-validation-error" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ControlToValidate="txtEmailAddress" ErrorMessage="Email address is invalid."></asp:RegularExpressionValidator>
                                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>

                                <label>message subject</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" ID="reqMessageSubject" SetFocusOnError="true" CssClass="field-validation-error" ControlToValidate="txtMessageSubject" Display="Dynamic" ErrorMessage="Please enter message subject." />
                                <asp:TextBox ID="txtMessageSubject" runat="server"></asp:TextBox>

                                <label>message</label>
                                <span class="redText">*</span>
                                <asp:RequiredFieldValidator runat="server" ID="reqMessage" SetFocusOnError="true" CssClass="field-validation-error" ControlToValidate="txtMessage" Display="Dynamic" ErrorMessage="Please enter message." />
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
                        <div id="contactDetails">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                            Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
                            when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                            It has survived not only five centuries, but also the leap into electronic typesetting, 
                            remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
                            sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like 
                            Aldus PageMaker including versions of Lorem Ipsum.</p>
                        </div>
                        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false">

                        </script>
                        <div style="overflow:hidden;height:355px;width:355px;"><div id="gmap_canvas" style="height:355px;width:355px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.mapsembed.com/otto/" id="get-map-data">http://www.mapsembed.com/otto/</a></div><script type="text/javascript"> function init_map() { var myOptions = { zoom: 15, center: new google.maps.LatLng(19.122692, 72.91329659999997), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(19.122692, 72.91329659999997) }); infowindow = new google.maps.InfoWindow({ content: "<b>Cennest Technologies</b><br/>Powai Plaza,Hiranandani Gardens, Powai,<br/>400076 Mumbai" }); google.maps.event.addListener(marker, "click", function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>
                        
                        <%--<h4>Recent Posts</h4>
                        <div class="OpenSans-Bold f80 ml5">
                            <p>
                                <a target="_blank" href="<%= ViewState["Link1"] %>"><%= ViewState["BlogTitle1"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate1"] %></span>
                            </p>
                            <p>
                                <a target="_blank" href="<%= ViewState["Link2"] %>"><%= ViewState["BlogTitle2"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate2"] %></span>
                            </p>
                            <p>
                                <a target="_blank" href="<%= ViewState["Link3"] %>"><%= ViewState["BlogTitle3"] %></a>
                                <span class="posted-date"><%= ViewState["BlogDate3"] %></span>
                            </p>
                        </div>--%>

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

            setTimeout(function () {
                DesignAccordingToBrowserWith();
            }, 1000);

            $(window).resize(function () {
                DesignAccordingToBrowserWith();
            });

        });

        function DesignAccordingToBrowserWith() {
            if (matchMedia('only screen and (max-width: 400px)').matches) {
                
                if ($("#<%=formSumbitResult.ClientID%>").val() == "true") {

                    $("#<%=formSumbitResult.ClientID%>").val("");

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
                            my: 'top left',  // Position my top left...
                            at: 'bottom left', // at the bottom right of...
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
                else if ($("#<%=formSumbitResult.ClientID%>").val() == "false") {

                    $("#<%=formSumbitResult.ClientID%>").val("");

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
                            my: 'top left',  // Position my top left...
                            at: 'bottom left', // at the bottom right of...
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

            }
            else {
                
                if ($("#<%=formSumbitResult.ClientID%>").val() == "true") {

                    $("#<%=formSumbitResult.ClientID%>").val("");

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

                    setTimeout(function () {
                        $("#<%=btnSubmit.ClientID%>").qtip('destroy');
                    }, 5000);

                }
                else if ($("#<%=formSumbitResult.ClientID%>").val() == "false") {

                    $("#<%=formSumbitResult.ClientID%>").val("");

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
            }
        }

    </script>

</asp:Content>
