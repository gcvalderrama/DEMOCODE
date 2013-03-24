using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //FormsAuthentication.SetAuthCookie(this.txtuser.Text, false);
            FormsAuthentication.RedirectFromLoginPage(this.txtuser.Text, false); 
        }
    }
}