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
