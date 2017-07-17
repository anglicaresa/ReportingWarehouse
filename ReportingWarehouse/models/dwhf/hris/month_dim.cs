//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhf.hris
{
    using System;
    using System.Collections.Generic;
    
    public partial class month_dim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public month_dim()
        {
            this.labour_turnover_fact = new HashSet<labour_turnover_fact>();
            this.personalleave_usage_report_fact = new HashSet<personalleave_usage_report_fact>();
            this.personalleave_usage_report_fact1 = new HashSet<personalleave_usage_report_fact>();
        }
    
        public int month_key { get; set; }
        public string month_name { get; set; }
        public string month_number { get; set; }
        public string quarter_number { get; set; }
        public string quarter_name { get; set; }
        public string year { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<labour_turnover_fact> labour_turnover_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<personalleave_usage_report_fact> personalleave_usage_report_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<personalleave_usage_report_fact> personalleave_usage_report_fact1 { get; set; }
    }
}
