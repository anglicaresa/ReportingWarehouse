delete from conform.month_dim
  
  
  declare @month_start_date datetime ='1950-01-01 00:00:00.000';
  declare @month_end_date datetime ='2070-01-01 00:00:00.000';
  declare @month_key int = 1
  while @month_start_date<@month_end_date
  begin
       insert into conform.month_dim
	   select  datename(month,@month_start_date),  -- month name
		datepart(mm,@month_start_date), -- month number
		datepart(qq,@month_start_date), -- quarter number
		case  datepart(qq,@month_start_date)  -- quarter name
			when '1' then 'First' 
			when '2' then 'Second'
			when '3' then 'Third'
			when '4' then 'Fourth'
	   end,
		datepart(yyyy,@month_start_date);  -- year

	set @month_start_date=dateadd(month,1,@month_start_date);
	set @month_key=@month_key+1;
  end;

  -- insert default month
    insert into conform.month_dim ( month_name, month_number,quarter_number, quarter_name, year)
  values ('-', '-', '-', '-', '-')