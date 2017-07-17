-- creating table 'hrpay_lve_tkn_dtl'
create table [extract].[hrpay_lve_tkn_dtl] (
    [source_ind] varchar(3)  not null,
    [id_number] int  not null,
    [document_date] datetime  not null,
    [document_type] varchar(10)  not null,
    [document_nbr] int  not null,
    [sequence_nbr] int  not null,
    [item_nbr] int  not null,
    [pay_component_ref] decimal(10,4)  not null,
    [pay_component_def] int  null,
    [company_code] int  null,
    [accrl_pay_comp_ref] decimal(15,6)  not null,
    [number_units] decimal(18,6)  null,
    [unit_type] varchar(10)  null,
    [processed_pay_ind] varchar(1)  null,
    [processed_tms_ind] varchar(1)  null,
    [neg_accr_action] varchar(1)  null,
    [exceeded_units] decimal(18,6)  null,
    [techone_fld1] varchar(40)  null,
    [techone_fld2] varchar(40)  null,
    [techone_fld3] varchar(40)  null,
    [techone_fld4] varchar(40)  null,
    [cruser] varchar(14)  null,
    [crdatei] datetime  null,
    [crtimei] int  null,
    [crterm] varchar(10)  null,
    [crwindow] varchar(8)  null,
    [last_mod_user] varchar(14)  null,
    [last_mod_datei] datetime  null,
    [last_mod_timei] int  null,
    [last_mod_term] varchar(10)  null,
    [last_mod_window] varchar(8)  null,
    [vers] int  null,
    [auth_override] decimal(18,6)  null
);
go

-- creating primary key on [source_ind], [id_number], [document_date], [document_type], [document_nbr], [sequence_nbr], [item_nbr], [pay_component_ref], [accrl_pay_comp_ref] in table 'hrpay_lve_tkn_dtl'
alter table [extract].[hrpay_lve_tkn_dtl]
add constraint [pk_hrpay_lve_tkn_dtl]
    primary key clustered ([source_ind], [id_number], [document_date], [document_type], [document_nbr], [sequence_nbr], [item_nbr], [pay_component_ref], [accrl_pay_comp_ref] asc);
go