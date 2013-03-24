<%@ Page Language="C#"
     MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>

<asp:Content  runat="server" ContentPlaceHolderID="BodyZone" >
    <div>
        <h1>Publica</h1>
        <div>
            <h2> windows user </h2>
            <asp:Label Text="text" SkinID="lblImportant" Font-Size="50" ID="lblwindow" runat="server" />            
            <asp:Label Text="text" ID="lblwinmode" runat="server" />
        </div>
        <div style="text-align:right;">
            <h2> .net user </h2>
            <asp:Label Text="" ID="lblnet" runat="server">
            </asp:Label>
        </div>        
    </div>

</asp:Content>  
