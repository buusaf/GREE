//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MP.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserProfile
    {
        public UserProfile()
        {
            this.MonthlySallary = new HashSet<MonthlySallary>();
            this.MonthlyPayment = new HashSet<MonthlyPayment>();
        }
    
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool Active { get; set; }
    
        public virtual ICollection<MonthlySallary> MonthlySallary { get; set; }
        public virtual ICollection<MonthlyPayment> MonthlyPayment { get; set; }
        public virtual AspNetUsers AspNetUsers { get; set; }
    }
}
