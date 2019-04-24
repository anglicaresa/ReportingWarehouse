# Worktray Document

- [Worktray Document](#worktray-document)
  - [Current priority in Kypera database](#current-priority-in-kypera-database)
  - [Test](#test)
    - [The 1st work edition for List](#the-1st-work-edition-for-list)
    - [Formated 1st work edition with dateM for List](#formated-1st-work-edition-with-datem-for-list)
    - [1st work edition for Display](#1st-work-edition-for-display)
    - [Formated 1st work edition for Display](#formated-1st-work-edition-for-display)
  - [P1 Priority & Response Date is blank](#p1-priority--response-date-is-blank)
    - [Request 4: Green](#request-4-green)
      - [Display:](#display)
      - [List:](#list)
    - [Request 5: Yellow](#request-5-yellow)
      - [Display:](#display-1)
      - [List:](#list-1)
    - [Request 6: Red](#request-6-red)
      - [Display:](#display-2)
      - [List:](#list-2)
  - [P2 Priority & Response Date is blank](#p2-priority--response-date-is-blank)
    - [Request 7 Green](#request-7-green)
      - [Display:](#display-3)
      - [List:](#list-3)
    - [Request 8 Yellow](#request-8-yellow)
      - [Display:](#display-4)
      - [List:](#list-4)
    - [Request 9 Red](#request-9-red)
      - [Display:](#display-5)
      - [List:](#list-5)
  - [P3 Priority & Response Date is blank](#p3-priority--response-date-is-blank)
    - [Request 10 Green](#request-10-green)
      - [Display:](#display-6)
      - [List:](#list-6)
    - [Request 11 Yellow](#request-11-yellow)
    - [Request 12 Red](#request-12-red)
  - [P1 Priority & Complete Date is blank](#p1-priority--complete-date-is-blank)
    - [Request 13 Green](#request-13-green)
    - [Request 14 Yellow](#request-14-yellow)
    - [Request 15 Red](#request-15-red)
  - [P2 Priority & Complete Date is blank](#p2-priority--complete-date-is-blank)
    - [Request 16 Green](#request-16-green)
    - [Request 17 Yellow](#request-17-yellow)
    - [Request 18 Red](#request-18-red)
  - [P3 Priority & Complete Date is blank](#p3-priority--complete-date-is-blank)
    - [Request 19 Green](#request-19-green)
    - [Request 20 Yellow](#request-20-yellow)
    - [Request 21 Red](#request-21-red)
  - [Date view create statements:](#date-view-create-statements)

## Current priority in Kypera database
| ID   | Name                      |
| :--- | :------------------------ |
| 16   | P1 - Emergency            |
| 17   | P2 - Urgent               |
| 18   | P3 - Routine              |
| 19   | P4 - Vacant Repairs       |
| 20   | P5 - Major Repairs        |
| 21   | P6 - Planned Maintenance  |
| 22   | P7 - Cyclical Maintenance |
## Test
>List SQL Statements in Kypera work flow setting is a list of ID. 
>Kypera knows which id it is and is able to show the right riew. I reckon it is preconfigured.
### The 1st work edition for List
>In Kypera, the sql statments has no net line sign, so all sql statements in it are shown in one line.
>
```sql
Select Distinct (WO.ID) From dbo.Repairs_WorksOrder As WO Left Join (Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit From dbo.Repairs_WorksOrder_UnitJoin Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder) As A On WO.ID = A.WorksOrder Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
```
### Formated 1st work edition with dateM for List
>Just for easy reading for human.
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus1HourWorkOrder as ch on ch.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified > ch.dateM
```
### 1st work edition for Display

```sql
Select 'There Are ' + Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order' + (Case Count(Distinct WO.ID) When 1 Then '' Else 's' End) + ' in progress.' From dbo.Repairs_WorksOrder As WO Left Join (Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit From dbo.Repairs_WorksOrder_UnitJoin Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder) As A On WO.ID = A.WorksOrder Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
```

### Formated 1st work edition for Display
```sql
Select 'There are ' + Cast(Count(Distinct (WO.ID)) As VarChar) + ' P1 works order' + (Case Count(Distinct WO.ID) When 1 Then '' Else 's' End) + ' in progress.' 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus1HourWorkOrder as ch on ch.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified > ch.dateM
```
## P1 Priority & Response Date is blank
### Request 4: Green
#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in <1 hour P1 Response.' 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
  Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
  From dbo.Repairs_WorksOrder_UnitJoin 
  Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 Inner Join dbo.CurrentMinus1HourWorkOrder As ch On ch.ID = WO.ID 
Where WO.Notified > ch.dateM 
  And (PSB.District In ('ASA', 'LAW') 
  And pri.Name In ('P1 - Emergency') 
  And WO.ResponseDate Is Null)
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus1HourWorkOrder as ch on ch.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified > ch.dateM
```


### Request 5: Yellow

#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in 1 – 3 hour P1 Response.' 
--Select 'There are ' + Cast(Count(Distinct (WO.ID)) As VarChar) + ' P1 works order' + (Case Count(Distinct WO.ID) When 1 Then '' Else 's' End) + ' in progress.' 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus1HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus3HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified <= ch.dateM
AND WO.Notified >= ch2.dateM
```
#### List:
```sql

Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus1HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus3HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified <= ch.dateM
AND WO.Notified >= ch2.dateM
```
### Request 6: Red 


#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in >3 hour P1 Response.' 

From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

Inner Join dbo.CurrentMinus3HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified < ch2.dateM
AND WO.Notified >'2016-07-01'
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus3HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P1 - Emergency') And WO.ResponseDate Is Null
AND WO.Notified < ch2.dateM
AND WO.Notified >'2016-07-01'
```


## P2 Priority & Response Date is blank
### Request 7 Green
#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in <12 hours P2 Response.' 

From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
AND WO.Notified >= ch2.dateM
--AND WO.Notified >'2016-07-01'
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
AND WO.Notified >= ch2.dateM
--AND WO.Notified >'2016-07-01'
```
### Request 8 Yellow
#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in 12 – 18 hours P2 Response.' 

From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
AND WO.Notified < ch2.dateM
AND WO.Notified >= ch.dateM
--AND WO.Notified >'2016-07-01'
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
AND WO.Notified < ch2.dateM
AND WO.Notified >= ch.dateM
```
### Request 9 Red
#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in >18 hour P2 Response.' 

From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
--Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
--AND WO.Notified < ch2.dateM
AND WO.Notified < ch.dateM
AND WO.Notified >'2016-07-01'
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
--Inner Join dbo.CurrentMinus12HourWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P2 - Urgent') And WO.ResponseDate Is Null
--AND WO.Notified < ch2.dateM
AND WO.Notified < ch.dateM
AND WO.Notified >'2016-07-01'
```

## P3 Priority & Response Date is blank

### Request 10 Green
#### Display:
```sql
Select Cast(Count(Distinct (WO.ID)) As VarChar) + ' works order in <6 working days P3 Response.' 

From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 
--Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus6DayWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P3 - Routine') And WO.ResponseDate Is Null
AND WO.Notified >= ch2.dateM
-- AND WO.Notified < ch.dateM
-- AND WO.Notified >'2016-07-01'
```
#### List:
```sql
Select Distinct (WO.ID) 
From dbo.Repairs_WorksOrder As WO 
Left Join 
(
	Select dbo.Repairs_WorksOrder_UnitJoin.WorksOrder, Max(dbo.Repairs_WorksOrder_UnitJoin.Unit) As unit 
	From dbo.Repairs_WorksOrder_UnitJoin 
	Group By dbo.Repairs_WorksOrder_UnitJoin.WorksOrder
) As A On WO.ID = A.WorksOrder 
Inner Join dbo.PropertyStructure_BlockUnit As B On B.Unit = A.unit 
Inner Join dbo.PropertyStructure_Block As PSB On PSB.Code = B.Block 
Left Join dbo.Repairs_Priorities As pri On WO.Priority = pri.id 
Left Join dbo.HomeTeam_LookupValues As lookupt On WO.Classification = lookupt.id And lookupt.lookup = 25 

--Inner Join dbo.CurrentMinus18HourWorkOrder as ch on ch.ID = WO.id
Inner Join dbo.CurrentMinus6DayWorkOrder as ch2 on ch2.ID = WO.id
Where PSB.District In ('ASA', 'LAW') And pri.Name In ('P3 - Routine') And WO.ResponseDate Is Null
AND WO.Notified >= ch2.dateM
-- AND WO.Notified < ch.dateM
-- AND WO.Notified >'2016-07-01'
```
### Request 11 Yellow
### Request 12 Red
## P1 Priority & Complete Date is blank
### Request 13 Green
### Request 14 Yellow
### Request 15 Red
## P2 Priority & Complete Date is blank
### Request 16 Green
### Request 17 Yellow
### Request 18 Red
## P3 Priority & Complete Date is blank
### Request 19 Green
### Request 20 Yellow
### Request 21 Red
## Date view create statements:
Kypera system doesn't support date calculation in the work tray setting part. So the following views need to be created before creating the work tray using the following views.
>The following view is used as dattime mark for the worktray sql statements to use.

```sql
  CREATE view [dbo].[CurrentMinus1HourWorkOrder] as
  select DATEADD(HOUR,-1,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus3HourWorkOrder] as
  select DATEADD(HOUR,-3,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus12HourWorkOrder] as
  select DATEADD(HOUR,-12,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO
  CREATE view [dbo].[CurrentMinus18HourWorkOrder] as
  select DATEADD(HOUR,-18,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus6DayWorkOrder] as
  select DATEADD(DAY,-6,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus8DayWorkOrder] as
  select DATEADD(DAY,-8,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus3DayWorkOrder] as
  select DATEADD(DAY,-3,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus4DayWorkOrder] as
  select DATEADD(DAY,-4,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus15DayWorkOrder] as
  select DATEADD(DAY,-15,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO

  CREATE view [dbo].[CurrentMinus18DayWorkOrder] as
  select DATEADD(DAY,-18,GETDATE()) as dateM,dbo.Repairs_WorksOrder.ID
  from dbo.Repairs_WorksOrder;
GO
```