using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace SeniorProject.Models
{
    public class CANScalculations
    {

        
        public int ID { get; set; }

        [Display(Name = "Patient ID")]
        public int patientID { get; set; }

        public int Family { get; set; }

        [Display(Name = "Living Situation")]
        public int LivingSituation { get; set; }

        [Display(Name = "Social Functioning")]
        public int SocialFunctioning { get; set; }

        
        public int Recreatrional { get; set; }

        [Display(Name = "Job Functioning")]
        public int JobFunctioning { get; set; }

        public int Developmental { get; set; }

        public int Legal { get; set; }

        public int Medical { get; set; }

        public int Physical { get; set; }

        [Display(Name = "Report Number")]
        public int ReportNumber { get; set; }

        public int totalNumber { get; set; }

        public int Progress { get; set; }


    }

    public class CANScalculationsDBContext : DbContext
    {
        public DbSet<CANScalculations> CANScalculationss { get; set; }
    }

}