<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="CennestWebsite.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content page-container">

        <div class="breadcrumbs">
            <a href="Default.aspx">Home</a> &nbsp;/&nbsp; <span>Blogs</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>Blogs</h1>

                <p>Coming Soon...</p>
                <%--<img src="images/turbines.jpg" class="img-polaroid" style="margin: 5px 0px 15px;">--%>

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

            $("#liBlog").addClass("active");

        });

    </script>

</asp:Content>
