<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Demo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server"  ID="txtuser"/>

        <asp:Button Text="login" runat="server" OnClick="Unnamed1_Click" />
    </div>

    </form>
</body>
</html>
