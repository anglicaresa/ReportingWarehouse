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
    
    public partial class employee_temp
    {
        public int employee_temp_key { get; set; }
        public Nullable<int> employee_key { get; set; }
        public string id_number { get; set; }
        public string organisation_code { get; set; }
        public Nullable<int> organisation_key { get; set; }
        public string portfolio_code { get; set; }
        public Nullable<int> portfolio_key { get; set; }
        public string service_stream_code { get; set; }
        public Nullable<int> service_stream_key { get; set; }
        public string program_code { get; set; }
        public Nullable<int> program_key { get; set; }
        public string position_code { get; set; }
        public Nullable<int> position_key { get; set; }
        public Nullable<System.DateTime> hired_date { get; set; }
        public Nullable<System.DateTime> probation_end_date { get; set; }
        public Nullable<System.DateTime> position_start_date { get; set; }
        public Nullable<System.DateTime> termination_date { get; set; }
        public string primary_position_flag { get; set; }
        public string new_position_flag { get; set; }
        public string empl_cond_grade { get; set; }
        public string empl_cond_level { get; set; }
        public string job_pos_title { get; set; }
    }
}
