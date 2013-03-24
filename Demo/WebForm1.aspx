<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server" >
        <Services>
            <asp:ServiceReference Path="~/ClientesController.asmx" />
        </Services>
    </asp:ScriptManager>
    <div id="panel">
        
        <br />
        <br />
        
    </div>
        

        <button id="btnsay" type="button" > Click </button>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script  type="text/javascript">

        var WebForm1presenter = {
            sayHello: function () {
                confirm('hola mundo'); 
            }
        }

        var Cliente = function (){
            var that = this;
            that.nombre = null;
            that.apellido = null;
            that.sayhello = function(){ alert( this.nombre +  this.apellido ); };
            return that;
        }
        
        var cl = new Cliente();
        cl.nombre = '<%=System.Threading.Thread.CurrentPrincipal.Identity.Name%>';
        cl.apellido = "perez";

        <% if ( System.Threading.Thread.CurrentPrincipal.Identity.Name == "maria"){%>
            cl.sayhello();
        <% }%>
        

        
        function demo() {
            var des = window.document.getElementById("panel");
            des.innerHTML = "Hola mundo";
        }
        function demo(parametro) {
            var des = window.document.getElementById("panel");
            des.innerHTML = "fin del mundo" + parametro.getHours();
        }
        demo(new Date());
    </script>    
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     <asp:Button ID="Button1" Text="gettime"  runat="server" OnClick="Unnamed2_Click" />
                     
            </ContentTemplate>
        </asp:UpdatePanel>

        <div> 
            <iframe width="560" height="315" src="http://www.youtube.com/embed/s9o3PaDzwGk?rel=0&autoplay=1" 
                frameborder="0"  allowfullscreen></iframe>
        </div>

    <script>
        $(document).ready(function () {
            $("#btnsay").on("click", function () {
                
                var def = $.get('http://localhost:37264/api/ClientesWAPI');
                def.done(function (data) {                    
                    $("#panel").html(JSON.stringify(data));

                })
                
                //Demo.ClientesController.GetClientes(function (data) {
                    
                //    $("#panel").html(data);
                //});
                        

            });
        });
    </script>    
        <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
        <uc1:WebUserControl1 ID="WebUserControl12" runat="server" />
    </form>
    </body>
</html>
