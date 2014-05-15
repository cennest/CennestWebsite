<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="CennestWebsite.Company" %>

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
                <h1>Portfolio</h1>

                <p>Coming soon...</p>
                <img src="images/turbines.jpg" class="img-polaroid" style="margin: 5px 0px 15px;">

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
