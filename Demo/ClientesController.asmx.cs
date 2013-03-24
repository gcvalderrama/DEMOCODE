using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace Demo
{
    /// <summary>
    /// Summary description for ClientesController
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ScriptService]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class ClientesController : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod]
        public string[] GetClientes()
        {
            return new string[]{ "juan", "maria", DateTime.Now.ToLongTimeString()};
        }
    }
}
