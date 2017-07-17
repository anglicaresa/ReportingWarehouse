if object_id(n'[dbo].[hrpcm_paycomp_ref]', 'u') is not null
    drop table [dbo].[hrpcm_paycomp_ref];
go
if object_id(n'[dbo].[f1_user_profile]', 'u') is not null
    drop table [dbo].[f1_user_profile];
go

if object_id(n'[extract].[hrhmn_empl_job_ctl]', 'u') is not null
    drop table [extract].[hrhmn_empl_job_ctl];
go
if object_id(n'[extract].[hrhmn_empl_job_pos]', 'u') is not null
    drop table [extract].[hrhmn_empl_job_pos];
go
if object_id(n'[extract].[hrhmn_empl_ref]', 'u') is not null
    drop table [extract].[hrhmn_empl_ref];
go
if object_id(n'[extract].[hrhmn_emplqual_dtl]', 'u') is not null
    drop table [extract].[hrhmn_emplqual_dtl];
go
if object_id(n'[extract].[hrhmn_emplterm_dtl]', 'u') is not null
    drop table [extract].[hrhmn_emplterm_dtl];
go
if object_id(n'[extract].[hrhmn_qual_ref]', 'u') is not null
    drop table [extract].[hrhmn_qual_ref];
go
if object_id(n'[extract].[hrpay_leave_ctl]', 'u') is not null
    drop table [extract].[hrpay_leave_ctl];
go
if object_id(n'[extract].[hrpay_leave_dtl]', 'u') is not null
    drop table [extract].[hrpay_leave_dtl];
go
if object_id(n'[extract].[hrpay_master_ctl]', 'u') is not null
    drop table [extract].[hrpay_master_ctl];
go
if object_id(n'[extract].[hrpay_payitems_dtl]', 'u') is not null
    drop table [extract].[hrpay_payitems_dtl];
go
if object_id(n'[extract].[hrpay_payitems_summaccr]', 'u') is not null
    drop table [extract].[hrpay_payitems_summaccr];
go
if object_id(n'[extract].[hrpay_payitems_summpmnt]', 'u') is not null
    drop table [extract].[hrpay_payitems_summpmnt];
go
if object_id(n'[extract].[hrpcm_paycomp_def]', 'u') is not null
    drop table [extract].[hrpcm_paycomp_def];
go
if object_id(n'[extract].[hrsys_hierarch_ctl]', 'u') is not null
    drop table [extract].[hrsys_hierarch_ctl];
go
if object_id(n'[extract].[hrsys_hierarch_itm]', 'u') is not null
    drop table [extract].[hrsys_hierarch_itm];
go
if object_id(n'[extract].[hrsys_hierarch_lvl]', 'u') is not null
    drop table [extract].[hrsys_hierarch_lvl];
go