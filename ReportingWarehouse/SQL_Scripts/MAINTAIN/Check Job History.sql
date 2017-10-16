/**
Check ETL job history
Check the recent three days' job if no row returns then all good. 
Otherwise, please check the message in the query result.
**/
  use msdb

select top 1000 H.RUN_DATE,h.message,H.run_status,h.* from dbo.sysjobhistory h inner join dbo.sysjobs j
	on j.job_id = h.job_id 
	--and h.run_status <> 1 
	and run_date IN 
	(
		CONVERT(varchar,DATEADD(DAY,0,GETDATE()), 112),
		CONVERT(varchar,DATEADD(DAY,-1,GETDATE()), 112),
		CONVERT(varchar,DATEADD(DAY,-2,GETDATE()), 112),
		CONVERT(varchar,DATEADD(DAY,-3,GETDATE()), 112)
	) 


use dwhb;
select t.[database],t.[schema],t.table_key,t.table_name, f.cdc_date_time, s.status_name  from 
DWHB.management.etl_process_fact f
INNER JOIN management.table_dim t on f.table_key = t.table_key
INNER JOIN management.status_dim s on f.status_key = s.status_key
INNER JOIN management.date_dim d on f.date_key = d.date_key
and d.display_date = '13/10/2017'
order by f.cdc_date_time desc