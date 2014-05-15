﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Technologies.aspx.cs" Inherits="CennestWebsite.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <a href="index.html">Home</a> &nbsp;/&nbsp; <span>Technologies</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>Technologies</h1>

                <p>We work on Mobile solutions in the most widely used platforms- iOS, Android and Windows Phone . And Cloud platforms like Azure and AWS to deliver solutions easily. We like JavaScript and the libraries built around it in the move towards everything Web and the Internet-of-Things. We like the unified approach of Microsoft stack to help rapidly build solutions rather than focus on plumbing different frameworks.  </p>
                <img src="images/turbines.jpg" class="img-polaroid" style="margin: 5px 0px 15px;">
                <p>We love technology but we love solving business needs even more. So our technology choices are always driven by your business needs and not the other way round.</p>

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