<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Careers.aspx.cs" Inherits="CennestWebsite.Careers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content page-container">

        <div class="breadcrumbs">
            <a href="Default.aspx">Home</a> &nbsp;/&nbsp; <span>Join Us</span>
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>Join Us</h1>

                <p>Of course, you need to atleast know how to code in an OOP-based language. Besides that though, you are excited about being in an always-learning mode and enjoy technology, you can see patterns emerging around you and you are not wedded to any specific technology. See of you can cope with our work by looking at our blogs and then drop us a mail with your resume at careers@cennest.com .</p>
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

            $("#liAboutUs").addClass("active");

        });

    </script>

</asp:Content>
