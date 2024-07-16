<%@ Page Title="" Language="VB" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="displayItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    
    a
    {
    	color:Black;
    }
    .style1
    {
        height: 32px;
    }
  .product-image {
        width: 170px;
        height:170px;
       object-fit: contain;
       border: 1px solid #ccc; /* Adds a subtle border around the image */
        border-radius: 5px; /* Slightly rounds the corners */
        box-shadow: 0 4px 8px rgba(0,0,0,0.1); /* Adds a subtle shadow for a better look */
        display: block; /* Ensures the image is treated as a block element */
        margin: 0 auto; /* Centers the image horizontally */
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:HiddenField ID="hfWR" runat="server" />
        <asp:HiddenField ID="hfSort" runat="server" />
        <asp:HiddenField ID="hfPrice" runat="server" />
        <asp:HiddenField ID="hfFind" runat="server" />
        <br />
       
        <br />
    <table width="100%" class="mytable">
        <tr>
            <td colspan="2" class="style1">
                 <asp:TextBox ID="txtFind" runat="server" Height="30px" placeholder="Search item"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="btndisplay" Text="Find" height="30px" width="50px" 
                     Font-Size="Large" />     
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" style="width:200px;">
                <br />
                Filter
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="Outset" 
                    CssClass="btnclear" Width="88px">Clear All</asp:LinkButton>
                <br />
                <br />
                <asp:Menu ID="Menu2" runat="server" StaticSubMenuIndent="16px" 
                    ViewStateMode="Enabled" BorderStyle="Solid" BorderWidth="3px">
                    <DynamicHoverStyle BorderStyle="Inset" BorderWidth="1px" />
                    <Items>
                        <asp:MenuItem Text="Category" Value="Category"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                <br />
                Min&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="100px" Height="25px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" MaximumValue="1000000" 
                    MinimumValue="0" Type="Double" ValidationGroup="sss"></asp:RangeValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="sss"></asp:RequiredFieldValidator>
                <br />
                to
                <br />
                Max 
                <asp:TextBox ID="TextBox2" runat="server" Width="100px" Height="25px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" MaximumValue="1000000" 
                    MinimumValue="0" Type="Double" ValidationGroup="sss"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="sss"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnSarch" runat="server" Text="Search" Height="30px" 
                    Width="90px" CssClass="btndisplay" ValidationGroup="sss" />
                <br />
                <br />
            </td>
            <td>
                <br />
                Short By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lbtnL2H" 
                    runat="server" BorderStyle="Outset" CssClass="btnclear"> Low to High</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtnH2L" runat="server" BorderStyle="Outset" 
                    CssClass="btnclear"> High to Low</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtnNewFirst" runat="server" BorderStyle="Outset" 
                    CssClass="btnclear">Newest First</asp:LinkButton>

                <br /><asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>

    </center>
</asp:Content>


