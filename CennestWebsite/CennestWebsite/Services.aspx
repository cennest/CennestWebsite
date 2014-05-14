<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CennestWebsite.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="scripts/carousel/style.css" rel="stylesheet" type="text/css" />
    <link href="scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />
    <link href="scripts/wookmark/css/style.css" rel="stylesheet" type="text/css" />
    <link href="scripts/yoxview/yoxview.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="circlehover/css/common.css" />
    <link rel="stylesheet" type="text/css" href="circlehover/css/style2.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="circlehover/js/modernizr.custom.79639.js"></script>
    <!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="row-fluid">
            <div class="span12" id="div1">
                <!--Edit Main Content Area here-->
                <h1>Services</h1>
            </div>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">

                <ul class="ch-grid">
                    <li>
                        <div class="ch-item ch-img-1">
                            <div class="ch-info">
                                <a href="about.html">
                                    <h3>About</h3>
                                    <p>
                                        Lorem Ipsum...
                                                <!--<a href="about.html">-->
                                        <br />
                                        Read More<!--</a>-->
                                    </p>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-2">
                            <div class="ch-info">
                                <h3>Services</h3>
                                <p>Lorem Ipsum... <a href="services.html">Read More</a></p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ch-item ch-img-3">
                            <div class="ch-info">
                                <h3>Portfolio</h3>
                                <p>Lorem Ipsum... <a href="gallery.html">Read More</a></p>
                            </div>
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
                            <h4 class="title"><a>Mobile. Web. Cloud </a></h4>
                            <br />
                            <p class="description">
                                We help you in the development of your ideas associated with the three platforms above. If you really think about it, these terms are interlinked and your initiatives will eventually span these three modes for fruition of your vision.
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-checkmark icon"></i>--%>
                           <h4 class="title"><a>Product Management & Prototyping</a></h4>
                            <br />
                            <p class="description">
                                After your great idea but before the product, comes the chasm of uncertainty- thoughts, features, technologies, wireframes, proof-of-concepts. We help you negotiate this territory and focus on what is really, REALLY important to you. 
                            </p>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="box blogs">
                            <%--<i class="general foundicon-checkmark icon"></i>--%>
                           <h4 class="title"><a>Technology Consulting</a></h4>
                            <br />
                            <p class="description">
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

    <script src="scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script>
    <script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: { width: 320, visible: { min: 2, max: 6 } } });</script>
    <script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
    <script src="scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">function startCamera() { $('#camera_wrap').camera({ fx: 'simpleFade, mosaicSpiralReverse', time: 2000, loader: 'none', playPause: false, navigation: true, height: '38%', pagination: true }); } $(function () { startCamera() });</script>

    <script src="scripts/wookmark/js/jquery.wookmark.js" type="text/javascript"></script>
    <script type="text/javascript">$(window).load(function () { var options = { autoResize: true, container: $('#gridArea'), offset: 10 }; var handler = $('#tiles li'); handler.wookmark(options); $('#tiles li').each(function () { var imgm = 0; if ($(this).find('img').length > 0) imgm = parseInt($(this).find('img').not('p img').css('margin-bottom')); var newHeight = $(this).find('img').height() + imgm + $(this).find('div').height() + $(this).find('h4').height() + $(this).find('p').not('blockquote p').height() + $(this).find('iframe').height() + $(this).find('blockquote').height() + 5; if ($(this).find('iframe').height()) newHeight = newHeight + 15; $(this).css('height', newHeight + 'px'); }); handler.wookmark(options); handler.wookmark(options); });</script>
    <script src="scripts/yoxview/yox.js" type="text/javascript"></script>
    <script src="scripts/yoxview/jquery.yoxview-2.21.js" type="text/javascript"></script>
    <script type="text/javascript">$(document).ready(function () { $('.yoxview').yoxview({ autoHideInfo: false, renderInfoPin: false, backgroundColor: '#ffffff', backgroundOpacity: 0.8, infoBackColor: '#000000', infoBackOpacity: 1 }); $('.yoxview a img').hover(function () { $(this).animate({ opacity: 0.7 }, 300) }, function () { $(this).animate({ opacity: 1 }, 300) }); });</script>

    <script type="text/javascript">

        $(document).ready(function () {

            

        });

    </script>

</asp:Content>
