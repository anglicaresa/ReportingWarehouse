USE [dwhb];
GO


SELECT  TABLE_NAME, 
        COLUMN_NAME, 
        DATA_TYPE,
        IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'debtor_fact';


select * from conform.all_employees_report_fact f inner join conform.date_dim d on f.commencement_date_key = d.date_key
inner join conform.date_dim d2 on f.terminate_date_key = d2.date_key
where d.display_date <= 


select * from conform.date_dim d where d.display_date = '1/6/2017'



select * from conform.all_employees_report_fact f where f.commencement_date_key <=24624
and f.terminate_date_key >=24624 --1801

select * from conform.all_employees_report_fact f where f.commencement_date_key >24624 --115

select * from conform.employee_recruitment_fact f where f.recruitment_date_key>24624 --58

select d.* from conform.all_employees_report_fact f 
inner join conform.employee_dim d 
on f.employee_key = d.employee_key
where f.commencement_date_key >24624 --115 
and f.employee_key not in (
select f.employee_key from conform.employee_recruitment_fact f where f.recruitment_date_key>24624
)

--59
select * from conform.employee_temp t where t.employee_key = 4425
