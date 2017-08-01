USE [dwhb];
GO


SELECT  TABLE_NAME, 
        COLUMN_NAME, 
        DATA_TYPE,
        IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS  
WHERE TABLE_NAME = 'debtor_fact';

---------------------------------------------------------------------------------------
select * from conform.all_employees_report_fact f inner join conform.date_dim d on f.commencement_date_key = d.date_key
inner join conform.date_dim d2 on f.terminate_date_key = d2.date_key
where d.display_date <= 


select * from conform.date_dim d where d.display_date = '31/7/2017'



select * from conform.all_employees_report_fact f where f.commencement_date_key <=24684
and f.terminate_date_key >=24684 --1801

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



 truncate table  conform.service_stream_temp 	

  insert into conform.service_stream_temp  
  select distinct t1.service_stream_key,
         t2.HIERARCHY_CODE,
		 t2.Portfolio_code

  from conform.service_stream_dim as t1
  inner join   
  ( select t1.HIERARCHY_CODE, t1.HIERARCHY_TYPE, t1.CURRENT_LEVEL, t2.HIERARCHY_DESCR, t1.PARENT_NODE Portfolio_code, t3.HIERARCHY_DESCR Portfolio_Descr
  from extract.HRSYS_HIERARCH_ITM t1
  ,extract.HRSYS_HIERARCH_CTL t2
  ,extract.HRSYS_HIERARCH_CTL t3
  where t1.HIERARCHY_TYPE = 'ORGUNIT'
  and t1.CURRENT_LEVEL = 3
  and t1.HIERARCHY_CODE = t2.HIERARCHY_CODE 
  and t1.PARENT_NODE = t3.HIERARCHY_CODE  ) as t2
  on t1.service_stream_code=t2.HIERARCHY_CODE  COLLATE DATABASE_DEFAULT
  where t1.current_row_indicator='Y'


--temporary added becasue org issue by JS at 10/02/2017
delete from conform.service_stream_temp where service_stream_code =10071 and portfolio_code= '10042'