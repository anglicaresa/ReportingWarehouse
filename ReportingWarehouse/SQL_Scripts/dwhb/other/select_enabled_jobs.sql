select t1.system 'Source system'
, t1.table_name 'Source table'
, t2.system 'Destination system'
, t2.table_name 'Destination table'
, t3.package_name
, t3.sub_system
, t4.job_enabled_flag
from dwhb.table_dim t1
,dwhb.table_dim t2
,dwhb.package_dim t3
,dwhb.job_control t4
where t1.table_key = t4.source_table_key
and t2.table_key = t4.destination_table_key
and t3.package_key = t4.package_key
