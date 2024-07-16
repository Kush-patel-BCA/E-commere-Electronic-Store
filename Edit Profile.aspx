<%@ Page Title="" Language="VB" MasterPageFile="~/userMasterPage.master" AutoEventWireup="false" CodeFile="Edit Profile.aspx.vb" Inherits="Edit_Profile" Theme="Theme1" %>

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
            <td colspan="2" align="center" class="style4">
                <h2>Edit Profile</h2>
            </td>
        </tr>
        <tr>
                <td >User Name</td>
        </tr>
        <tr>
            <td class="style2">
                 &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtuname" runat="server" Height="36px" placeholder="User Name" 
                    Width="361px" MaxLength="20" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Username is required" 
                    Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revUsername" runat="server"
                ControlToValidate="txtuname"
                ErrorMessage="Username can contain letters, numbers, underscores only"
                ValidationExpression="^[a-zA-Z0-9_ ]+$" Display="Dynamic" 
                ValidationGroup="signup"></asp:RegularExpressionValidator>

            </td>
        </tr>

            <tr>
                <td >Mobile</td>
               </tr>
             <tr>
                <td >
               &nbsp;&nbsp; <asp:TextBox ID="txtmob" runat="server" Height="36px"  Width="361px" 
               placeholder="Mobile Number" CssClass="textbox"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="txtmob" ErrorMessage="Mobile Number is required" 
               Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="revMobile" runat="server"
                ControlToValidate="txtmob" ErrorMessage="Please enter a valid 10-digit mobile number"
                ValidationExpression="^[0-9]{10}$" Display="Dynamic" ValidationGroup="signup">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                </tr>
            <tr>      
                <td>
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txtadd" runat="server" 
                placeholder="Address" TextMode="MultiLine" 
                 Height="100px"  Width="361px" 
                 BorderColor="Black" BorderStyle="Groove" CssClass="placeholder"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ControlToValidate="Txtadd" ErrorMessage="Address is required" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="Address" runat="server"
                 ControlToValidate="Txtadd" ErrorMessage="Address can contain letters, numbers, commas only"
                 ValidationExpression="^[a-zA-Z0-9\s,.-]+$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>City</td>
                </tr>
                  <tr>
                <td>
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txtcity" runat="server" Height="36px"  Width="361px" 
                placeholder="city" CssClass="textbox"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="Txtcity" ErrorMessage="City is required" 
                Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="City" runat="server" 
                ControlToValidate="Txtcity" ErrorMessage="City name contain only letters"
                ValidationExpression="^[a-zA-Z]+$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
                </td>
            </tr>

           <tr>
            <td>State</td>
            </tr>
                <tr>
            <td>
                &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="dd1" runat="server" Height="36px"  
                Width="359px" AutoPostBack="True" 
                style="margin-bottom: 0px" CssClass="textbox">
                <asp:ListItem Selected="True">State</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhattisgarh</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
                <asp:ListItem>Mizoram</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
                <asp:ListItem>Tripura</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Uttarakhand</asp:ListItem>
                <asp:ListItem>West Bengal</asp:ListItem>
          </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue=" "
                    ControlToValidate="dd1" ErrorMessage="Please Select State" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="state" runat="server"
            ControlToValidate="dd1"
            ErrorMessage="Please select a valid state."
            ValidationExpression="(Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha|Punjab|Rajasthan|Sikkim|Tamil Nadu|Telangana|Tripura|Uttar Pradesh|Uttarakhand|West Bengal)"
            Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
            </tr>

             <tr>
                <td>Pincode</td>
                </tr>
                   <tr>
                <td>
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpincode" runat="server" Height="36px"  Width="361px" 
                        placeholder="pincode" CssClass="textbox"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtpincode" ErrorMessage="Pincode is required" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Pincode" runat="server"
                ControlToValidate="txtpincode"
                ErrorMessage="Please enter a valid 6-digit PIN code"
                ValidationExpression="^\d{6}$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
                        <br />
                       
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnedit" runat="server" Text="Edit" ForeColor="White" 
                        Width="361px" Height="36px" Font-Bold="true"  style="margin-top:3px"  BackColor="Blue" 
                         CssClass="button"  />
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td colspan="2" class="style1">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
<br />
    </center>
</asp:Content>

