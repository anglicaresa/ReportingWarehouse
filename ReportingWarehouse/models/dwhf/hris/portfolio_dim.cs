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
    
    public partial class portfolio_dim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public portfolio_dim()
        {
            this.employee_accreditation_fact = new HashSet<employee_accreditation_fact>();
            this.employee_contract_fact = new HashSet<employee_contract_fact>();
            this.employee_leave_booked_fact = new HashSet<employee_leave_booked_fact>();
            this.employee_leave_booked_txn_fact = new HashSet<employee_leave_booked_txn_fact>();
            this.employee_leave_snapshot_fact = new HashSet<employee_leave_snapshot_fact>();
            this.employee_leave_taken_fact = new HashSet<employee_leave_taken_fact>();
            this.employee_payment_fact = new HashSet<employee_payment_fact>();
            this.employee_position_fact = new HashSet<employee_position_fact>();
            this.employee_profile_fact = new HashSet<employee_profile_fact>();
            this.employee_recruitment_fact = new HashSet<employee_recruitment_fact>();
            this.employee_renumeration_fact = new HashSet<employee_renumeration_fact>();
            this.employee_termination_fact = new HashSet<employee_termination_fact>();
            this.employee_timesheet_fact = new HashSet<employee_timesheet_fact>();
            this.work_pattern_fact = new HashSet<work_pattern_fact>();
            this.employee_working_hours_fact = new HashSet<employee_working_hours_fact>();
            this.timesheet_validation_fact = new HashSet<timesheet_validation_fact>();
        }
    
        public int portfolio_key { get; set; }
        public string portfolio_name { get; set; }
        public string portfolio_code { get; set; }
        public string change_reason_code { get; set; }
        public string change_reason_description { get; set; }
        public Nullable<System.DateTime> row_effective_date { get; set; }
        public Nullable<System.DateTime> row_expiration_date { get; set; }
        public string current_row_indicator { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_accreditation_fact> employee_accreditation_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_contract_fact> employee_contract_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_leave_booked_fact> employee_leave_booked_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_leave_booked_txn_fact> employee_leave_booked_txn_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_leave_snapshot_fact> employee_leave_snapshot_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_leave_taken_fact> employee_leave_taken_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_payment_fact> employee_payment_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_position_fact> employee_position_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_profile_fact> employee_profile_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_recruitment_fact> employee_recruitment_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_renumeration_fact> employee_renumeration_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_termination_fact> employee_termination_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_timesheet_fact> employee_timesheet_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<work_pattern_fact> work_pattern_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<employee_working_hours_fact> employee_working_hours_fact { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<timesheet_validation_fact> timesheet_validation_fact { get; set; }
    }
}
