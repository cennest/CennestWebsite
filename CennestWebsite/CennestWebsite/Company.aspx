<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="CennestWebsite.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <a href="index.html">Home</a> &nbsp;/&nbsp; <span>The Company</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>The Company</h1>

                <p>We love technology. And we love the pace at which innovations happen around us. It was our endeavour to use these innovations to help people build their ideas.</p>
                <img src="images/turbines.jpg" class="img-polaroid" style="margin: 5px 0px 15px;">
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

    <script type="text/javascript">

        $(document).ready(function () {

            $("#liAboutUs").addClass("active");

        });

    </script>

</asp:Content>
