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
    
    public partial class debtor_fact
    {
        public int debtor_key { get; set; }
        public int account_key { get; set; }
        public int cost_centre_key { get; set; }
        public int portfolio_key { get; set; }
        public int service_stream_key { get; set; }
        public int program_key { get; set; }
        public int accounting_period_key { get; set; }
        public int date_received_key { get; set; }
        public int date_processed_key { get; set; }
        public int ledger_key { get; set; }
        public string reference { get; set; }
        public Nullable<decimal> amount { get; set; }
    
        public virtual account_dim account_dim { get; set; }
        public virtual accounting_period_dim accounting_period_dim { get; set; }
        public virtual cost_centre_dim cost_centre_dim { get; set; }
        public virtual date_dim date_dim { get; set; }
        public virtual date_dim date_dim1 { get; set; }
        public virtual ledger_dim ledger_dim { get; set; }
        public virtual portfolio_dim portfolio_dim { get; set; }
        public virtual program_dim program_dim { get; set; }
        public virtual service_stream_dim service_stream_dim { get; set; }
    }
}
