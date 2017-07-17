-- creating table 'hrpcm_paycomp_def'
create table [extract].[hrpcm_paycomp_def] (
    [pay_component_def1] varchar(10)  null,
    [pay_component_desc] varchar(50)  null,
    [payment_deduction] varchar(1)  null,
    [taxable] varchar(1)  null,
    [calc_days_worked] varchar(1)  null,
    [autoinclude] varchar(1)  null,
    [row_status] int  null,
    [closed_user] varchar(14)  null,
    [closed_date] datetime  null,
    [closed_time] int  null,
    [closed_term] varchar(10)  null,
    [closed_window] varchar(8)  null,
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
    [pay_component_def] int  not null,
    [posting_type_ind] varchar(1)  null,
    [use_in_other_pos] varchar(1)  null,
    [default_to_primary] varchar(1)  null
);
go

-- creating primary key on [pay_component_def] in table 'hrpcm_paycomp_def'
alter table [extract].[hrpcm_paycomp_def]
add constraint [pk_hrpcm_paycomp_def]
    primary key clustered ([pay_component_def] asc);
go