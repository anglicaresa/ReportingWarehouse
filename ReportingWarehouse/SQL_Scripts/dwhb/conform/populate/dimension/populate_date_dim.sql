  
  -- truncate table 
  truncate table conform.DATE_DIM;
  -- Populate conform.DATE_DIM
  declare @v_start_date datetime ='1950-01-01 00:00:00.000';
  declare @v_end_date datetime ='2070-01-01 00:00:00.000';
  declare @date_key int = 1
  while @v_start_date<@v_end_date
  begin
       insert into conform.DATE_DIM 
	   select @date_key,
	   @v_start_date,
	   datepart(yyyy,@v_start_date),
	   datepart(qq,@v_start_date),
	   case  datepart(qq,@v_start_date)
	   when '1' then 'First'
	   when '2' then 'Second'
	   when '3' then 'Third'
	   when '4' then 'Fourth'
	   end,
	   datepart(mm,@v_start_date),
	   datename(month,@v_start_date),
		day(@v_start_date),
		case DATENAME(dw,@v_start_date)
		when 'Monday' then 1
		when 'Tuesday' then 2
		when 'Wednesday' then 3
		when 'Thursday' then 4
		when 'Friday' then 5
		when 'Saturday' then 6
		when 'Sunday' then 7
	    end ,
		DATENAME(dw,@v_start_date),
		'N',
		''	   ;
	set @v_start_date=dateadd(day,1,@v_start_date);
	   set @date_key=@date_key+1;
  end;

  -- default row
  insert into conform.date_dim (date_key,full_date, year, quarter, quarter_name, month, month_name, day_of_month, day_of_week,day_name, is_public_holiday, public_holiday_name)
  values(9999999,'1800-01-01 00:00:00.000', '-', '-', '-', '-', '-', '-', '-', '-', 'N', '')
  