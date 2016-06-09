using DemoWebForms.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class ListerProduits : System.Web.UI.Page
    {
        AW db = new AW();


        protected void Page_Load(object sender, EventArgs e)
        {

            //Stratégie avec View State
            if (!Page.IsPostBack)
            {
                drpCategories.DataSource = db.Categories.ToList();
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

            drpSubCategories.DataSource = db.Subcategories.
                                          Where(s => s.CategoryID == noCat).ToList();
            drpSubCategories.DataBind();

            drpSubCategories.SelectedValue = noSubCat.ToString();



        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<DemoWebForms.Models.Product>
            grdProduits_GetData([Control]string drpSubCategories)
        {

            int noSubCat = int.Parse(drpSubCategories);

            return db.Products.Where(
                            p => p.SubcategoryID == noSubCat);
        }

        public void grdProduits_UpdateItem(int ProductID)
        {
            DemoWebForms.Models.Product item = db.Products.Find(ProductID);

            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item {0} n'est pas trouvé", ProductID));
                return;
            }
            Page.TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                db.SaveChanges();
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void grdProduits_DeleteItem(int ProductID)
        {
            DemoWebForms.Models.Product item = db.Products.Find(ProductID);

            if (item == null)
            {
                // The item wasn't found
                ModelState.AddModelError("", String.Format("Item {0} n'est pas trouvé", ProductID));
                return;
            }
            db.Products.Remove(item);
            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                ModelState.AddModelError("", String.Format("Item {0} a été modifié depuis sa lecture", ProductID));
            }
            catch (DbUpdateException ex)
            {
                ModelState.AddModelError("", String.Format("Item {0} n'a pas pu être enlevé", ProductID));
            }

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public object DetailsView1_GetItem([Control]int? grdProduits)
        {
            if (grdProduits == null)
                return null;
            return db.Products.Find(grdProduits);
        }

    }
}
