-------------------
-- DEV environment
-------------------

-- schema: t1 source tables
-- none at the moment (uses existing T1 tables from HRIS)

-- schema: extracted t1 tables
-- none at the moment (uses existing T1 tables from HRIS)

-- schema: conform_finance tables
INSERT INTO [management].[TABLE_DIM] VALUES ('account_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('accounting_period_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('cost_centre_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ledger_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');

INSERT INTO [management].[TABLE_DIM] VALUES ('debtor_fact', 'dwh', 'conform_finance', 'dwhb', 'devsql-1');

-- schema: finance tables
INSERT INTO [management].[TABLE_DIM] VALUES ('account_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('accounting_period_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('cost_centre_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ledger_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('portfolio_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('service_stream_dim', 'dwh', 'finance', 'dwhb', 'devsql-1');

INSERT INTO [management].[TABLE_DIM] VALUES ('debtor_fact', 'dwh', 'finance', 'dwhb', 'devsql-1');