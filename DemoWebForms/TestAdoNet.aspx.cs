using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class TestAdoNet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Dim conn As New SqlConection("")
            SqlConnection conn = new SqlConnection(
                @"Data Source=(localdb)\msSqlLocalDb;" +
                "Initial Catalog=AdventureWorks2014;" +
                "Integrated Security=True");

            //Dim cmd As New SqlCommand("", conn)
            SqlCommand cmd = new SqlCommand(
                "SELECT ProductSubcategoryID, Name, ProductCategoryID " +
                " FROM Production.ProductSubcategory", conn);

            conn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lstSubCat.Items.Add(new ListItem(
                    dr["Name"].ToString(),
                    dr["ProductSubcategoryID"].ToString()));
            }

            dr.Close();
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Dim conn As New SqlConection("")
            using (SqlConnection conn = new SqlConnection(
              ConfigurationManager.ConnectionStrings["Aw2014Cs"].ConnectionString))
            {

                //Dim cmd As New SqlCommand("", conn)
                SqlCommand cmd = new SqlCommand(
                    "SELECT ProductSubcategoryID, Name, ProductCategoryID " +
                    " FROM Production.ProductSubcategory", conn);

                conn.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    lstSubCat.DataSource = dr;
                    lstSubCat.DataTextField = "Name";
                    lstSubCat.DataValueField = "ProductSubcategoryID";
                    lstSubCat.DataBind();
                }
            }

        }

    }
}