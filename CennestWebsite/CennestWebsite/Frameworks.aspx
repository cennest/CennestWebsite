<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Frameworks.aspx.cs" Inherits="CennestWebsite.Frameworks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/framework.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css' />
    <script src="Scripts/sly/modernizr.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="divPanel notop page-content page-container">

        <div class="breadcrumbs">
            <a href="Default.aspx">Home</a> &nbsp;/&nbsp; <span>Frameworks</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="div1">
                <!--Edit Main Content Area here-->
                <h1 id="tiles-heading">Our very own frameworks</h1>
                 <%--<h1 id="project-heading"></h1>--%>
            </div>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">

 <!--Edit Main Content here-->
    <div id="main" class="horizontalgrid pagespan">
        <div class="frame">
            <ul class="slidee"></ul>
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
    <%--<script src="Scripts/sly/jquery.js"></script>--%>
    <script src="Scripts/sly/GenerateRandomColors.js"></script>
    <script src="Scripts/sly/sly.js"></script>
    <script src="Scripts/frameworks.js"></script>
    <script src="Scripts/framework-view.js"></script>
   <script type="text/javascript">
       $(document).ready(function () {
           HighlightTab.init();
           FrameworkView.init();
       });
    </script>
</asp:Content>
