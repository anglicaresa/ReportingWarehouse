use dwhb
go

select t1.system 'Source system'
, t1.table_name 'Source table'
, t2.system 'Destination system'
, t2.table_name 'Destination table'
, t3.package_name
, t3.sub_system
, t4.job_enabled_flag
,t4.priority
from management.table_dim t1
,management.table_dim t2
,management.package_dim t3
,management.job_control t4
where t1.table_key = t4.source_table_key
and t2.table_key = t4.destination_table_key
and t3.package_key = t4.package_key
