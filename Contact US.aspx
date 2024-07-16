<%@ Page Title="" Language="VB" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="false" CodeFile="Contact US.aspx.vb" Inherits="Contact_US" Theme="Theme1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            height: 40px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <table border="0" width="100%" cellpadding="0" cellspacing="0">

    <tr>
        <td align="center">
            <h3>Contact US</h3>
            <br />
        </td>
    </tr>

    <tr>
        <td align="center">
            <div >
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3705.435496535002!2d72.13501971164509!3d21.76339997999302!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395f5083c726fa2d%3A0x862de92444bf5028!2sJagadish%20Apartment!5e0!3m2!1sen!2sin!4v1707907668931!5m2!1sen!2sin" 
                    width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" 
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <br />
        </td>
    </tr>

    

    <tr align="center">
        <td>User Name</td>
    </tr>
    <tr>
        <td align="center">
        <asp:TextBox ID="txtname" runat="server" Height="36px" placeholder="User Name" 
            Width="390px"></asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Username is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revUsername" runat="server"
                ControlToValidate="txtname"
                ErrorMessage="Username can contain letters, numbers, underscores only"
                ValidationExpression="^[a-zA-Z0-9_ ]+$" Display="Dynamic"></asp:RegularExpressionValidator>
        
        <br />
        <br />
        </td>
    </tr>
    <tr align="center">
        <td>Email Address</td>
    </tr>
    <tr>
        <td align="center">
        <asp:TextBox ID="txtemail" runat="server" Height="36px" placeholder="Email" 
            Width="390px">
        </asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Email Address is required" 
        Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Please enter a valid email address" 
        ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" Display="Dynamic" ></asp:RegularExpressionValidator>
        <br />
        <br />
        </td>
    </tr>

    <tr align="center">
        <td>Comment</td>
    </tr>
 <tr>
        <td align="center">
        <asp:TextBox ID="txtcomment" runat="server" Height="100px" placeholder="Comment" 
            Width="390px" TextMode="MultiLine"></asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtcomment" ErrorMessage="Address is required" 
        Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revAddress" runat="server" ControlToValidate="txtcomment" ErrorMessage="Address can contain letters, numbers, spaces, commas only"
        ValidationExpression="^[a-zA-Z0-9\s,.-]+$" Display="Dynamic"></asp:RegularExpressionValidator>
        
        </td>
    </tr>


    
    <tr>
        <td align="center" class="style1">
            <br />
            <br />
        </td>
    </tr>
    
    
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#0000FF" Font-Bold="true" 
             ForeColor="White" Text="Submit" Width="402px" CssClass="button" 
             Height="36px"/>
             <br />
            <br />
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </td>
    </tr>
</table>
</center>
</asp:Content>

