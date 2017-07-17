------------------------------
-- HRIS column checks
------------------------------

-- employee street_address_line1 null check
insert into [management].[quality_check_fact] values ((select table_key from [management].[table_dim] where table_name = 'EMPLOYEE_DIM' and [schema] = 'conform' and [system] = 'dwh'),'Kate Henig','street_address_line1','Null check','select employee_id from conform.employee_dim where stree_address_line1 = null','column','Employee street address line 1 is null','tag','on');