using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Ecriture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("nom", txtCookie.Text);
            Response.Cookies.Add(cookie);

            Session["age"] = txtSession.Text;

            Application["secret"] = txtApplication.Text; 


        }
    }
}