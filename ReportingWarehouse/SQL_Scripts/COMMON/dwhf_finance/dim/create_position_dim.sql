-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/21/2017 11:37:32
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhb\conform_finance\conform_finance_conceptual.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHF_FINANCE];
GO


-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[finance].[position_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[position_dim];
GO



-- Creating table 'position_dim'
CREATE TABLE [finance].[position_dim] (
    [position_key] int IDENTITY(1,1) NOT NULL,
    [position_name] varchar(50)  NULL,
    [position_code] varchar(50)  NULL,
    [contract_type] varchar(20)  NULL,
    [condition] varchar(10)  NULL,
    [grade] varchar(10)  NULL,
    [level] varchar(10)  NULL,
    [work_location] varchar(50)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] varchar(1)  NULL,
    [trade_code] varchar(10)  NULL,
    [position_class] varchar(10)  NULL,
    [ts_fmt_name] varchar(10)  NULL
);
GO

-- Creating primary key on [position_key] in table 'position_dim'
ALTER TABLE [finance].[position_dim]
ADD CONSTRAINT [PK_position_dim]
    PRIMARY KEY CLUSTERED ([position_key] ASC);
GO