<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In - XALSA</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Login Page<br />
        <br />
        Username:
        <asp:TextBox ID="Username" runat="server" MaxLength="20"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Username" Display="Dynamic" ErrorMessage="Insert Username"></asp:RequiredFieldValidator><br />
        <br />
        Password:
        <asp:TextBox ID="Password" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Password" Display="Dynamic" ErrorMessage="Insert Password"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" 
            Text="Log In" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label><br />
        <br />
    
    </div>
    </form>
</body>
</html>
