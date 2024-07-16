<%@ Page Title="" Language="VB" MasterPageFile="~/userMasterPage.master" AutoEventWireup="false" CodeFile="Change password.aspx.vb" Inherits="Change_password" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 391px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <center>
            <table border="0" class="contantTable">
                <tr>
                    <td colspan="2" align="center" class="style3"><h2>Change Password</h2></td>
                    
                </tr>
              
                <tr>
                    <td>Current Password</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;<asp:TextBox ID="txtcurrentpwd" runat="server" Height="36px"  Width="361px" 
                            placeholder="Current password" CssClass="textbox"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtcurrentpwd" ErrorMessage="Password is required" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="Password" runat="server"
                            ControlToValidate="txtcurrentpwd" ErrorMessage="Password must be at least 8 characters long"
                            ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                            Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>          
                    </td>
                </tr>

                <tr>
                    <td>New Password</td>
                </tr>
                    <tr>
                    <td>
                        &nbsp;&nbsp;<asp:TextBox ID="txtnewpwd" runat="server" Height="36px"  Width="361px" 
                            placeholder="New password" CssClass="textbox"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtnewpwd" ErrorMessage="Password is required" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtnewpwd" ErrorMessage="Password must be at least 8 characters long"
                            ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                            Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>          
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                 </tr>
                 <tr>
                    <td>
                        &nbsp;&nbsp;<asp:TextBox ID="txtconfirmpwd" runat="server" Height="36px"  Width="361px" 
                            placeholder="Confirm password" CssClass="textbox"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpwd" ControlToValidate="txtconfirmpwd" 
                            ErrorMessage="Password Not Match" Display="Dynamic"></asp:CompareValidator>
                            <br />
                            
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center" class="style1">
                        <asp:Button ID="btnchange" runat="server" Text="change" Height="36px" 
                            Font-Bold="true" Width="361px" BackColor="Blue" CssClass="button" 
                            ForeColor="White" />
                      <br />
                      <br />
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </center>
   
</asp:Content>

