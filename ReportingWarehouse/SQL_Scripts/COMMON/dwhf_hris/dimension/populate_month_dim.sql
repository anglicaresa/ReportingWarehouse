--truncate table [hris].[month_dim]
  
  
  declare @m_start_date datetime ='1950-01-01 00:00:00.000';
  declare @m_end_date datetime ='2070-01-01 00:00:00.000';
  declare @month_key int = 1
  while @m_start_date<@m_end_date
  begin
       insert into hris.month_dim
	   select @month_key,
	    datename(month,@m_start_date),  -- month name
		datepart(mm,@m_start_date), -- month number
		datepart(qq,@m_start_date), -- quarter number
		case  datepart(qq,@m_start_date)  -- quarter name
			when '1' then 'First' 
			when '2' then 'Second'
			when '3' then 'Third'
			when '4' then 'Fourth'
	   end,
		datepart(yyyy,@m_start_date);  -- year

	set @m_start_date=dateadd(month,1,@m_start_date);
	set @month_key=@month_key+1;
  end;

  -- insert default month
    insert into hris.month_dim (month_key, month_name, month_number,quarter_number, quarter_name, year)
  values (9999999, '-', '-', '-', '-', '-')