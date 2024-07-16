<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="UpdateStock.aspx.vb" Inherits="UpdateStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .viewtext
    {
    	text-align:center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <table border="0" class="contantTable">
    <tr>
        <td colspan="2" align="center">
        <h2>Update Stock Entry</h2>
        </td>
    </tr>
    <tr>
        <td>Select Produt id</td>
        <td>
            <asp:DropDownList ID="ddlIID" runat="server" AutoPostBack="True" Width="30px">
            </asp:DropDownList>
            <br />
            

        </td>
    </tr>
    
    <tr>
        <td>Search Product</td>
        <td>
           <asp:TextBox ID="txtSearch" runat="server" AutoPostBack="True" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>
        Current Stock
       <br />
       <br />      
    </td>
    <td>
        <asp:TextBox ID="txtStock" runat="server" Height="25px"></asp:TextBox>
   
        <br />
        <br />
   
    </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
         <asp:Button ID="btnUpdateStock" runat="server" Text="Update Stock" 
         CssClass="button" Height="40px" Width="70%" />
        <br />
        <br />
        </td>
    </tr>
    <tr>
         <td colspan="2" align="center">
         <asp:Label ID="lblMsg" runat="server"></asp:Label>
            
        </td>
        
    </tr>
   </table>    
   <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" EnableModelValidation="True" GridLines="Vertical" Width="80%" 
        CssClass="viewtext">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
</center>
</asp:Content>

