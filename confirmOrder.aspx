<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="confirmOrder.aspx.vb" Inherits="confirmOrder" %>
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
            BorderStyle="None" BorderWidth="1px" HorizontalAlign="Center" 
            CssClass="viewtext">
	    <AlternatingRowStyle BackColor="#DCDCDC" />
	    <Columns>
        <asp:BoundField DataField="OID" HeaderText="OID" />
	    <asp:BoundField DataField="uname" HeaderText="Name" />
        <asp:BoundField DataField="address" HeaderText="Address" />
        <asp:BoundField DataField="ODATE" HeaderText="ODATE" />
        <asp:BoundField DataField="QTY" HeaderText="QTY" />
	    <asp:BoundField DataField="Total" HeaderText="Total"  />
   
    
   	<asp:TemplateField HeaderText="Action" >
    <ItemTemplate>
		<asp:LinkButton ID="lnkEdit" Text="Order Details"  OnClick="lnkEdit_Click" runat="server"></asp:LinkButton>
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

<asp:Panel ID="updatePanel" runat="server" BackColor="White" Height="400px" Width="550px" style="display:none">
<div style="text-align:right;">
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Crystal_Project_cancel.png" Width="20px" />
</div>

<table border="1" width="100%" cellspacing="10" class="Popup" >
	<tr class="popcolor">
	<td colspan="2" align="center">Order Detail</td>
	</tr>
	<tr>
        <td style="width:50%;">
            User Name:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblUName" runat="server" Text="Label"></asp:Label>
        </td>
        <td style="width:50%;">
            Mobile No.:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblMNo" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            E-mail ID:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblEID" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            Address:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAdd" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            City:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            State:&nbsp;&nbsp;&nbsp;<asp:Label ID="lblState" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </td>
    </tr>

     <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Remark:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
        </td>
    </tr>
	<tr>
		<td align="center" colspan="2" height="100%" width="100%">
		    <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Accept Order"  onclick="btnModity_Click"  Height="25px" Width="120px" Font-Size="Large"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" CommandName="Update" runat="server" Text="Reject Order"  onclick="btnReject_Click"  Height="25px" Width="120px" Font-Size="Large"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel"  Height="25px" Width="65px" Font-Size="Large"/>
		</td>
	</tr>

</table>
</asp:Panel>
</div>
</ContentTemplate>
</asp:UpdatePanel>

</asp:Content>

