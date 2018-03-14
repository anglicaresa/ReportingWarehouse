﻿------------
-- EXTRACT
------------
use dwhb;
GO
-- riskman -> DWHB.extract_riskman 
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'angcare_ifr' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'angcare_ifr' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'ch_ifr' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'ch_ifr' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'frm_batch' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'frm_batch' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'frm_data' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'frm_data' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'frm_record' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'frm_record' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incidentclassificationsifr' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incidentclassificationsifr' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incidentsforreview' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incidentsforreview' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'ben_ifr' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'ben_ifr' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incnotif_ifr' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incnotif_ifr' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'userprofile' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'userprofile' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'vwsf_preventativecorrectiveaction' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'vwsf_preventativecorrectiveaction' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'FBDetail_IFR' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'FBDetail_IFR' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'FBComplainant_IFR' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'FBComplainant_IFR' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'FBInvestigation_IFR' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'FBInvestigation_IFR' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'FBDetail1_IFR' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'FBDetail1_IFR' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'FBIssue_IFR' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'FBIssue_IFR' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'vwReg_RMFeedback' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'vwReg_RMFeedback' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'vwSF_FBIssue' and [schema] = 'dbo' and [system] = 'riskman'), 'YES', (select table_key from [management].[table_dim] where table_name = 'vwSF_FBIssue' and [schema] = 'extract_riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');


-------------
-- DELIVERY
-------------
-- DWHB.conform_riskman -> DWHF.riskman (Dimensions)
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'action_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'action_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'date_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'date_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'employee_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'employee_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_type_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_type_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'person_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'person_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'portfolio_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'portfolio_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'program_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'program_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'service_stream_dim' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'service_stream_dim' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');

-- DWHB.conform_riskman -> DWHF.riskman (Facts)
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_history_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_history_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_action_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_action_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_type_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_type_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'incident_type_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'incident_type_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'ContributingFactors_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'ContributingFactors_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'feedback_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'feedback_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'Feedback_issue_fact' and [schema] = 'conform_riskman' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'Feedback_issue_fact' and [schema] = 'riskman' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),3,'daily');
