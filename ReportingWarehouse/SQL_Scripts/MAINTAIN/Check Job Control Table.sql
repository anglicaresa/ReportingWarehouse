use dwhb;
go

 select  t1.job_key,d1.[system], d1.[schema] source_schema, d1.[table_name] source_table, d2.[schema] dest_schema, d2.[table_name] dest_table,  d3.package_name, t1.[priority]
  from management.job_control t1
  ,management.table_dim d1
  ,management.table_dim d2
  ,management.package_dim d3
  where t1.source_table_key = d1.table_key
  and t1.destination_table_key = d2.table_key
  and t1.package_key = d3.package_key
  --order by t1.job_key desc
  order by d1.[system], d1.[schema], t1.[priority], d1.table_name;


  use msdb

select H.RUN_DATE,h.message,H.run_status from dbo.sysjobhistory h inner join dbo.sysjobs j
	on j.job_id = h.job_id and h.run_status <> 1 
	and run_date IN 
	(
		CONVERT(varchar,DATEADD(DAY,-1,GETDATE()), 112),
		CONVERT(varchar,DATEADD(DAY,-2,GETDATE()), 112),
		CONVERT(varchar,DATEADD(DAY,-3,GETDATE()), 112)
	) 

use dwhb;
update  management.job_control 
set priority = 1 where job_key = 226;


select * from management.job_control t1 where t1.job_key = 226;