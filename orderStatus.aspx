<%@ Page Title="" Language="VB" MasterPageFile="~/userMasterPage.master" AutoEventWireup="false" CodeFile="orderStatus.aspx.vb" Inherits="orderStatus" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .viewtext
    {
    	text-align:center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>


    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>


<div>
    <asp:HiddenField ID="HiddenField1" runat="server" />
<center>
<br />
<asp:GridView runat="server" ID="gridView1" DataKeyNames="OID" 
        AutoGenerateColumns="False" Width="80%" CellPadding="3" 
        GridLines="Vertical" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CssClass="viewtext">
	<AlternatingRowStyle BackColor="#DCDCDC" />
	<Columns>
    <asp:BoundField DataField="OID" HeaderText="OID" />
	<asp:BoundField DataField="Odate" HeaderText="Order Date" />
    <asp:BoundField DataField="Qty" HeaderText="Qty" />
    <asp:BoundField DataField="Total" HeaderText="Total" />
   
   
   	<asp:TemplateField HeaderText="Action" >
    <ItemTemplate>
		<asp:LinkButton ID="lnkEdit" Text="Track Order"  OnClick="lnkEdit_Click" runat="server"></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateField>

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
<br />
</center>
<asp:Label ID="lblmsg1" runat="server"/>
<asp:Button ID="modelPopup" runat="server" style="display:none" />

<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="modelPopup" PopupControlID="updatePanel"
CancelControlID="btnCancel" BackgroundCssClass="tableBackground">
</asp:ModalPopupExtender>

<asp:Panel ID="updatePanel" runat="server" BackColor="White" Height="400px" Width="700px" style="display:none;">
<div style="text-align:right;">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Crystal_Project_cancel.png" Width="20px" />
</div>


<table border="1" cellpadding="2" cellspacing="0">
    <tr>
        <td colspan="4">
            <asp:Label ID="lblEx" runat="server" Text=""></asp:Label>
        </td>
    </tr>

    <tr>
        <td colspan = "4">
            <asp:Image ID="Image1" runat="server" />
        </td>
    </tr>

    <tr style="border-style:none;">
        <td style="width:150px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblODate" runat="server"></asp:Label>
        </td>

        <td style="width:150px">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCDate" runat="server" ></asp:Label>
        </td>

        <td style="width:170px">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDDate" runat="server" ></asp:Label>
        </td>

        <td>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblADate" runat="server" ></asp:Label>
        </td>
    </tr>
    <tr>
		<td align="center" colspan="4" >
		    
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="25px" Width="65px" Font-Size="Large" />
		</td>
	</tr>
</table>

</asp:Panel>
</div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

