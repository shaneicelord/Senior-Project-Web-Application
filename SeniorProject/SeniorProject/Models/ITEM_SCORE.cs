//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SeniorProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ITEM_SCORE
    {
        public int AssessmentID { get; set; }
        public int ItemID { get; set; }
        public int Score { get; set; }
    
        public virtual ASSESSMENT ASSESSMENT { get; set; }
        public virtual CANS_ITEMS CANS_ITEMS { get; set; }
    }
}
