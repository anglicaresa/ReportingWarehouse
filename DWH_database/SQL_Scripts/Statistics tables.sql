/*------------------------------------------------------------------------------------------------------------------------
             Script name: Create STATISTICS Tables
			 Purpose: queries for statistics purpose join FACT and DIM tables
			 Development history:
			        1. 24/08/2016  created by Jerry Shen

			 Notes:
				  
*------------------------------------------------------------------------------------------------------------------------/

--Example SQL: get employee detail information from FACT_EMPLOYEE_RECRUITMENT table
SELECT 
D1.full_date,
D2.ID_NUMBER,
D2.GIVEN_NAME,
D2.FAMILY_NAME,
D3.PORTFOLIO_NAME,
D3.PORTFOLIO_KEY,
D4.POSITION_NAME,
D5.PROGRAM_NAME,
D6.SERVICE_STREAM_NAME
FROM DWHF.FACT_EMPLOYEE_RECRUITMENT F1
,DWHF.DIM_DATE D1
,DWHF.DIM_Employee D2
,DWHF.DIM_PORTFOLIO D3
,DWHF.DIM_POSITION D4
,DWHF.DIM_PROGRAM D5
,DWHF.DIM_SERVICE_STREAM D6
WHERE F1.COMMENCEMENT_DATE_KEY=D1.date_key
AND F1.EMPLOYEE_KEY=D2.Employee_Key
AND F1.PORTFOLIO_KEY=D3.PORTFOLIO_KEY
AND F1.POSITION_KEY=D4.POSITION_KEY
AND F1.PROGRAM_KEY=D5.PROGRAM_KEY
AND F1.SERVICE_STREAM_KEY=D6.SERVICE_STREAM_KEY
and f1.PORTFOLIO_KEY='4'
order by D5.PROGRAM_NAME
