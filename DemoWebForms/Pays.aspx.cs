using DemoWebForms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Pays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<DemoWebForms.Models.Country> grdPays_GetData([Control]string txtFiltre )
        {
            AW db = new AW();
            if (string.IsNullOrEmpty(txtFiltre))
            {
                return db.Countries;
            }
            else
            {
                return from country in db.Countries
                       where country.Name.StartsWith(txtFiltre)
                       select country;
            }
        }
    }
}