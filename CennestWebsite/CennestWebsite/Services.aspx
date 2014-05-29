<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CennestWebsite.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="circlehover/css/common.css" />
    <link rel="stylesheet" type="text/css" href="circlehover/css/style2.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content page-container">

        <div class="breadcrumbs">
            <a href="Default.aspx">Home</a> &nbsp;/&nbsp; <span>Offerings</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="div1">
                <!--Edit Main Content Area here-->
                <h1>Offerings</h1>
            </div>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">

                <ul class="ch-grid" id="services">
                    <li>
                        <div class="roundImage ch-img-1 ch-item">
                            <%--<div class="ch-info">
                                <a href="about.html">
                                    <h3>Mobile. Web. Cloud</h3>
                                </a>
                            </div>--%>
                        </div>
                    </li>
                    <li>
                        <div class="roundImage ch-img-2 ch-item">
                            <%--<div class="ch-info">
                                <h3>Product Management & Prototyping</h3>
                                <p><a href="services.html">Read More</a></p>
                            </div>--%>
                        </div>
                    </li>
                    <li>
                        <div class="roundImage ch-img-3 ch-item">
                            <%--<div class="ch-info">
                                <h3>Technology Consulting</h3>
                                <p><a href="gallery.html">Read More</a></p>
                            </div>--%>
                        </div>
                    </li>
                    <!--<li>
                                <div class="ch-item ch-img-4">
                                    <div class="ch-info">
                                        <h3>Contact</h3>
                                        <p>Lorem Ipsum... <a href="contact.php">Read More</a></p>
                                    </div>
                                </div>
                            </li>-->

                </ul>

                <hr>

                <!--Edit Main Content here-->
                <div id="blogContainer" class="row-fluid">
                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-website icon"></i>--%>
                            <h4 class="title  orangeText">Mobile. Web. Cloud</h4>
                            <br />
                            <p class="description text-justify">
                                We help you in the development of your ideas associated with the three platforms above. If you really think about it, these terms are interlinked and your initiatives will eventually span these three modes for fruition of your vision.
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-checkmark icon"></i>--%>
                            <h4 class="title orangeText">Product Management & Prototyping</h4>
                            <br />
                            <p class="description text-justify">
                                After your great idea but before the product, comes the chasm of uncertainty- thoughts, features, technologies, wireframes, proof-of-concepts. We help you negotiate this territory and focus on what is really, REALLY important to you. 
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-checkmark icon"></i>--%>
                            <h4 class="title orangeText">Technology Consulting</h4>
                            <br />
                            <p class="description text-justify">
                                You have enough things on your plate while managing your big idea. Let us help you by taking care of technology and its rapid changes. We will ensure you receive the best guidance on technology to be able to equip you better.
                            </p>
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
    <%--<script type="text/javascript" src="circlehover/js/modernizr.custom.79639.js"></script>--%>
    <script type="text/javascript">

        $(document).ready(function () {

            $("#liServices").addClass("active");

        });

    </script>

</asp:Content>
