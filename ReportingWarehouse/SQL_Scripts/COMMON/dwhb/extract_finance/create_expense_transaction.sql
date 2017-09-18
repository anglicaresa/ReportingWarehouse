create table extract.expense_transaction
(
Org_ID	        	varchar(10),
Transaction_no		varchar(10),
Transaction_Date	varchar(10),
Merchant_Name	    varchar(50),
Employee_Email		varchar(50),
Employee_No		    varchar(10),
Card_Infomation		varchar(50),
Amount		        decimal(10,2),
Net_Amount		    decimal(10,2),
Tax_Amount		    decimal(10,2),
GST		            varchar(10),
[Description]		varchar(100),
Activity_code		varchar(50),
Expense_Type		varchar(50),
Line_desription		varchar(100),
Entity		        varchar(10),
Costing		        varchar(10),
Activity	    	varchar(10),
Natural		        varchar(10)
);
go

	-- PK
alter table [extract].expense_transaction
add constraint [pk_expense_transaction]
    primary key clustered ([Transaction_no] asc);
go
