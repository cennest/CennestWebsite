<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Web.aspx.cs" Inherits="CennestWebsite.Web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divPanel notop page-content">

        <div class="breadcrumbs">
            <!-- <a href="index.html">Home</a> &nbsp;/&nbsp; <span>About Us</span>-->
        </div>

        <div class="row-fluid">
            <div class="span12" id="divMain">
                <!--Edit Main Content Area here-->
                <h1>Web</h1>

                <p>Content on this page is for presentation purposes only. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                <img src="images/turbines.jpg" class="img-polaroid" style="margin: 5px 0px 15px;">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum est at luctus tincidunt. Fusce pretium quam vel velit fringilla fringilla. Fusce sollicitudin, ligula vel tempus congue, ligula nisi facilisis lacus, et adipiscing justo arcu nec justo.  </p>
                <p>Proin ipsum nulla, cursus vitae mollis iaculis, malesuada a dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla eu augue eu mauris sodales viverra at sed libero. Vivamus rhoncus volutpat hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <p>Quisque eu aliquam felis. Nam elementum dui eget fringilla vulputate. Suspendisse augue turpis, eleifend ac diam id, condimentum fermentum elit. Nunc laoreet turpis a risus luctus imperdiet. Suspendisse metus tellus, sodales nec elementum eu, facilisis at ante. Sed pharetra cursus metus, eget tempor dui. Nulla facilisi. Quisque congue justo odio, vitae fringilla sem sollicitudin sed.</p>
                <p>Maecenas dapibus mauris et lectus iaculis tristique quis in metus. Praesent vitae neque vel lectus mattis hendrerit. Curabitur aliquam, sapien eget scelerisque tincidunt, velit ante dapibus eros, eu consectetur magna libero sed eros. Quisque nibh purus, posuere vitae lacus a, placerat vulputate nisl. Aliquam semper vel risus sed venenatis. Morbi consectetur viverra aliquet. Suspendisse vitae justo nulla.</p>

            </div>
        </div>
        <!--End Main Content Area here-->

        <!--Edit Footer here-->
        <div id="footerInnerSeparator"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
