-------------------
-- DEV environment
-------------------
-- schema: replicated comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('activity_work_table', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('address', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('client', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction_type', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_client_contract', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('period_of_residency', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('person', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider_contract', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('pt_program', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('state', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('suburb', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('task_type', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('indirect_activity_type', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account_type', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billed_to', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billing', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_cb_split', 'comcare', 'dbo', 'ComCarePROD', 'appsql-3');

-- schema: extract_comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('address', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('activity_work_table', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction_type', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_transaction', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_client_contract', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('client', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('pt_program', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('person', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('provider_contract', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('period_of_residency', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('suburb', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('state', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('task_type', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('indirect_activity_type', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fc_account_type', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billed_to', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_contract_billing', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('fb_client_cb_split', 'dwh', 'extract_comcare', 'dwhb', 'devsql-1');

-- conform comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_dim', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('transaction_type_dim', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_transactions_fact', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('responsible_party_dim', 'dwh', 'conform_comcare', 'dwhb', 'devsql-1');

-- data mart comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_dim', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('date_dim', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('transaction_type_dim', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('program_dim', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('customer_transactions_fact', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('responsible_party_dim', 'dwh', 'comcare', 'dwhf_comcare', 'devsql-1');


--added by Frank 27-11-2017
INSERT INTO [management].[TABLE_DIM] VALUES ('FB_Client_CB_Transaction','comcare','dbo','comcareprod','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('FC_Funder_Contract','comcare','dbo','comcareprod','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('actual_service','comcare','dbo','comcareprod','appsql-3');
-- schema: extract_comcare
INSERT INTO [management].[TABLE_DIM] VALUES ('FB_Client_CB_Transaction','dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('FC_Funder_Contract','dwh', 'extract_comcare', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('actual_service','dwh', 'extract_comcare', 'dwhb', 'devsql-1');

--FC_Funder_Contract

DECLARE @t_table varchar(max)= 'actual_service';

    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'dbo' and [system] = 'comcare'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'extract_comcare' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');
