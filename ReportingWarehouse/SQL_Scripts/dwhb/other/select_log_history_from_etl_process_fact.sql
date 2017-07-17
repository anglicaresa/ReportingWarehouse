-- get the ETL jobs run log history from dwhb.etl_process_fact table and dim tables
select t1.etl_process_key
,t6.full_date
,t2.batch_type
,t3.table_name as 'Destination_Table'
,t4.status_name
,t1.cdc_date_time
,t5.package_name
from 
management.ETL_PROCESS_FACT t1
,management.BATCH_DIM t2
,management.TABLE_DIM t3
,management.STATUS_DIM t4
,management.PACKAGE_DIM t5
,management.DATE_DIM t6
where t1.batch_key=t2.batch_key
and t1.table_key=t3.table_key
and t1.status_key=t4.status_key
and t1.package_key=t5.package_key
and t1.date_key=t6.date_key
order by t1.batch_key asc 
