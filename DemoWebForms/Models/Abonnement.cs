using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DemoWebForms.Models
{
    public class Abonnement
    {
        public int AbonnementID { get; set; }
        [Required]
        public string Nom { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Courriel { get; set; }
        [DataType(DataType.Date)]
        public DateTime DateDebut { get; set; }
        public Boolean Actif { get; set; }

        public Abonnement()
        {
            Actif = true;
            DateDebut = DateTime.Now;
        }
    }
}