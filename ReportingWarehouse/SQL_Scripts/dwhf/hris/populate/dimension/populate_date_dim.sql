  
  -- truncate table 
  --truncate table hris.DATE_DIM;
  -- Populate hris.DATE_DIM
  declare @v_start_date datetime ='1950-01-01 00:00:00.000';
  declare @v_end_date datetime ='2070-01-01 00:00:00.000';
  declare @date_key int = 1
  while @v_start_date<@v_end_date
  begin
       insert into hris.DATE_DIM 
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

  -- default date
  insert into hris.date_dim (date_key,full_date, year, quarter, quarter_name, month, month_name, day_of_month, day_of_week,day_name, is_public_holiday, public_holiday_name)
  values(9999999,'1800-01-01 00:00:00.000', '-', '-', '-', '-', '-', '-', '-', '-', 'N', '')

  -- Public holidays: Same every year
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'New Years Day'  where month = 1 and day_of_month = 1
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Australia Day'  where month = 1 and day_of_month = 26
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Anzac Day'  where month = 4 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Christmas Eve' where month = 12 and day_of_month = 24
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Christmas Day' where month = 12 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'New Years Eve' where month = 12 and day_of_month = 31

   -- year specific: 2016
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'March public holiday' where month = 3 and year = 2016 and day_of_month = 14
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Good Friday' where month = 3 and year = 2016 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Easter Saturday' where month = 3 and year = 2016 and day_of_month = 26
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Easter Monday' where month = 3 and year = 2016 and day_of_month = 28
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Queens Birthday' where month = 6 and year = 2016 and day_of_month = 13
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Labour Day' where month = 10 and year = 2016 and day_of_month = 3
  update hris.date_dim set is_public_holiday = 'Y', public_holiday_name = 'Proclamation Day' where month = 12 and year = 2016 and day_of_month = 27
  