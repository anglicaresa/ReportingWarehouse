--added by Frank 27-11-2017
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_Occupancy','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_RentCalculation_Arrears_EffectiveBalances','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Block','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_BlockUnit','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_District','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_scheme','Kypera','dbo','anglicare','appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Unit','Kypera','dbo','anglicare','appsql-3');
-- schema: extract_kypera
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_Occupancy','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_RentCalculation_Arrears_EffectiveBalances','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Block','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_BlockUnit','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_District','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_scheme','dwh', 'extract_kypera', 'dwhb', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Unit','dwh', 'extract_kypera', 'dwhb', 'devsql-1');



DECLARE @t_table varchar(max)= 'PropertyStructure_Unit';

    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'dbo' and [system] = 'Kypera'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'extract_kypera' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');

set @t_table = 'PropertyStructure_District';

    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'dbo' and [system] = 'Kypera'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'extract_kypera' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');

set @t_table = 'PropertyStructure_scheme';

    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'dbo' and [system] = 'Kypera'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'extract_kypera' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'EXTRACT' and sub_system = 'Extract system'),1,'daily');