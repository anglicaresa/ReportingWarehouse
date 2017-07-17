 
  declare @v_start_date datetime ='1950-01-01 00:00:00.000';
  declare @v_end_date datetime ='2070-01-01 00:00:00.000';
  declare @date_key int = 1
  declare @pay_period_counter int = 14 -- seed this with the right value, 22/5/16 should be a pay period end day
  while @v_start_date<@v_end_date
  begin
       insert into hris.DATE_DIM (date_key,full_date, display_date, year, quarter, quarter_name, month_no, month_name, day_of_month, day_of_week,day_name, is_public_holiday, public_holiday_name, financial_year, fbt_range, pay_period_end,financial_month_no, max_temperature, min_temperature, rainfall, max_wind_speed)
	   select @date_key,
	   @v_start_date, -- full date
	   concat(day(@v_start_date),'/',month(@v_start_date),'/',year(@v_start_date)), -- display date
	   datepart(yyyy,@v_start_date), -- year
	   datepart(qq,@v_start_date), -- quarter
	   case  datepart(qq,@v_start_date) -- quarter_name
	   when '1' then 'First'
	   when '2' then 'Second'
	   when '3' then 'Third'
	   when '4' then 'Fourth'
	   end,
	   datepart(mm,@v_start_date), -- month
	   datename(month,@v_start_date), -- month_name
		day(@v_start_date), -- day_of_month
		case DATENAME(dw,@v_start_date) -- day_of_week
			when 'Monday' then 1
			when 'Tuesday' then 2
			when 'Wednesday' then 3
			when 'Thursday' then 4
			when 'Friday' then 5
			when 'Saturday' then 6
			when 'Sunday' then 7
	    end ,
		DATENAME(dw,@v_start_date), -- day_name 
		'No', -- is_public_holiday
		'', -- public_holiday_name	   
		case datepart(mm,@v_start_date) -- financial year
			when 1 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 2 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 3 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 4 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 5 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 6 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 7 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 8 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 9 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 10 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 11 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 12 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
		end,
		case datepart(mm,@v_start_date) -- fbt_range
			when 1 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 2 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 3 then CONCAT(datepart(yyyy,@v_start_date)-1,'-',datepart(yyyy,@v_start_date))
			when 4 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 5 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 6 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 7 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 8 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 9 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 10 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 11 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
			when 12 then CONCAT(datepart(yyyy,@v_start_date),'-',datepart(yyyy,@v_start_date)+1)
		end, 
		case @pay_period_counter  -- pay period end
			when 14 then 'Yes' 
			else 'No'
		end,
		case datepart(mm,@v_start_date) -- financial_month_no
			when 1 then 7
			when 2 then 8
			when 3 then 9
			when 4 then 10
			when 5 then 11
			when 6 then 12
			when 7 then 1
			when 8 then 2
			when 9 then 3
			when 10 then 4
			when 11 then 5
			when 12 then 6
		end,
		25, -- max_temperature
		15, -- min_temperature
		0, -- rainfull
		10; -- max_windspeed

		 
		-- reset pay period counter
		if @pay_period_counter = 14
			set @pay_period_counter = 1;
		else
			set @pay_period_counter=@pay_period_counter+1;
		

		set @v_start_date=dateadd(day,1,@v_start_date);
		set @date_key=@date_key+1;
  end;

  -- default date
  insert into hris.date_dim (date_key,full_date, display_date, year, quarter, quarter_name, month_no, month_name, day_of_month, day_of_week,day_name, is_public_holiday, public_holiday_name, financial_year, fbt_range, pay_period_end)
  values(9999999,'1800-01-01 00:00:00.000', '01/01/1800', 1800, 1, 'First', 1, 'January', '1', '1', 'Monday', 'Yes', 'New years day', '', '', 'No')

     -- Public holidays: Same every year
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'New Years Day'  where month_no = 1 and day_of_month = 1
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Australia Day'  where month_no = 1 and day_of_month = 26
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Anzac Day'  where month_no = 4 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Christmas Eve' where month_no = 12 and day_of_month = 24
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Christmas Day' where month_no = 12 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Proclamation Day' where month_no = 12 and day_of_month = 26
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'New Years Eve' where month_no = 12 and day_of_month = 31

   -- 2016
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'March public holiday' where month_no = 3 and year = 2016 and day_of_month = 14
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Good Friday' where month_no = 3 and year = 2016 and day_of_month = 25
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Saturday' where month_no = 3 and year = 2016 and day_of_month = 26
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Monday' where month_no = 3 and year = 2016 and day_of_month = 28
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Queens Birthday' where month_no = 6 and year = 2016 and day_of_month = 13
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Labour Day' where month_no = 10 and year = 2016 and day_of_month = 3

  -- 2017
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'March public holiday' where month_no = 3 and year = 2017 and day_of_month = 13
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Good Friday' where month_no = 4 and year = 2017 and day_of_month = 14
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Saturday' where month_no = 4 and year = 2017 and day_of_month = 15
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Monday' where month_no = 4 and year = 2017 and day_of_month = 17
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Queens Birthday' where month_no = 6 and year = 2017 and day_of_month = 12
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Labour Day' where month_no = 10 and year = 2017 and day_of_month = 2

  -- 2018
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'March public holiday' where month_no = 3 and year = 2018 and day_of_month = 12
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Good Friday' where month_no = 3 and year = 2018 and day_of_month = 30
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Saturday' where month_no = 3 and year = 2018 and day_of_month = 31
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Monday' where month_no = 4 and year = 2018 and day_of_month = 2
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Queens Birthday' where month_no = 6 and year = 2018 and day_of_month = 11
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Labour Day' where month_no = 10 and year = 2018 and day_of_month = 1

  -- 2019
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'March public holiday' where month_no = 3 and year = 2019 and day_of_month = 11
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Good Friday' where month_no = 4 and year = 2019 and day_of_month = 19
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Saturday' where month_no = 4 and year = 2019 and day_of_month = 20
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Easter Monday' where month_no = 4 and year = 2019 and day_of_month = 22
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Queens Birthday' where month_no = 6 and year = 2019 and day_of_month = 10
  update hris.date_dim set is_public_holiday = 'Yes', public_holiday_name = 'Labour Day' where month_no = 10 and year = 2019 and day_of_month = 7