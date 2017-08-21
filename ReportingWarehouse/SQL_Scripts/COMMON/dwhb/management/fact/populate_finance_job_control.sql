﻿
-- DWHB.conform_finance -> DWHF.finance (Dimensions)
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'account_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'account_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'accounting_period_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'accounting_period_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'cost_centre_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'cost_centre_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'date_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'date_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'ledger_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'ledger_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'portfolio_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'portfolio_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'program_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'program_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'service_stream_dim' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'service_stream_dim' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');


insert into [management].[job_control] values 
((select table_key from [management].[table_dim] where table_name = 'employee_dim' and [schema] = 'conform_finance' and [system] = 'dwh'),
 'YES', 
 (select table_key from [management].[table_dim] where table_name = 'employee_dim' and [schema] = 'finance' and [system] = 'dwh' and [database]='dwhf_finance'),
  (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),
  1,'daily');


insert into [management].[job_control] values 
((select table_key from [management].[table_dim] where table_name = 'position_dim' and [schema] = 'conform_finance' and [system] = 'dwh'),
 'YES', 
 (select table_key from [management].[table_dim] where table_name = 'position_dim' and [schema] = 'finance' and [system] = 'dwh'and [database]='dwhf_finance'),
  (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),
  1,'daily');

-- DWHB.conform_finance -> DWHF.finance (Facts)
insert into [management].[job_control] values ((select table_key from [management].[table_dim] where table_name = 'debtor_fact' and [schema] = 'conform_finance' and [system] = 'dwh'), 'YES', (select table_key from [management].[table_dim] where table_name = 'debtor_fact' and [schema] = 'finance' and [system] = 'dwh'), (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');

insert into [management].[job_control] values 
    ((select table_key from [management].[table_dim] where table_name = 'lsl_fact' and [schema] = 'conform_finance' and [system] = 'dwh'),
     'YES', 
     (select table_key from [management].[table_dim] where table_name = 'lsl_fact' and [schema] = 'finance' and [system] = 'dwh'), 
     (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system')
     ,2,'daily');

