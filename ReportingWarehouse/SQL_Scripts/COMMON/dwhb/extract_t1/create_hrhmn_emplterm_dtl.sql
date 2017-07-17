-- creating table 'hrhmn_emplterm_dtl'
create table [extract].[hrhmn_emplterm_dtl] (
    [id_number] int  not null,
    [term_code] varchar(10)  null,
    [term_reason] varchar(99)  null,
    [term_date] datetime  not null,
    [term_removal_date] datetime  null,
    [id_number_term_by] int  null,
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
    [gen_act_key] varchar(40)  null,
    [term_type] varchar(10)  null
);
go