<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="diliveredOrder.aspx.vb" Inherits="diliveredOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="js/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script>
<link href="js/jquery-ui.css" rel="Stylesheet" type="text/css" />
<style type="text/css">
<%--.ui-datepicker {
    background: #333;
    border: 1px solid #555;
    color: #EEE;
    
}--%>

.ui-state-active {color: #333;}
#ui-datepicker-div .ui-state-highlight 
{color: Blue;
  background-color:White;
 }
 
 .completionList {
        border: solid 1px #444444;
        margin: 0px;
        padding: 2px;
        overflow: auto;
        background-color: #FFFFFF;
        font-size:larger;
        text-align:left;
    }

    .listItem {
        color: #1C1C1C;font-size:larger;
    }

    .itemHighlighted {
        background-color: #ffc0c0;font-size:larger;
    }
 
 
 
 
</style>

<script type="text/javascript">
    //On Page Load.
    $(function () {
        SetDatePicker();
    });

    //On UpdatePanel Refresh.
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    if (prm != null) {
        prm.add_endRequest(function (sender, e) {
            if (sender._postBackSettings.panelsToUpdate != null) {
                SetDatePicker();
                SetDatePicker1();
            }
        });
    };

    function SetDatePicker() {
        $("[id$=txtDate]").datepicker({
            showOn: 'button',
            buttonImageOnly: true,
            buttonImage: 'calendar.png',
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-M-yy'
        });
    }
   
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<table cellpadding="0" cellspacing="0" class="contantTable">
    <tr>
        <td colspan="2" align="center">
        <br />
            <h2>Delivred Order</h2>      
        <br />
       </td>
    </tr>
    <tr>
        <td>
            Select Order ID:
        </td>

        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="*" Font-Size="Larger" 
                ForeColor="#990000" ValidationGroup="aaa"></asp:RequiredFieldValidator>
                <br />
        </td>
    </tr>
    
    <tr>
        <td>
            Delivred Date:
        </td>
        <td>
            <br />
            <asp:TextBox ID="txtDate" runat="server" 
                ClientIdMode="static" ForeColor="Maroon" MaxLength="11" Width="150px" 
                Font-Size="Larger"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtDate" ErrorMessage="*" Font-Size="Larger" 
                ForeColor="#990000" ValidationGroup="aaa"></asp:RequiredFieldValidator>
            <br />
            <br />    
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="aaa" 
                CssClass="button" Height="40px" Width="300px" />
            <br />
            <br />
        </td>
    </tr>
</table>
<br />
</center>
</asp:Content>

