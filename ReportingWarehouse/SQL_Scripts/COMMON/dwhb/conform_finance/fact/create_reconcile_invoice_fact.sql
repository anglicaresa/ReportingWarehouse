SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHB];


IF OBJECT_ID(N'[conform_finance].[RECONCILE_INVOICE_FACT]', 'U') IS NOT NULL
    DROP TABLE [conform_finance].[RECONCILE_INVOICE_FACT];
GO



-- Creating table 'RECONCILE_INVOICE_FACT'
CREATE TABLE [conform_finance].[RECONCILE_INVOICE_FACT] (
    [reconcile_invocie_key] int IDENTITY(1,1) NOT NULL,
    [account_key] int  NULL,
    [Accnbri] int  NULL,
    [Client_id] int  NULL,
    [Portfolio_key] int  NULL,
    [Service_key] int  NULL,
    [Program_key] int  NULL,
    [ComCare_service_type] varchar(20)  NULL,
    [Invocie_date_key] int  NULL,
    [Invocie_Amount] decimal(14,2)  NULL,
    [Invoice_Period] varchar(40)  NULL,
    [Invoice_Period_Start_Date_Key] int NULL,
    [Invoice_Period_End_Date_Key] int NULL,
    [Invoice_Description] varchar(40)  NULL,
    [ComCare_serviced_hours] decimal(28,5)  NULL,
    [ComCare_service_charges] decimal(28,5)  NULL,
    [Balance_flag] varchar(1)  NULL,
	[Glcode] varchar(15) NULL,
	[costing] varchar(4) NULL,
	[cost_centre] varchar(50) NULL
);
GO


-- Creating primary key on [reconcile_invocie_key] in table 'RECONCILE_INVOICE_FACT'
ALTER TABLE [conform_finance].[RECONCILE_INVOICE_FACT]
ADD CONSTRAINT [PK_RECONCILE_INVOICE_FACT]
    PRIMARY KEY CLUSTERED ([reconcile_invocie_key] ASC);
GO


