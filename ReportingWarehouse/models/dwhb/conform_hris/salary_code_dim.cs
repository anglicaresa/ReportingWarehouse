//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhb.conform_hris
{
    using System;
    using System.Collections.Generic;
    
    public partial class salary_code_dim
    {
        public int salary_code_key { get; set; }
        public string salary_code { get; set; }
        public string salary_code_description { get; set; }
        public Nullable<decimal> pay_rate { get; set; }
        public Nullable<decimal> min_salary { get; set; }
        public Nullable<decimal> max_salary { get; set; }
        public string ir_award { get; set; }
        public string increment_type { get; set; }
        public string change_reason_code { get; set; }
        public string change_reason_description { get; set; }
        public Nullable<System.DateTime> row_effective_date { get; set; }
        public Nullable<System.DateTime> row_expiration_date { get; set; }
        public string current_row_indicator { get; set; }
    }
}
