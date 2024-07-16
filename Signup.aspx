<%@ Page Title="" Language="VB" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="Signup" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="js/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script>
<link href="js/jquery-ui.css" rel="Stylesheet" type="text/css" />
     <style type="text/css">
         .style2
         {
         	
             width: 464px;
             
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
            $("[id$=txtdob]").datepicker({
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: 'calendar.png',
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy',
                timeFormat: 'HH:mm:ss'
              
            });
        }
   
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
   
    <table border="0" class="contantTable">
        
        <tr>
        
            <td colspan="2" align="center" class="style2">
                <h2>Sign Up</h2>
            </td>
        </tr>
        <tr>
            <td class="style2">User Name</td>
           
        </tr>
  
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtuname" runat="server" Height="36px" placeholder="User Name" 
                    Width="100%" MaxLength="20" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
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
            <td class="style2">
                Mobile</td>
           
        </tr>
        
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtmob" runat="server" Height="36px" 
                 placeholder="Mobile Number" Width="464px" 
                 MaxLength="10" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtmob" ErrorMessage="Mobile Number is required" 
                Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobile" runat="server"
                ControlToValidate="txtmob" ErrorMessage="Please enter a valid 10-digit mobile number"
                ValidationExpression="^[0-9]{10}$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date of Birth</td>
         
        </tr>
       
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtdob" runat="server" Height="36px" 
                 placeholder="Date of Birth" Width="445px" 
                 MaxLength="10" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                 ControlToValidate="txtdob" ErrorMessage="Date of Birth is required" 
                 Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                   
                <asp:RegularExpressionValidator ID="dob" runat="server"
                ErrorMessage="Please enter a valid date of birth (dd/mm/yyyy)"
                ValidationExpression="^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$" 
                    ControlToValidate="txtdob" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>

       <tr>
            <td class="style2">
                Gender</td>
       
        </tr>
        
        <tr>
            <td class="style2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                 ErrorMessage="Select Gender" ControlToValidate="RadioButtonList1" 
                 InitialValue="" Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="style2">
                Email Address</td>
         
        </tr>
        
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtemail" runat="server" placeholder="Email" Height="36px" 
                 Width="464px" MaxLength="30" CssClass="textbox" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Email Address is required" 
                Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Please enter a valid email address" 
                ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                Display="Dynamic" ValidationGroup="signup" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
           
        </tr>      
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" Height="100px" 
                Width="464px" CssClass="placeholder" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address is required" 
                    Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revAddress" runat="server"
                ControlToValidate="txtaddress" ErrorMessage="Address can contain letters, numbers, spaces, commas only"
                ValidationExpression="^[a-zA-Z0-9\s,.-]+$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>
      <tr>
            <td class="style2">
                city</td>
      
        </tr>
        
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtcity" runat="server" placeholder="City Name" Height="36px" 
                Width="464px" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="City is required" 
                Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="City" runat="server" 
                ControlToValidate="txtCity" ErrorMessage="City name contain only letters"
                ValidationExpression="^[a-zA-Z]+$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State</td>
       
        </tr>
        
        <tr>
            <td class="style2">
                <asp:DropDownList ID="dd1" runat="server" Height="36px" Width="464px" 
                 AutoPostBack="True" CssClass="textbox">
                <asp:ListItem Selected="True">Select State</asp:ListItem>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                InitialValue=" "   ErrorMessage="Please Select State" Display="Dynamic" 
                ControlToValidate="dd1" ValidationGroup="signup"></asp:RequiredFieldValidator>
             
            <asp:RegularExpressionValidator ID="state" runat="server"
            ControlToValidate="dd1"
            ErrorMessage="Please select a valid state."
            ValidationExpression="(Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha|Punjab|Rajasthan|Sikkim|Tamil Nadu|Telangana|Tripura|Uttar Pradesh|Uttarakhand|West Bengal)"
            Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="style2">
                Pincode</td>
     
        </tr>
       
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtpincode" runat="server" placeholder="Pincode" Height="36px" 
                    Width="464px" MaxLength="6" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="Pincode is required" 
                Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Pincode" runat="server"
                ControlToValidate="txtpincode"
                ErrorMessage="Please enter a valid 6-digit PIN code"
                ValidationExpression="^\d{6}$" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
            </td>
        </tr>
       <tr>
            <td class="style2">
                password</td>
     
        </tr>
       
        <tr>
            <td class="style2">
                <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" 
                 Height="36px" Width="464px" TextMode="Password" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="Password is required" 
                Display="Dynamic" ValidationGroup="signup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Password" runat="server"
                ControlToValidate="txtpassword" ErrorMessage="Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character"
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
                    <br />
                    <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="style2">
                <asp:Button ID="btnsignup" runat="server" Font-Bold="true" 
                Text="Signup" Width="464px" CssClass="button" 
                Height="36px" ValidationGroup="signup"/>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
<br />
   </center>
   </asp:Content>

