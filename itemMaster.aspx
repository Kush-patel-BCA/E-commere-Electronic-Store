<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="itemMaster.aspx.vb" Inherits="itemMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            height: 28px;
            width: 300px;
        }
        .style13
        {
            width: 300px;
        }
        .style14
        {
            height: 27px;
            width: 215px;
        }
        .style15
        {
            width: 215px;
        }
        .style16
        {
            height: 28px;
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <table border="0" class="contantTable" >
        <tr>
            <td colspan="2" align="center" class="style13">
                <h2>Add New Item</h2>
            </td>
        </tr>

        <tr>
            <td>Item Name:</td>        
        </tr>
            
        <tr>
                 
            <td class="style13">
               &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtIName"  Height="36px" Width="90%" 
                    placeholder="Item Name" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtIName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Item Description:</td>
        </tr>
        <tr>
            
            
            <td class="style13">
            &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtDesc"  Height="36px" Width="90%" 
            placeholder="Item Description" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtDesc" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
                <td>Item Price:</td>
        </tr>
        <tr>
        
            
            <td class="style13">
            &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtPrice"  Height="36px" Width="90%" 
            placeholder="Item Price" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtPrice" ErrorMessage="Price is required" 
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Price" runat="server"
             ControlToValidate="txtPrice" ErrorMessage="Invalid price format. Use positive numbers only."
             ValidationExpression="^[1-9]\d*$" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Specification:</td>
        </tr>
        <tr>
        
            
            <td class="style13">
            &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtSpec"  Height="36px" Width="90%" 
            placeholder="Specification" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtSpec" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
                <td>Item Catagory:</td>
        </tr>
        <tr>
        
            
            <td class="style13">
            &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtCatagory"  Height="36px" Width="90%" 
            placeholder="Item Category" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
             ControlToValidate="txtCatagory" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
                <td>Item Warranty:</td>
        </tr>
        <tr>
        
            
            <td class="style10">
            &nbsp;&nbsp;<asp:TextBox runat ="server" ID="txtWarranty" Height="36px" Width="90%" 
            placeholder="Item Warranty" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtWarranty" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Item Sr. No.:</td>
        </tr>
        <tr>
            
            
            <td class="style10">
             &nbsp;&nbsp;<asp:TextBox ID="txtSrNo" runat="server" Height="36px" Width="90%" 
             placeholder="Item serial number" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtSrNo" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="style13">
                <asp:Button ID="Button1" runat="server" Text="Add" 
                Width="90%" Font-Bold="true" height="35px" 
                    CssClass="button"/>
                <br />
                <br/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style13">
                <asp:Label runat ="server" ID="lblMsg"></asp:Label>
                
            </td>

        </tr>
       </table>
       <br />
               
      </center>

   </asp:Content>

