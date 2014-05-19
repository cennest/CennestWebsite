<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="CennestWebsite.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="scripts/carousel/style.css" rel="stylesheet" type="text/css" />
    <link href="scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />
    <link href="scripts/wookmark/css/style.css" rel="stylesheet" type="text/css" />
    <link href="scripts/yoxview/yoxview.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content page-container">

        <div class="breadcrumbs">
            <a href="index.html">Home</a> &nbsp;/&nbsp; <span>The Company</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>The Company</h1>

                <p>We love technology. And we love the pace at which innovations happen around us. It was our endeavour to use these innovations to help people build their ideas.</p>
                <%--<img src="images/Company.jpg" class="img-polaroid noBorder" style="margin: 5px 0px 15px;"/>--%>
                                <!--Edit Camera Slider here-->
                <div id="headerSeparator"></div>
                <div class="camera_full_width">
                    <div id="camera_wrap" class="shadow">
                        <div data-src="slider-images/Company1.jpg"></div>
                        <div data-src="slider-images/Company2.jpg"></div>
                        <div data-src="slider-images/Company3.jpg"></div>
                        <div data-src="slider-images/Company4.jpg"></div>
                        <div data-src="slider-images/Company5.jpg"></div>
                        <div data-src="slider-images/Company6.jpg"></div>
                        <div data-src="slider-images/Company7.jpg"></div>
                    </div>
                    <br style="clear: both" />
                    <div style="margin-bottom: 40px"></div>
                </div>
                <!--End Camera Slider here-->
                <p>Cennest is envisaged as a software -based company focusing on solving business problems by using the best new technology ideas available. It is excites us to not just see trends around us but to realize that we are playing a role in advancing those trends. When the Amazon App store launched, we were involved, when the Samsung Galaxy Gear is being marketed, we are working on a solution around it, when Google Glass is being spoken of, people are coming to us to formulate their app ideas.</p>
                <p>As we keep learning, we hope to help you in your Software-driven journey.</p>

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

            $("#liAboutUs").addClass("active");

        });

    </script>

</asp:Content>
