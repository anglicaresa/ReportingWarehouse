//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhb.conform_finance
{
    using System;
    using System.Collections.Generic;
    
    public partial class accounting_period_dim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public accounting_period_dim()
        {
            this.debtor_fact = new HashSet<debtor_fact>();
        }
    
        public int accounting_period_key { get; set; }
        public Nullable<int> period_no { get; set; }
        public Nullable<int> quarter { get; set; }
        public string description { get; set; }
        public Nullable<int> fiscal_year { get; set; }
        public string change_reason_code { get; set; }
        public string change_reason_description { get; set; }
        public Nullable<System.DateTime> row_effective_date { get; set; }
        public Nullable<System.DateTime> row_expiration_date { get; set; }
        public string current_row_indicator { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<debtor_fact> debtor_fact { get; set; }
    }
}
