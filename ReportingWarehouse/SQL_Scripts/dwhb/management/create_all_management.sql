-- ensure SQLCMD mode is enabled before running this otherwise you'll get a syntax error

-- create dimensions
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\dimension\create_batch_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\dimension\create_date_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\dimension\create_package_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\dimension\create_status_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\dimension\create_table_dim.sql

-- populate dimensions
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\dimension\populate_batch_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\dimension\populate_date_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\dimension\populate_package_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\dimension\populate_status_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\dimension\populate_table_dim.sql

-- create facts
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\fact\create_error_event_detail_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\fact\create_error_event_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\fact\create_etl_process_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\create\fact\create_job_control.sql

--  populate facts
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhb\management\populate\fact\populate_job_control.sql