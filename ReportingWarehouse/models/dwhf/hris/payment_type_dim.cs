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
    
    public partial class payment_type_dim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public payment_type_dim()
        {
            this.employee_timesheet_fact = new HashSet<employee_timesheet_fact>();
            this.employee_working_hours_fact = new HashSet<employee_working_hours_fact>();
        }
    
        public int payment_type_key { get; set; }
        public Nullable<int> pay_component_def { get; set; }
        public Nullable<decimal> pay_component_ref { get; set; }
        public string pay_component_description { get; set; }
        public string change_reason_code { get; set; }
        public string change_reason_description { get; set; }
        public Nullable<System.DateTime> row_effective_date { get; set; }
        public Nullable<System.DateTime> row_expiration_date { get; set; }
        public string current_row_indicator { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_timesheet_fact> employee_timesheet_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_working_hours_fact> employee_working_hours_fact { get; set; }
    }
}
