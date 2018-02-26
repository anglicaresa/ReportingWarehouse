------------
-- EXTRACT
------------
use dwhb;
GO
-- kypera -> DWHB.extract_kypera
insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'Occupancies_Occupancy' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'Occupancies_Occupancy' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');

insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'Occupancies_RentCalculation_Arrears_EffectiveBalances' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'Occupancies_RentCalculation_Arrears_EffectiveBalances' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');


insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'PropertyStructure_Block' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'PropertyStructure_Block' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');


insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'PropertyStructure_BlockUnit' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'PropertyStructure_BlockUnit' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');


insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'PropertyStructure_District' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'PropertyStructure_District' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');



 
insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'PropertyStructure_scheme' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'PropertyStructure_scheme' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');

insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'PropertyStructure_Unit' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'PropertyStructure_Unit' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');


insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'Security_user' and [schema] = 'dbo' and [system] = 'kypera'), 'YES',
 (select table_key from [management].[table_dim] where table_name = 'Security_user' and [schema] = 'extract_kypera' and [system] = 'dwh'), 
 (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');

-------------
-- DELIVERY
-------------
-- DWHB.conform_fiannce -> DWHF.finance (Dimensions)

-- DWHB.conform_finnace -> DWHF.finance (Facts)
insert into [management].[job_control] 
values ((select table_key from [management].[table_dim] where table_name = 'Kypera_Tenancy_Balance_Fact' and [schema] = 'conform_finance' and [system] = 'dwh'), 
'YES', (select table_key from [management].[table_dim] where table_name = 'Kypera_Tenancy_Balance_Fact' and [schema] = 'finance' and [system] = 'dwh'), 
(select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');
