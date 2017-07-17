-- ensure SQLCMD mode is enabled before running this otherwise you'll get a syntax error

-- create dimensions
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_accreditation_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_date_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_employee_benefit_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_employee_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_employee_payment_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_item_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_leave_type_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_month_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_organisation_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_portfolio_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_position_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_program_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_salary_code_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\dimension\create_service_stream_dim.sql

-- populate dimensions
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\populate\dimension\populate_month_dim.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\populate\dimension\populate_date_dim.sql

-- create facts
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_accreditation_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_benefit_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_leave_accrued_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_leave_booked_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_leave_snapshot_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_leave_taken_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_payment_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_payment_snapshot_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_position_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_position_snapshot_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_profile_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_recruitment_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_employee_termination_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_issued_item_fact.sql
:r C:\projects\ReportingWarehouse\ReportingWarehouse\SQL_Scripts\dwhf\hris\create\fact\create_probation_monitoring_fact.sql