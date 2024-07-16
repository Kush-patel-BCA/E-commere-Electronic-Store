<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="stockReport.aspx.vb" Inherits="stockReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .viewtext
    {
    	text-align:center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />
<center>
    <table>
        <tr>
            <td>
            <asp:RadioButton ID="rbtnAll" runat="server" GroupName="aaa" Text="All Item" />
            </td>
        </tr>
        <tr>
            <td>
    <asp:RadioButton ID="rbtnStock" runat="server" GroupName="aaa" 
    Text="Stock Item" />
          </td>
        </tr>
        <tr>
            <td>
    <asp:RadioButton ID="rbtnOutOfStock" runat="server" GroupName="aaa" 
    Text="Out Of Stock" />
          </td>
        </tr>

        <tr>
        <td>
    <asp:RadioButton ID="rbtnCategory" runat="server" GroupName="aaa" 
     Text="Select Category:" />
     <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    </td>
    </tr>
      
   <tr>
   <td align="left">
    <asp:Button ID="Button1" runat="server" Text="Show Report" CssClass="button" Height="40px" 
     Width="100%" />
    <br />
    </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br />
    </td>
        </tr>
    </table>
    <colums>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IID"  BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" EnableModelValidation="True" GridLines="Vertical" Width="80%" 
        CssClass="viewtext" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
    <Columns>
        <asp:BoundField DataField="IID" HeaderText="Item ID" ReadOnly="True" />
        <asp:TemplateField HeaderText="Item Name">
            <ItemTemplate>
                <%# Eval("INAME") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtINAME" runat="server" Text='<%# Bind("INAME") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Category">
            <ItemTemplate>
                <%# Eval("ICATEGORY") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtICATEGORY" runat="server" Text='<%# Bind("ICATEGORY") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <%# Eval("iprice") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtIPRICE" runat="server" Text='<%# Bind("iprice") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <%# Eval("QTY") %>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtQTY" runat="server" Text='<%# Bind("QTY") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        
    </asp:GridView>
    </colums>
    <br />
    </center>


</asp:Content>

