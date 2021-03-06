﻿-- creating table 'hrhmn_empl_job_ctl'
create table extract.[hrhmn_empl_job_ctl] (
    [id_number] int  not null,
    [effective_date] datetime  not null,
    [job_dtl_title] varchar(50)  null,
    [reason_type] varchar(10)  null,
    [reason_descr] varchar(50)  null,
    [company_code] int  null,
    [date_hired] datetime  null,
    [probatn_period_end] datetime  null,
    [next_review_date] datetime  null,
    [empl_type_code] varchar(10)  null,
    [empl_class] varchar(10)  null,
    [holiday_ctgy] varchar(10)  null,
    [pay_basis_code] varchar(10)  null,
    [pay_doc_type] varchar(1)  null,
    [pay_period_type] varchar(10)  null,
    [pay_location] varchar(10)  null,
    [payadv_trans_meth] varchar(10)  null,
    [payadv_address] varchar(1)  null,
    [techone_fld1] varchar(40)  null,
    [techone_fld2] varchar(40)  null,
    [techone_fld3] varchar(40)  null,
    [techone_fld4] varchar(40)  null,
    [row_status] int  null,
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
    [end_date] datetime  null,
    [increment_ind] varchar(1)  null,
    [payroll_tax_state] varchar(10)  null,
    [workcover_tax_state] varchar(10)  null,
    [region_code] varchar(20)  null,
    [id_class] varchar(10)  null,
    [tlt_mgt_system_code] varchar(10)  null,
    [apprs_cycle_code] varchar(10)  null,
    [probatn_generate_ind] varchar(1)  null,
    [probatn_position_profile] varchar(10)  null,
    [probatn_period_start] datetime  null,
    [probatn_emplplan_id] int  null,
    [probatn_comp_ind] varchar(1)  null,
    [probatn_otcm_code] varchar(10)  null,
    [probatn_tlt_mgt_system] varchar(10)  null,
    [probatn_apprs_meth_code] varchar(10)  null
);
go