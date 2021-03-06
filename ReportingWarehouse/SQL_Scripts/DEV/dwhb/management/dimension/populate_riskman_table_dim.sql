﻿-------------------
-- DEV environment
-------------------

-- schema: riskman source data
INSERT INTO [management].[TABLE_DIM] VALUES ('angcare_ifr', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('ch_ifr', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_batch', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_data', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_record', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('incidentclassificationsifr', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('incidentsforreview', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('ben_ifr', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('incnotif_ifr', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('userprofile', 'riskman', 'dbo', 'Riskman', 'ted');
INSERT INTO [management].[TABLE_DIM] VALUES ('vwsf_preventativecorrectiveaction', 'riskman', 'dbo', 'Riskman', 'ted');
insert into management.table_dim values('tblContributingFactors_IFR','riskman','dbo','Riskman','ted')
------ tables for Feedback module
insert into management.table_dim values('FBDetail_IFR','riskman','dbo','Riskman','ted')
insert into management.table_dim values('FBComplainant_IFR','riskman','dbo','Riskman','ted')
insert into management.table_dim values('FBInvestigation_IFR','riskman','dbo','Riskman','ted')
insert into management.table_dim values('FBDetail1_IFR','riskman','dbo','Riskman','ted')
insert into management.table_dim values('FBIssue_IFR','riskman','dbo','Riskman','ted')


-- schema: replicated riskman tables
INSERT INTO [management].[TABLE_DIM] VALUES ('angcare_ifr', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ch_ifr', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_batch', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_data', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('frm_record', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incidentclassificationsifr', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incidentsforreview', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ben_ifr', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incnotif_ifr', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('userprofile', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('vwsf_preventativecorrectiveaction', 'dwh', 'extract_riskman', 'dwhb', 'devsql-1');
insert into management.table_dim values('tblContributingFactors_IFR','dwh','extract_riskman','dwhb','devsql-1')
------ tables for feedback module
insert into management.table_dim values('FBDetail_IFR','dwh','extract_riskman','dwhb','devsql-1')
insert into management.table_dim values('FBComplainant_IFR','dwh','extract_riskman','dwhb','devsql-1')
insert into management.table_dim values('FBInvestigation_IFR','dwh','extract_riskman','dwhb','devsql-1')
insert into management.table_dim values('FBDetail1_IFR','dwh','extract_riskman','dwhb','devsql-1')
insert into management.table_dim values('FBIssue_IFR','dwh','extract_riskman','dwhb','devsql-1')


-- schema: conform_riskman (dwhb)
INSERT INTO [management].[TABLE_DIM] VALUES ('action_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('employee_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_action_fact', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_fact', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_history_fact', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_type_fact', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_type_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('person_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'conform_riskman', 'dwhb', 'devsql-1');
insert into management.table_dim values('ContributingFactors_fact','dwh','conform_riskman','dwhb','devsql-1')
------ tables for feedback module
insert into management.table_dim values('feedback_fact','dwh','conform_riskman','dwhb','devsql-1')
insert into management.table_dim values('Feedback_issue_Bridge','dwh','conform_riskman','dwhb','devsql-1')
insert into management.table_dim values('Feedback_issue_fact','dwh','conform_riskman','dwhb','devsql-1')


-- schema: riskman (dwhf)
INSERT INTO [management].[TABLE_DIM] VALUES ('action_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('employee_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_action_fact', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_fact', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_history_fact', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_type_fact', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('incident_type_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('person_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'riskman', 'dwhf_riskman', 'devsql-1');
insert into management.table_dim values('ContributingFactors_fact','dwh','riskman','dwhf_riskman','devsql-1')
------ tables for feedback module
insert into management.table_dim values('feedback_fact','dwh','riskman','dwhf_riskman','devsql-1')
insert into management.table_dim values('Feedback_issue_Bridge','dwh','riskman','dwhf_riskman','devsql-1')
insert into management.table_dim values('Feedback_issue_fact','dwh','riskman','dwhf_riskman','devsql-1')
