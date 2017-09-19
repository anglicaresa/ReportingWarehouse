SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHB];


IF OBJECT_ID(N'[conform_finance].[EXPENSE_FACT]', 'U') IS NOT NULL
    DROP TABLE [conform_finance].EXPENSE_FACT;
GO



-- Creating table 'RECONCILE_INVOICE_FACT'
CREATE TABLE [conform_finance].[EXPENSE_FACT] (
    [Expense_key] int IDENTITY(1,1) NOT NULL,
    [Transaction_no]  varchar(10)  NULL,
    [Transaction_date_key] int  NULL,
    [Merchant_Name] varchar(50)  NULL,
	[Employee_Email] varchar(50)  NULL,
	[Employee_key] int  NULL,
    [Portfolio_key] int  NULL,
    [Service_stream_key] int  NULL,
    [Program_key] int  NULL,
	[Manager_key] int  NULL,
	[Card_Infomation]  varchar(50)  NULL,
	[Amount] decimal(10,2)  NULL,
	[Net_Amount] decimal(10,2)  NULL,
	[Tax_Amount] decimal(10,2)  NULL,
    [GST] varchar(10)  NULL,
	[Description] varchar(100)  NULL,
    [Activity code] varchar(50)  NULL,
	[Expense_Type] varchar(100)  NULL,
	[Line_desription] varchar(100)  NULL,
	[Entity] varchar(10)  NULL,
	[Costing] varchar(10)  NULL,
	[Activity] varchar(10)  NULL,
	[Natural] varchar(10)  NULL,
	[Staus] varchar(10)  NULL

);
GO


-- Creating primary key on [reconcile_invocie_key] in table 'RECONCILE_INVOICE_FACT'
ALTER TABLE [conform_finance].[EXPENSE_FACT]
ADD CONSTRAINT [PK_EXPENSE_FACT]
    PRIMARY KEY CLUSTERED ([Expense_key] ASC);
GO

-- creating foreign key on [date_key] in table [EXPENSE_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_date_key]
    foreign key ([Transaction_date_key])
    references [conform_finance].[date_dim]
        (date_key)
    on delete no action on update no action;
go

-- creating foreign key on [employee_key] in table [EXPENSE_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_employee_key]
    foreign key ([employee_key])
    references [conform_finance].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go


-- creating foreign key on [Manager_key] in table [EXPENSE_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_Manager_key]
    foreign key ([Manager_key])
    references [conform_finance].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go




-- creating foreign key on [portfolio_key] in table [DEBTOR_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_portfolio_key]
    foreign key ([portfolio_key])
    references [conform_finance].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go
-- creating foreign key on [service_stream_key] in table [EXPENSE_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_service_stream_key]
    foreign key ([service_stream_key])
    references [conform_finance].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go
-- creating foreign key on [program_key] in table [EXPENSE_FACT]
alter table [conform_finance].[EXPENSE_FACT]
add constraint [fk_conform_finance_EXPENSE_FACT_program_key]
    foreign key ([program_key])
    references [conform_finance].[program_dim]
        (program_key)
    on delete no action on update no action;
go


