using DemoWebForms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class ProvinceFiltre : System.Web.UI.UserControl
    {
        AW db = new AW();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                var listePays = db.Countries.ToList();
                drpPays.DataSource = listePays;
                drpPays.DataTextField = "Name";
                drpPays.DataValueField = "CountryRegionCode";
                drpPays.DataBind();
                drpPays.SelectedValue = "CA";

                PopulateProvince();
            }

        }

        private void PopulateProvince()
        {
            var listeProvince = db.Provinces.Where(
                   p => p.CountryRegionCode == drpPays.SelectedValue)
                            .ToList();
            drpProvince.DataSource = listeProvince;
            drpProvince.DataTextField = "Name";
            drpProvince.DataValueField = "StateProvinceCode";
            drpProvince.DataBind();
            if (drpPays.SelectedValue == "CA")
            {
                drpProvince.SelectedValue = "QC";
            }
        }

        protected void drpPays_SelectedIndexChanged(object sender, EventArgs e)
        {
            PopulateProvince();
        }


        public string Pays {
            get { return drpPays.SelectedValue; }
        }

        public string Province
        {
            get { return drpProvince.SelectedValue; }
        }

    }
}