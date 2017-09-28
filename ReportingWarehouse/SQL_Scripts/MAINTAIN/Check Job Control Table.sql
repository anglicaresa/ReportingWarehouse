use dwhb;
go

 select  d1.[system], d1.[schema] source_schema, d1.[table_name] source_table, d2.[schema] dest_schema, d2.[table_name] dest_table,  d3.package_name, t1.[priority]
  from management.job_control t1
  ,management.table_dim d1
  ,management.table_dim d2
  ,management.package_dim d3
  where t1.source_table_key = d1.table_key
  and t1.destination_table_key = d2.table_key
  and t1.package_key = d3.package_key
  order by d1.[system], d1.[schema], t1.[priority], d1.table_name