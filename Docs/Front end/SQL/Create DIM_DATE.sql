CREATE TABLE	[DWHF].[DIM_DATE]
	(	[date_key] INT primary key, 
		[full_date] DATETIME,
		[Year] CHAR(4),-- Year value of Date stored in Row
		[Quarter] CHAR(1),
		[Quarter_Name] VARCHAR(9),--First,Second..
		[Month] VARCHAR(2), --Number of the Month 1 to 12
		[Month_Name] VARCHAR(9),--January, February etc
		[Day_Of_Month] VARCHAR(2), -- Field will hold day number of Month
		[Day_Of_Week] VARCHAR(1), -- 1,2,3...7
		[Day_name] VARCHAR(9), -- Monday, Tuesday...
		[Is_public_Holiday] VARCHAR(1),-- Flag Y/N
		[Public_Holiday_name] VARCHAR(50) Null --Name of Holiday
	)