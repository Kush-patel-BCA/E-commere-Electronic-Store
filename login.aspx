<%@ Page Title="" Language="VB" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 391px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="mytable">
<center>
<table border="0" class="contantTable">
    <tr>
        <td colspan ="2" align="center">

            <h2>Login</h2>
        </td>
    </tr>
    <tr>
        <td>
             User Id:
        </td>
         
    </tr>
    <tr>
        <td>
            <asp:TextBox runat="server" ID="txtUName" Height="36px" placeholder="Email Id" 
                Width="400px" TextMode="SingleLine" CssClass="textbox" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Email Address is required" ControlToValidate="txtUName" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtUName" ErrorMessage="Please enter a valid email address" 
            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
            Display="Dynamic" ValidationGroup="signup" ></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
             Password:
        </td>
        
    </tr>

    <tr>
        <td>
            <asp:TextBox runat="server" ID="txtPassword" Height="36px" placeholder="Password" 
                TextMode="Password" Width="400px" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Password is required" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Password" runat="server"
                ControlToValidate="txtPassword" ErrorMessage="Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character"
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                Display="Dynamic" ValidationGroup="signup"></asp:RegularExpressionValidator>  
                <br />
        </td>
    </tr>
    <tr align="center">
        <td>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                NavigateUrl="~/ForgotPassword.aspx" CssClass="link">Forgot Password?</asp:HyperLink>
               <br />
                <br />
        </td>
    </tr>
    
    <tr>
        <td colspan ="2" align="center">
            <asp:Button runat="server" ID = "btnLogin" Text="Login" 
                Width="400px" Height="36px"  Font-Bold="true"  style="margin-top:3px" 
               CssClass="button" ClientIDMode="AutoID"/><br />
            <br />
            <asp:Label runat = "server" ID="lblMsg"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style2" align="center">
            <asp:Label ID="Label1" runat="server" Text="I don't have an account ?" 
                Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="25px" 
                Font-Underline="False"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/Signup.aspx" CssClass="link" Height="35px">Signup</asp:HyperLink>
        <br />
        </td>
    </tr>
</table>
<br />
<br />
</center>
</div>
</asp:Content> 

