using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Lenteur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Thread.Sleep(500);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Trace.Write("Avant le Premier Sleep!");
            Thread.Sleep(500);
            Trace.Write("Avant le Second Sleep!");
            Thread.Sleep(500);
            Trace.Warn("Après le Second Sleep!");
        }
    }
}