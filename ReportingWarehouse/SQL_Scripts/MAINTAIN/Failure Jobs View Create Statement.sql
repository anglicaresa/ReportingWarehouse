USE [DWHB]
GO

/****** Object:  View [management].[v_failure_jobs]    Script Date: 21/06/2018 1:40:26 PM ******/
DROP VIEW [management].[v_failure_jobs]
GO

/****** Object:  View [management].[v_failure_jobs]    Script Date: 21/06/2018 1:40:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [management].[v_failure_jobs] as
select 
h.run_status,
--h.run_time,
 j.name as 'JobName',
 s.step_id as 'Step',
 s.step_name as 'StepName',
 msdb.dbo.agent_datetime(run_date, run_time) as 'RunDateTime',
 ((run_duration/10000*3600 + (run_duration/100)%100*60 + run_duration%100 + 31 ) / 60) 
         as 'RunDurationMinutes'
From msdb.dbo.sysjobs j 
INNER JOIN msdb.dbo.sysjobsteps s 
 ON j.job_id = s.job_id
INNER JOIN msdb.dbo.sysjobhistory h 
 ON s.job_id = h.job_id 
 AND s.step_id = h.step_id 
 AND h.step_id <> 0
where j.enabled = 1   --Only Enabled Jobs
--and j.name = 'TestJob' --Uncomment to search for a single job

and msdb.dbo.agent_datetime(run_date, run_time) 
BETWEEN GETDATE()-1 and GETDATE()  --Uncomment for date range queries

and h.run_status = 0

GO


