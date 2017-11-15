-------------------
-- DEV environment
-------------------

-- schema: t1 source tables
-- none at the moment (uses existing T1 tables from HRIS)

	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_LDG_ACC_TRANS','HRIS-T1','dbo','[appsql-4\prod].finprod','AZ-SQLBI01');
	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_CHART_ACCT','HRIS-T1','dbo','[appsql-4\prod].finprod','AZ-SQLBI01');
	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_CHART_ACC_USF','HRIS-T1','dbo','[appsql-4\prod].finprod','AZ-SQLBI01');

-- schema: extracted t1 tables
-- none at the moment (uses existing T1 tables from HRIS)


	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_LDG_ACC_TRANS','dwh','extract','dwhb','AZ-SQLBI01');
	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_CHART_ACCT','dwh','extract','dwhb','AZ-SQLBI01');
	INSERT INTO [management].[TABLE_DIM] VALUES ('GLF_CHART_ACC_USF','dwh','extract','dwhb','AZ-SQLBI01');



-- schema: conform_finance tables
INSERT INTO [management].[TABLE_DIM] VALUES ('account_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('accounting_period_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('cost_centre_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('ledger_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');

INSERT INTO [management].[TABLE_DIM] VALUES ('debtor_fact', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');

-- schema: finance tables
INSERT INTO [management].[TABLE_DIM] VALUES ('account_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('accounting_period_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('cost_centre_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('ledger_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');

INSERT INTO [management].[TABLE_DIM] VALUES ('debtor_fact', 'dwh', 'finance', 'dwhb', 'AZ-SQLBI01');