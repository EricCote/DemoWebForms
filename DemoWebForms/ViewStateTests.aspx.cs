using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class ViewStateTests : System.Web.UI.Page
    {
        protected void Afficher(string texte)
        {
            div2.InnerHtml += "<br />" + texte;
        }

        protected void Page_Load(object sender, System.EventArgs e)
        {
            Afficher("Le Page_Load est appelé");

            //Avec Viewstate, on ne remplit que la première fois. 
            //on détecte si il y a un Viewstate avec la propriété IsPostBack
            if (!IsPostBack)
            {
                string[] provinces = {
                    "Québec",
                    "Ontario",
                    "Alberta"
                };
                foreach (string province in provinces)
                {
                    drpProvince.Items.Add(province);
                }
                //drpProvince.DataSource = provinces
                //drpProvince.DataBind()
            }

            //sans le viewstate
            //On remplit toujours et on restaure 
            //l 'élément sélectionné avec params
            string[] countries = {
                "Canada",
                "USA",
                "Mexique"
            };
            foreach (string country in countries)
            {
                drpPays.Items.Add(country);
            }
            drpPays.SelectedValue = Request.Params["drpPays"];


        }

        protected void txtNom_TextChanged(object sender, EventArgs e)
        {
            Afficher("Le txtNom a changé.");
        }

        protected void txtCourriel_TextChanged(object sender, EventArgs e)
        {
            Afficher("Le txtCourriel a changé.");
        }

        protected void chkVip_CheckedChanged(object sender, EventArgs e)
        {
            Afficher("Le VIP est changé");
        }

        protected void drpPays_SelectedIndexChanged(object sender, EventArgs e)
        {
            Afficher("Le Pays est changé");
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            Afficher("Le bouton est cliqué");
        }

        private void Page_Disposed(object sender, EventArgs e)
        {
            Afficher("Disposed");
        }

        private void Page_Error(object sender, EventArgs e)
        {
            Afficher("Erreur");
        }

        private void Page_Init(object sender, EventArgs e)
        {
            Afficher("Init");
        }

        private void Page_InitComplete(object sender, EventArgs e)
        {
            Afficher("InitComplete");
        }

        private void Page_LoadComplete(object sender, EventArgs e)
        {
            Afficher("LoadComplete");
        }

        private void Page_PreInit(object sender, EventArgs e)
        {
            //Afficher("PreInit");
        }

        private void Page_PreLoad(object sender, EventArgs e)
        {
            Afficher("PreLoad");
        }

        private void Page_PreRender(object sender, EventArgs e)
        {
            Afficher("PreRender");
        }

        private void Page_PreRenderComplete(object sender, EventArgs e)
        {
            Afficher("PreRenderComplete");
        }

        private void Page_SaveStateComplete(object sender, EventArgs e)
        {
            Afficher("SaveStateComplete");
        }

        private void Page_Unload(object sender, EventArgs e)
        {
            Afficher("Unload");
        }

        private void Page_AbortTransaction(object sender, EventArgs e)
        {
            Afficher("AbortTransaction");
        }

        private void Page_CommitTransaction(object sender, EventArgs e)
        {
            Afficher("CommitTransaction");
        }

        private void Page_DataBinding(object sender, EventArgs e)
        {
            Afficher("DataBinding");
        }

        private void txtNom_Init(object sender, EventArgs e)
        {
            Afficher("txtNom_Init");
        }

        private void txtNom_Load(object sender, EventArgs e)
        {
            Afficher("txtNom_Load");
        }

        private void txtNom_PreRender(object sender, EventArgs e)
        {
            Afficher("txtNom_PreRender");
        }


    }
}