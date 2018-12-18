/**
After new fact table created to the ETL system. The fact table needs to be added to Table_Dim table 
and also insert one new row to Job_Control table
in order to be delivered by the system.

Step1: Insert into Table_Dim.
Step2:Insert into Job_Control.


package_key	package_name	sub_system
1	EXTRACT	Extract system
2	EXTRACT	Change data capture system
3	DELIVERY	Delivery system
4	CONFORM	Conform system

**/
/**
Currently support 
@ENV :Prod and Dev ETL
for @MART: Hris, Finance, Comcare data mart

Please change to the correct name before running it.
Please change priority number in insert job control statement

**/

--DECLARE @ENV varchar(10) = 'Dev';
DECLARE @ENV varchar(10) = 'Prod';

DECLARE @MART VARCHAR(20) = 'Hris';
DECLARE @t_table varchar(max)= 'labour_turnover_program_fact';

--Step1: Insert into Table_Dim.
DECLARE @t_server varchar(max);
--decide server need to be change when new server added.
IF @ENV = 'Dev'
    BEGIN
        SET @t_server = 'devsql-1';
    END


IF @ENV = 'Prod'
    BEGIN
        SET @t_server = 'AZ-SQLBI01';
    END


IF @MART = 'Hris'
BEGIN
    --                                          table name,system, schema,   database,server
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'conform', 'dwhb', @t_server);
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'hris', 'dwhf', @t_server);
END

IF @MART = 'Finance'
BEGIN
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'conform_finance', 'dwhb', @t_server);
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'finance', 'dwhf_finance', @t_server);
END        

IF @MART = 'Comcare'
BEGIN
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'conform_comcare', 'dwhb', @t_server);
    INSERT INTO [management].[TABLE_DIM] VALUES (@t_table, 'dwh', 'comcare', 'dwhf_comcare', @t_server);
END

--Step2:Insert into Job_Control.
IF @MART = 'Hris'
BEGIN
    insert into [management].[job_control] values 
    ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'conform'),
    'YES',
    (select table_key from [management].[table_dim] where table_name =@t_table and [schema] = 'hris'),
    (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),1,'daily');
END

IF @MART = 'Finance'
BEGIN
    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'conform_finance' and [system] = 'dwh'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'finance' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');
END

IF @MART = 'Comcare'
BEGIN
    insert into [management].[job_control] values 
        ((select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'conform_comcare' and [system] = 'dwh'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = @t_table and [schema] = 'comcare' and [system] = 'dwh'), 
        (select package_key from [management].[package_dim] where package_name = 'DELIVERY' and sub_system = 'Delivery system'),2,'daily');
END

--For RiskMan extract process
s
	    insert into [management].[job_control] 
		(source_table_key,job_enabled_flag,destination_table_key,package_key,[priority],[frequency])
		values 
        ((select table_key from [management].[table_dim] where table_name = 'vwSF_SkinTear' and [schema] = 'dbo' and [system] = 'riskman'),
        'YES', 
        (select table_key from [management].[table_dim] where table_name = 'vwSF_SkinTear' and [schema] = 'extract_riskman' and [system] = 'dwh'), 
        1,1,'daily');
s