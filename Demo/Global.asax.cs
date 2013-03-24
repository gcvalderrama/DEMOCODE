using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Threading;
using System.Web;
using System.Web.Http;
using System.Web.Security;
using System.Web.SessionState;

namespace Demo
{
    public class Global : System.Web.HttpApplication
    {
       
        
        protected void Application_Start(object sender, EventArgs e)
        {
            GlobalConfiguration.Configuration.Routes.MapHttpRoute(
              name: "DefaultApi",
              routeTemplate: "api/{controller}/{id}",
              defaults: new { id = RouteParameter.Optional }
          );
            var appXmlType = GlobalConfiguration.Configuration.Formatters.XmlFormatter.SupportedMediaTypes.FirstOrDefault(t => t.MediaType == "application/xml");
            GlobalConfiguration.Configuration.Formatters.XmlFormatter.SupportedMediaTypes.Remove(appXmlType);
        }


        // Uncomment this code and it will work just fine.
        //void Application_PostAuthenticateRequest(object sender, EventArgs e)
        //{
        //    if (Thread.CurrentPrincipal.Identity.IsAuthenticated && Thread.CurrentPrincipal.Identity.Name == "Carlos")
        //    {
        //        var prin = new GenericPrincipal(Thread.CurrentPrincipal.Identity, new string[] { "Admins" });
        //        Thread.CurrentPrincipal = prin; 
        //    }
        //}

        
       

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            //var cookie = HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
            //if (cookie == null) return;  
            //var forms =  FormsAuthentication.Decrypt(cookie.Value);

            //var iden = new System.Security.Principal.GenericIdentity(forms.Name);
            //GenericPrincipal prin = null;
            //if (forms.Name == "Carlos")
            //{
            //    prin = new GenericPrincipal(iden, new string[] { "Admins" });
            //}
            //else
            //{
            //    prin = new GenericPrincipal(iden, new string[]{}); 
            //}
            //Thread.CurrentPrincipal = prin;

            
            //HttpContext.Current.User = prin;
           

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}