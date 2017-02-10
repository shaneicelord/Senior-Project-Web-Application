using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace SeniorProject.Models
{
    public class Question
    {




        public int ID { get; set; }

        [StringLength(200, MinimumLength = 3)]
        [Display(Name = "Add Question")]
        public string Qstns { get; set; }


    }

    public class QuestionDBContext : DbContext
    {
        public DbSet<Question> Questions { get; set; }
    }
}