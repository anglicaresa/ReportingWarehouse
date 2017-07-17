﻿  -- Team Leads
select t4.ID_NUMBER,t1.HIERARCHY_CODE, t1.HIERARCHY_TYPE, t1.CURRENT_LEVEL, t2.HIERARCHY_DESCR, t1.PARENT_NODE, t1.PARENT_TYPE, t3.PARENT_NODE 'Grandparent', t3.PARENT_TYPE 'Grandparent type'
  from extract.HRSYS_HIERARCH_ITM t1
  ,extract.HRSYS_HIERARCH_CTL t2
  ,extract.HRSYS_HIERARCH_ITM t3
  ,extract.HRHMN_EMPL_JOB_POS t4
  where t1.HIERARCHY_CODE = t2.HIERARCHY_CODE 
  and t1.PARENT_NODE = t3.HIERARCHY_CODE
  and t1.CURRENT_LEVEL = 5
  and t1.HIERARCHY_TYPE = 'POSITION'
  and t1.HIERARCHY_CODE = t4.POSITION_CODE
  and t3.PARENT_TYPE = 'ORGUNIT'
    order by t4.ID_NUMBER