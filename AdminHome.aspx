<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .style1
       {
       	    text-align:center;
       	    margin:2vh 0 0 8vw;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style1">
        <p>
        <h1><asp:Label ID="lblWelcome" runat="server"></asp:Label></h1></br>
        </p>
        </div>
</asp:Content>

