using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class liaison : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] pays = {
                    "Canada",
                    "USA",
                    "Mexique"
                };
                drpPays.DataSource = pays;
                drpPays.DataBind();
            }

            lblPays.DataBind();
            //ou encore:
            //Page.DataBind();

        }

    }
}