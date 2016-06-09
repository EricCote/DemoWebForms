using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Heure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Thread.Sleep(2000);
            ScriptManager sm = (ScriptManager)Page.Master.FindControl("sm");

            if (sm.IsInAsyncPostBack)
            {
                Label2.Text = DateTime.Now.ToString("T");
            }
            else
            {
                Label1.Text = DateTime.Now.ToString("T");
                Label2.Text = DateTime.Now.ToString("T");
                Label3.Text = DateTime.Now.ToString("T");
            }
        }
    }
}