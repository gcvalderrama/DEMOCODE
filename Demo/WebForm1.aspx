<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server">
        <Services>
            <asp:ServiceReference Path="~/ClientesController.asmx" />
        </Services>
    </asp:ScriptManager>


           <div id="silverlightControlHost">
        <object data="data:application/x-silverlight-2," type="application/x-silverlight-2" width="600px" height="600px">
		  <param name="source" value="ClientBin/SilverlightApplication1.xap"/>
		  <param name="onError" value="onSilverlightError" />
		  <param name="background" value="white" />
		  <param name="minRuntimeVersion" value="4.0.60310.0" />
		  <param name="autoUpgrade" value="true" />
		  <a href="http://go.microsoft.com/fwlink/?LinkID=149156&v=4.0.60310.0" style="text-decoration:none">
 			  <img src="http://go.microsoft.com/fwlink/?LinkId=161376" alt="Get Microsoft Silverlight" style="border-style:none"/>
		  </a>
	    </object><iframe id="_sl_historyFrame" style="visibility:hidden;height:0px;width:0px;border:0px"></iframe></div>
    <div id="panel">
        
        <br />
        <br />
        
    </div>
        

        <button id="btnsay" type="button" > Click </button>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://malsup.github.com/jquery.blockUI.js"></script>

        
    <script type="text/javascript" src="Silverlight.js"></script>
    <script type="text/javascript">
        function onSilverlightError(sender, args) {
            var appSource = "";
            if (sender != null && sender != 0) {
                appSource = sender.getHost().Source;
            }

            var errorType = args.ErrorType;
            var iErrorCode = args.ErrorCode;

            if (errorType == "ImageError" || errorType == "MediaError") {
                return;
            }

            var errMsg = "Unhandled Error in Silverlight Application " + appSource + "\n";

            errMsg += "Code: " + iErrorCode + "    \n";
            errMsg += "Category: " + errorType + "       \n";
            errMsg += "Message: " + args.ErrorMessage + "     \n";

            if (errorType == "ParserError") {
                errMsg += "File: " + args.xamlFile + "     \n";
                errMsg += "Line: " + args.lineNumber + "     \n";
                errMsg += "Position: " + args.charPosition + "     \n";
            }
            else if (errorType == "RuntimeError") {
                if (args.lineNumber != 0) {
                    errMsg += "Line: " + args.lineNumber + "     \n";
                    errMsg += "Position: " + args.charPosition + "     \n";
                }
                errMsg += "MethodName: " + args.methodName + "     \n";
            }

            throw new Error(errMsg);
        }
    </script>



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
        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
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
        Sys.Application.add_init(function () {          
            Sys.Debug.trace("init event");  
        });
        Sys.Application.add_load(function () {
            Sys.Debug.trace("load event");
        });

        $(document).ajaxSend(function (event, request, settings) {
            
        

           
        });
        $(document).ajaxComplete(function (event, request, settings) {
            
            
        });


        $(document).ready(function () {
            $("#btnsay").on("click", function () {
                
                $.blockUI({ message: '<h1> ' + "load data " + ' </h1>' });
                var def = $.get('http://localhost:37264/api/ClientesWAPI');
                def.done(function (data) {                    
                    $("#panel").html(JSON.stringify(data));
                })

                def.fail(function () {
                    alert('error');
                });

                def.always(function () {
                    $.unblockUI();
                });
                
                

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
