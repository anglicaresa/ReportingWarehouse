

  select t1.hierarchy_type, t1.hierarchy_code, t1.hierarchy_descr, t1.VERS, t1.STATUS
  from [dbo].[HRSYS_HIERARCH_CTL] t1,
  dbo.HRSYS_HIERARCH_ITM t2,
  dbo.HRSYS_HIERARCH_LVL t3
  where t1.HIERARCHY_CODE = t2.HIERARCHY_CODE
  and t2.CURRENT_LEVEL = t3.HIERARCHY_LEVEL
  and t1.HIERARCHY_TYPE = 'ORGUNIT'
  and t3.LEVEL_DESC = 'Portfolio'

  select t1.hierarchy_type, t1.hierarchy_code, t1.hierarchy_descr, t1.VERS, t1.STATUS
  from [dbo].[HRSYS_HIERARCH_CTL] t1,
  dbo.HRSYS_HIERARCH_ITM t2,
  dbo.HRSYS_HIERARCH_LVL t3
  where t1.HIERARCHY_CODE = t2.HIERARCHY_CODE
  and t2.CURRENT_LEVEL = t3.HIERARCHY_LEVEL
  and t1.HIERARCHY_TYPE = 'ORGUNIT'
  and t2.PARENT_NODE != ''
  and t3.LEVEL_DESC = 'Service Stream'
  order by t1.HIERARCHY_CODE

  select t1.hierarchy_type, t1.hierarchy_code, t1.hierarchy_descr, t1.VERS, t1.STATUS
  from [dbo].[HRSYS_HIERARCH_CTL] t1,
  dbo.HRSYS_HIERARCH_ITM t2,
  dbo.HRSYS_HIERARCH_LVL t3
  where t1.HIERARCHY_CODE = t2.HIERARCHY_CODE
  and t2.CURRENT_LEVEL = t3.HIERARCHY_LEVEL
  and t1.HIERARCHY_TYPE = 'ORGUNIT'
  and t2.PARENT_NODE != ''
  and t3.LEVEL_DESC = 'Program'
  order by t1.HIERARCHY_CODE

  