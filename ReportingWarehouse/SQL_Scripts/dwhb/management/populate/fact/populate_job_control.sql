
-- extract
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_CTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_CTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_ITM' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_ITM' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_LVL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRSYS_HIERARCH_LVL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_JOB_CTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_JOB_CTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_JOB_POS' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_JOB_POS' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_REF' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_REF' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_TERM_DTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPL_TERM_DTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_QUAL_REF' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_QUAL_REF' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPLQUAL_DTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRHMN_EMPLQUAL_DTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_SUMMACCR' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_SUMMACCR' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_DTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_DTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_SUMMPMNT' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_PAYITEMS_SUMMPMNT' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_MASTER' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_MASTER' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_LEAVE_DTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_LEAVE_DTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPAY_LEAVE_CTL' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPAY_LEAVE_CTL' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPCM_PAYCOMP_DEF' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPCM_PAYCOMP_DEF' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'HRPCM_PAYCOMP_REF' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'HRPCM_PAYCOMP_REF' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);
--
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'F1_USER_PROFILE' and [schema] = 'dbo' and [system] = 'HRIS-T1'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'F1_USER_PROFILE' and [schema] = 'extract' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system')
,1);

---------------------------------------
-- delivery: facts
---------------------------------------
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_RECRUITMENT_FACT' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_RECRUITMENT_FACT' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,1);

---------------------------------------
-- delivery: dimensions
---------------------------------------

-- accreditation_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'ACCREDITATION_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'ACCREDITATION_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- employee_benefit_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_BENEFIT_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_BENEFIT_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- employee_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- employee_payment_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_PAYMENT_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_PAYMENT_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- item_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'ITEM_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'ITEM_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- leave_type_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'LEAVE_TYPE_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'LEAVE_TYPE_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- organisation_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'ORGANISATION_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'ORGANISATION_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- portfolio_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'PORTFOLIO_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'PORTFOLIO_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- position_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'POSITION_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'POSITION_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- program_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'PROGRAM_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'PROGRAM_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- salary_code_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'SALARY_CODE_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'SALARY_CODE_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);
-- service_stream_dim
insert into [management].[job_control] values (
(select table_key from [management].[table_dim] where table_name = 'SERVICE_STREAM_DIM' and [schema] = 'conform'), 
'YES', 
(select table_key from [management].[table_dim] where table_name = 'SERVICE_STREAM_DIM' and [schema] = 'hris'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
,2);