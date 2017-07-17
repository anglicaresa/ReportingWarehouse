//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhb.conform_comcare
{
    using System;
    using System.Collections.Generic;
    
    public partial class responsible_party_dim
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public responsible_party_dim()
        {
            this.customer_transactions_fact = new HashSet<customer_transactions_fact>();
        }
    
        public int responsible_party_key { get; set; }
        public Nullable<int> client_id { get; set; }
        public string title { get; set; }
        public string given_name { get; set; }
        public string preferred_name { get; set; }
        public string family_name { get; set; }
        public Nullable<System.DateTime> date_of_birth { get; set; }
        public string gender { get; set; }
        public string residential_address_line1 { get; set; }
        public string residential_address_line2 { get; set; }
        public string residential_city { get; set; }
        public string residential_state { get; set; }
        public string residential_post_code { get; set; }
        public string business_address_line1 { get; set; }
        public string business_address_line2 { get; set; }
        public string business_city { get; set; }
        public string business_state { get; set; }
        public string business_post_code { get; set; }
        public string mailing_address_line1 { get; set; }
        public string mailing_address_line2 { get; set; }
        public string mailing_city { get; set; }
        public string mailing_state { get; set; }
        public string mailing_post_code { get; set; }
        public string billing_address_line1 { get; set; }
        public string billing_address_line2 { get; set; }
        public string billing_city { get; set; }
        public string billing_state { get; set; }
        public string billing_post_code { get; set; }
        public Nullable<decimal> amount_transferred_in { get; set; }
        public Nullable<decimal> amount_transferred_out { get; set; }
        public Nullable<decimal> amount_transferred_in_client { get; set; }
        public Nullable<decimal> amount_transferred_out_client { get; set; }
        public Nullable<System.DateTime> effective_from_date { get; set; }
        public Nullable<System.DateTime> effective_to_date { get; set; }
        public string change_reason_code { get; set; }
        public string change_reason_description { get; set; }
        public Nullable<System.DateTime> row_effective_date { get; set; }
        public Nullable<System.DateTime> row_expiration_date { get; set; }
        public string current_row_indicator { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<customer_transactions_fact> customer_transactions_fact { get; set; }
    }
}
