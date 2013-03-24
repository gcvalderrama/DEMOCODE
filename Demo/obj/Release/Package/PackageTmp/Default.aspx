<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Publica</h1>
        <div>
            <h2> windows user </h2>
            <asp:Label Text="text" ID="lblwindow" runat="server" />            
            <asp:Label Text="text" ID="lblwinmode" runat="server" />
        </div>
        <div>
            <h2> .net user </h2>
            <asp:Label Text="" ID="lblnet" runat="server">
            </asp:Label>
        </div>        
    </div>
    </form>
    <p>
        <a href="Private/Privado.aspx">Privado.aspx</a></p>
    <p>
        3</p>
</body>
</html>
