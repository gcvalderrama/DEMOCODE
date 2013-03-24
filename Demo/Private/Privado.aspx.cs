using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Private
{
    public partial class Privado : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Thread.CurrentPrincipal.IsInRole("Admins"))
            {   
                throw new UnauthorizedAccessException();  
            }

            


        }
    }
}