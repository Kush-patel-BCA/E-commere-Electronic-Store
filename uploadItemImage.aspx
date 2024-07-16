<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="uploadItemImage.aspx.vb" Inherits="uploadItemImage" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<table border="0" class="contantTable" >
    <tr>
        <td align="center">
            <h2>Upload Item Images</h2>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMsg" runat="server"> </asp:Label>
           <!-- <br />-->
            <!--<hr />-->
        </td>
    </tr>
    <tr>
        <td align="center">
       
            <asp:DropDownList ID="ddlItem" runat="server" Width="125px" CssClass="textbox">
            </asp:DropDownList>
            <br />
            <br />
            <!--<hr />-->
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="200px"/>
           
            <br />
            <br />
           <!-- <hr />-->
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            <asp:Button ID="btnUpload" runat="server" Text="Upload Image" Height="36px" 
             Font-Bold="true" Width="180px" BackColor="Blue" ForeColor="White" 
             CssClass="button" />
                    <br />
                    <br />
        </td>
    </tr>
</table>
<br />
</center>
</asp:Content>

