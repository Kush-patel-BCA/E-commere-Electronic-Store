<%@ Page Title="" Language="VB" MasterPageFile="~/userMasterPage.master" AutoEventWireup="false" CodeFile="itemDetail.aspx.vb" Inherits="itemDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!--<style>
    .myTable
    {
    	font-size:large;
    }
</style>-->

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table border="0" class="mytable" width="80%" cellpadding="5" cellspacing="3">
    <tr>
        <td rowspan="4" style="width:300px">
            <div class="row">
                <%--	<div class="span9">--%>	<%--<div class="row">--%>	  
			<div id="gallery" class="span3">
                <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                <br />
            <div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                      <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                      <br />
                  </div>
                  <div class="item">
                      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                  </div>
                </div>
              </div>
			</div>
                <%--</div>--%><%--</div>--%>
</div>
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>

        </td>
        <td  style="width:80%">
            <asp:Label ID="lblIName" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblIdesc" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblOutofStock" runat="server" Font-Bold="False" 
                ForeColor="#FF0066" Font-Size="Smaller"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <br />
            <asp:Button ID="btnAddCart" runat="server" Width="150px" Height="36px" 
                Text="Add to cart" CssClass="button" />
        </td>
    </tr>

    <tr>
        <td colspan="2">
            
            <asp:Literal ID="Literal4" runat="server"></asp:Literal>
            
        </td>
    </tr>
</table>
</center>
</asp:Content>

