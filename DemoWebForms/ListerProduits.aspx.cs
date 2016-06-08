using DemoWebForms.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class ListerProduits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //dim db  as new AW()
            AW db = new AW();

            //Stratégie avec View State
            if (!Page.IsPostBack)
            {
                DbSet<Category> cat = db.Categories;

                drpCategories.DataSource = cat.ToList();
                drpCategories.DataTextField = "Name";
                drpCategories.DataValueField = "CategoryID";
                drpCategories.DataBind();
            }


            int noCat = int.Parse(drpCategories.SelectedValue);
            //-------------
            //Stratégie Sans ViewState
            int noSubCat = 1;

            if (Request.Params["ctl00$MainContent$drpSubCategories"] != null)
            {
                noSubCat = int.Parse(Request.Params["ctl00$MainContent$drpSubCategories"]);
            }

            IQueryable<Subcategory> subCat =
                db.Subcategories.Where(s =>
                    s.CategoryID == noCat);

            drpSubCategories.DataSource = subCat.ToList();
            drpSubCategories.DataTextField = "Name";
            drpSubCategories.DataValueField = "SubCategoryID";
            drpSubCategories.DataBind();

            drpSubCategories.SelectedValue = noSubCat.ToString();
        }
    }
}