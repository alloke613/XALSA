<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration - XALSA</title>
    <script type="text/javascript">
        function blurEvent(id, text) {
            var me = document.getElementById(id);
            if (me.value == '')
                me.value = text;
        }
        function clickEvent(id, text) {
            var me = document.getElementById(id);
            if (me.value == text)
                me.value = '';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Registration Page<br />
        <br />
        &nbsp;<asp:TextBox ID="Username" runat="server" OnClick="clickEvent(this.id, 'Username')" OnBlur="blurEvent(this.id, 'Username')">Username</asp:TextBox><br />
        <br />
        &nbsp;<asp:TextBox ID="Password" runat="server" 
            ontextchanged="Password_TextChanged">Password</asp:TextBox>&nbsp;         
        <asp:TextBox ID="PasswordConfirm" runat="server" 
            ontextchanged="PasswordConfirm_TextChanged">Confirm</asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:TextBox ID="FirstName" runat="server" OnClick="clickEvent(this.id, 'First Name')" OnBlur="blurEvent(this.id, 'First Name')">First Name</asp:TextBox>&nbsp;
        <asp:TextBox ID="LastName" runat="server" OnClick="clickEvent(this.id, 'Last Name')" OnBlur="blurEvent(this.id, 'Last Name')">Last Name</asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:TextBox ID="Nickname" runat="server" OnClick="clickEvent(this.id, 'Nickname')" OnBlur="blurEvent(this.id, 'Nickname')">Nickname</asp:TextBox><br />
        <br />
        &nbsp;<asp:TextBox ID="Email" runat="server" OnClick="clickEvent(this.id, 'Email Address')" OnBlur="blurEvent(this.id, 'Email Address')">Email Address</asp:TextBox><br />
        <br />
        Date of birth:
        <asp:DropDownList ID="Day" runat="server">
        </asp:DropDownList>
        /&nbsp;<asp:DropDownList ID="Month" runat="server" AutoPostBack="True" 
            onselectedindexchanged="Month_SelectedIndexChanged">
            <asp:ListItem Value="1">January</asp:ListItem>
            <asp:ListItem Value="2">February</asp:ListItem>
            <asp:ListItem Value="3">March</asp:ListItem>
            <asp:ListItem Value="4">April</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">July</asp:ListItem>
            <asp:ListItem Value="8">August</asp:ListItem>
            <asp:ListItem Value="9">September</asp:ListItem>
            <asp:ListItem Value="10">October</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">December</asp:ListItem>
        </asp:DropDownList>
        /&nbsp;<asp:DropDownList ID="Year" runat="server">
        </asp:DropDownList>
        &nbsp;<br />
        <br />
        &nbsp;<asp:TextBox ID="MobileNum" runat="server" OnClick="clickEvent(this.id, 'Mobile')" OnBlur="blurEvent(this.id, 'Mobile')">Mobile</asp:TextBox><br />
        <br />
        &nbsp;<asp:TextBox ID="HomeNum" runat="server" OnClick="clickEvent(this.id, 'Home')" OnBlur="blurEvent(this.id, 'Home')">Home</asp:TextBox><br />
        <br />
        Description:
        <br />
        <asp:TextBox ID="Desc" runat="server" Height="70px" MaxLength="200" 
            TextMode="MultiLine" OnClick="clickEvent(this.id, 'Include a short description about yourself...')" OnBlur="blurEvent(this.id, 'Include a short description about yourself...')">Include a short description about yourself...</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" Text="Submit" />
&nbsp;<asp:Button ID="Reset" runat="server" Text="Reset" />
        <br />
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
