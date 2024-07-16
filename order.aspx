<%@ Page Title="" Language="VB" MasterPageFile="~/userMasterPage.master" AutoEventWireup="false" CodeFile="order.aspx.vb" Inherits="order" %>

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
         
         <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
             CellPadding="3" EnableModelValidation="True" 
             GridLines="Vertical" HorizontalAlign="Center" Width="80%" 
             CssClass="viewtext">
             <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:ImageField DataImageUrlField="IPATH" HeaderText="Image">
                <ControlStyle Height="20%" Width="30%" />
                <ItemStyle Height="30%" Width="20%" />
            </asp:ImageField>
            <asp:BoundField DataField="IID" HeaderText="Product Id" />
            <asp:BoundField DataField="INAME" HeaderText="Name" />
            <asp:ButtonField ButtonType="Button" Text="+" CommandName="Pluse" />
            <asp:BoundField DataField="QTY" HeaderText="Qty" />
            <asp:ButtonField ButtonType="Button" Text="-" CommandName="Minus" />
            <asp:BoundField DataField="TTOTAL" HeaderText="Total" />

        </Columns>

             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
         <asp:RadioButton ID="rdcod" runat="server" Height="25px" Text="Cash on Delivery" 
             Width="165px" />
    <br />
    <br />
    <asp:Button ID="btnorder" runat="server" Text="Confirm order" CssClass="button" 
             BackColor="#0000FF" Font-Bold="true" 
             ForeColor="White" Height="36px" Width="200px"  />
             <br />
            <br />
    <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </center>
</asp:Content>

