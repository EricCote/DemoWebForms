using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace DemoWebForms.Models
{
    public class InfolettreCtx:DbContext
    {
        public InfolettreCtx():base("Name=Infolettre")
        {

        }

        public DbSet<Abonnement> Abonnements { get; set; }

    }
}