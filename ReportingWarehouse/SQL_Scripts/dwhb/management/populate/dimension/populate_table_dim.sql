
-- HRIS T1 tables
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_CTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_ITM', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_LVL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_JOB_CTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_JOB_POS', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_REF', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPLTERM_DTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_QUAL_REF', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPLQUAL_DTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_SUMMACCR', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_DTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_SUMMPMNT', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_MASTER_CTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_LEAVE_DTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_LEAVE_CTL', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPCM_PAYCOMP_DEF', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPCM_PAYCOMP_REF', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');
INSERT INTO [management].[TABLE_DIM] VALUES ('F1_USER_PROFILE', 'HRIS-T1', 'dbo', 'fintrain', 'appsql-4');



-- HRIS management tables
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_CTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_ITM', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRSYS_HIERARCH_LVL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_JOB_CTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_JOB_POS', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPL_REF', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPLTERM_DTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_QUAL_REF', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRHMN_EMPLQUAL_DTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_SUMMACCR', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_DTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_PAYITEMS_SUMMPMNT', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_MASTER_CTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_LEAVE_DTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPAY_LEAVE_CTL', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPCM_PAYCOMP_DEF', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('HRPCM_PAYCOMP_REF', 'dwh', 'extract', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('F1_USER_PROFILE', 'dwh', 'extract', 'dwh', 'devsql-1');

-- HRIS conform tables
INSERT INTO [management].[TABLE_DIM] VALUES ('ACCREDITATION_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('DATE_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_ACCREDITATION_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_BENEFIT_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_BENEFIT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_ACCRUED_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_BOOKED_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_SNAPSHOT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_TAKEN_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_SNAPSHOT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_POSITION_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_POSITION_SNAPSHOT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PROFILE_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_RECRUITMENT_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_TERMINATION_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ISSUED_ITEM_FACT', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ITEM_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('LEAVE_TYPE_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('MONTH_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ORGANISATION_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PORTFOLIO_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('POSITION_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PROBATION_MONITORING_FACE', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PROGRAM_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('SALARY_CODE_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('SERVICE_STREAM_DIM', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_TEMP', 'dwh', 'conform', 'dwh', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_POSITION_TEMP', 'dwh', 'conform', 'dwh', 'devsql-1');

-- HRIS Data mart tables
INSERT INTO [management].[TABLE_DIM] VALUES ('ACCREDITATION_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('DATE_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_ACCREDITATION_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_BENEFIT_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_BENEFIT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_ACCRUED_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_BOOKED_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_SNAPSHOT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_LEAVE_TAKEN_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PAYMENT_SNAPSHOT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_POSITION_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_POSITION_SNAPSHOT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_PROFILE_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_RECRUITMENT_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('EMPLOYEE_TERMINATION_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ISSUED_ITEM_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ITEM_DIM', 'dwhF', 'dwh', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('LEAVE_TYPE_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('MONTH_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('ORGANISATION_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PORTFOLIO_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('POSITION_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PROBATION_MONITORING_FACT', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('PROGRAM_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('SALARY_CODE_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');
INSERT INTO [management].[TABLE_DIM] VALUES ('SERVICE_STREAM_DIM', 'dwh', 'hris', 'dwhf', 'devsql-1');