<%@ Page Title="" Language="VB" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="false" CodeFile="ForgotPassword.aspx.vb" Inherits="ForgotPassword" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
          
      
                
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <center>
    <table border="0" class="contantTable">
           <tr>
            <td colspan="2" align="center">
                <h2>Forgot Password</h2>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >Email id</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtemail" runat="server"  Height="36px" 
                    Width="361px" placeholder="Email id" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Email Address is required" ControlToValidate="txtemail" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please enter a valid email address" 
                     ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                    Display="Dynamic" ValidationGroup="signup" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Date of Birth</td>
       </tr>
       <tr>
            <td>
                <asp:TextBox ID="txtdob" runat="server" SkinID="myTextBox"  Height="36px" 
                    Width="361px" placeholder="Date of Birth" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ErrorMessage="Date of Birth is required" ControlToValidate="txtdob" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="dob" runat="server"
                ErrorMessage="Please enter a valid date of birth (dd/mm/yyyy)"
                ValidationExpression="^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$" 
                ControlToValidate="txtdob" Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>
               
               <br />
               
               
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style2" align="center"> 
                <asp:Button ID="btnsubmit" runat="server" text="Submit" Height="36px" 
                    Font-Bold="true" Width="361px" BackColor="Blue" ForeColor="White" 
                    CssClass="button"/>
                 <br />
               
            </td>
        </tr>
    </table>
    <br />


      <asp:Panel ID="Panel1" runat="server" Visible="False">
    <center>
    <table border="0" class="contantTable">
        <tr>
            <td>New Password</td>
            
        </tr>
                     
        <tr>
            <td>
                <asp:TextBox ID="txtnewpwd" runat="server" TextMode="Password" placeholder="New Password" Height="36px" 
                    Width="361px" CssClass="textbox" ></asp:TextBox>
                <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="Password is required" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="Password" runat="server"
                ControlToValidate="txtnewpwd" ErrorMessage="Password must be at least 8 characters long"
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>          
            </td>
        </tr>
        <tr>
            <td> Confirm Password</td>
               
            
        </tr>
         
        <tr>
            <td>
                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" placeholder="Re-enter Password"  Height="36px" 
                    Width="361px" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Password Not Match" Display="Dynamic"></asp:CompareValidator>
                            
                    <br />      
            </td>
        </tr>
        <tr>
            <td  colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" text="Change" BackColor="Blue" 
                    Height="36px" Width="361px" CssClass="button" ForeColor="White" 
                    Font-Bold="true"/>
                <br />
              <br />
            </td>
        </tr>
        <%--<tr>
            <td class="style2">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx" 
                    CssClass="btnlgn" CausesValidation="False">Go To Login Page</asp:LinkButton>
                    <br />
                <br />
            </td>
        </tr>--%>
    </table>
    <br />
    <br />
    </center>
    </asp:Panel>
  </center>
</asp:Content>

