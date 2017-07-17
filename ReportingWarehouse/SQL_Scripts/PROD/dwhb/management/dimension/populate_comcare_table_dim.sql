-------------------
-- DEV environment
-------------------
-- schema: replicated comcare  **** THIS NEEDS CHANGING FOR PROD ****
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction_type', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_client_contract', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('client', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('pt_program', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('person', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('period_of_residency', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('address', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('suburb', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('state', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('activity_work_table', 'comcare', 'dbo', 'comcareprod', 'appsql-3'); -- already inserted 18.04.17
INSERT INTO [management].[TABLE_DIM] VALUES ('provider', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider_contract', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('task_type', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('indirect_activty_type', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account_type', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billed_to', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billing', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_cb_split', 'comcare', 'dbo', 'xxxxxxx', 'xxxxxxx');

-- schema: extract_comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction_type', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_client_contract', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('client', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('pt_program', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('person', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('period_of_residency', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('address', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('suburb', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('state', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('activity_work_table', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01'); -- already inserted 18.04.17
INSERT INTO [management].[TABLE_DIM] VALUES ('provider', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider_contract', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('task_type', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('indirect_activity_type', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account_type', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billed_to', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billed', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_cb_split', 'dwh', 'extract_comcare', 'dwhb', 'az-sqlbi01');

-- conform comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_dim', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('transaction_type_dim', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_transactions_fact', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('responsible_party_dim', 'dwh', 'conform_comcare', 'dwhb', 'az-sqlbi01');

-- data mart comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_dim', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('transaction_type_dim', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_transactions_fact', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
INSERT INTO [management].[TABLE_DIM] VALUES ('responsible_party_dim', 'dwh', 'conform', 'dwhf_comcare', 'az-sqlbi01');
