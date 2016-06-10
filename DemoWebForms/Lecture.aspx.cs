using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Lecture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCookie.Text = Request.Cookies["nom"]?.Value;

            lblSession.Text = (string) Session["age"];

            lblApplication.Text = (string)Application["secret"];
        }
    }
}