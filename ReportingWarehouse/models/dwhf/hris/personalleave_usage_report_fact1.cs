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
    
    public partial class personalleave_usage_report_fact1
    {
        public int personalleave_usage_report_key { get; set; }
        public int month_date_key { get; set; }
        public Nullable<int> part_time_emp_all { get; set; }
        public Nullable<int> full_time_emp_all { get; set; }
        public Nullable<int> part_time_emp_take { get; set; }
        public Nullable<int> full_time_emp_take_ { get; set; }
        public Nullable<decimal> part_time_hours { get; set; }
        public Nullable<decimal> full_time_hours { get; set; }
        public Nullable<decimal> year_avg_days { get; set; }
        public Nullable<decimal> month_days { get; set; }
        public Nullable<decimal> last_year_month_days { get; set; }
    }
}
