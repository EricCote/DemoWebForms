using DemoWebForms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class Infolettre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void dlvAbb_InsertItem()
        {
            var item = new DemoWebForms.Models.Abonnement();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                // Save changes here
                InfolettreCtx db = new InfolettreCtx();
                db.Abonnements.Add(item);
                db.SaveChanges();
            }
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public DemoWebForms.Models.Abonnement dlvAbb_GetItem()
        {
            return new Abonnement();
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                Abonnement abb = new Abonnement();
                abb.Nom = txtNom.Text;
                abb.Courriel = txtCourriel.Text;



                InfolettreCtx db = new InfolettreCtx();
                db.Abonnements.Add(abb);
                db.SaveChanges();
                Response.Redirect("merci");

            }
        }
    }
}