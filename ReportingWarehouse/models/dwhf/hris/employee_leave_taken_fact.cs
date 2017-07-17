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
    
    public partial class employee_leave_taken_fact
    {
        public int employee_leave_taken_key { get; set; }
        public int employee_key { get; set; }
        public int leave_date_key { get; set; }
        public int organisation_key { get; set; }
        public int portfolio_key { get; set; }
        public int service_stream_key { get; set; }
        public int program_key { get; set; }
        public int position_key { get; set; }
        public decimal leave_taken { get; set; }
        public int leave_type_key { get; set; }
        public int manager_key { get; set; }
        public int manager_position_key { get; set; }
        public string employee_type { get; set; }
        public string employee_class { get; set; }
    
        public virtual date_dim date_dim { get; set; }
        public virtual employee_dim employee_dim { get; set; }
        public virtual employee_dim employee_dim1 { get; set; }
        public virtual position_dim position_dim { get; set; }
        public virtual leave_type_dim leave_type_dim { get; set; }
        public virtual organisation_dim organisation_dim { get; set; }
        public virtual portfolio_dim portfolio_dim { get; set; }
        public virtual position_dim position_dim1 { get; set; }
        public virtual program_dim program_dim { get; set; }
        public virtual service_stream_dim service_stream_dim { get; set; }
    }
}
