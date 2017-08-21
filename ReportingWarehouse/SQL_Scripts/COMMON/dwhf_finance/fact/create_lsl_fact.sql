-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/21/2017 11:37:32
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhb\finance\finance_conceptual.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHF_FINANCE];
GO


-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------
IF OBJECT_ID(N'[finance].[fk_lsl_fact_calcualte_date_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_calcualte_date_key];
GO
IF OBJECT_ID(N'[finance].[fk_lsl_fact_employee_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_employee_key];
GO
IF OBJECT_ID(N'[finance].[fk_lsl_fact_portfolio_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_portfolio_key];
GO
IF OBJECT_ID(N'[finance].[fk_lsl_fact_primary_position_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_primary_position_key];
GO
IF OBJECT_ID(N'[finance].[fk_lsl_fact_program_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_program_key];
GO
IF OBJECT_ID(N'[finance].[fk_lsl_fact_service_stream_key]', 'F') IS NOT NULL
    ALTER TABLE [finance].[lsl_fact] DROP CONSTRAINT [fk_lsl_fact_service_stream_key];
GO
-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[finance].[lsl_fact]', 'U') IS NOT NULL
    DROP TABLE [finance].[lsl_fact];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'lsl_fact'
CREATE TABLE [finance].[lsl_fact] (
    [LSL_Key] int  NOT NULL,
    [calcualte_date_key] int  NOT NULL,
    [employee_key] int  NOT NULL,
    [portfolio_key] int  NOT NULL,
    [service_stream_key] int  NOT NULL,
    [program_key] int  NOT NULL,
    [primary_position_key] int  NOT NULL,
    [Date_of_Service] datetime  NULL,
    [Years_of_Completed_Service_asat_calculateday] decimal(15,4)  NULL,
    [Years_Rounded_Down] int  NULL,
    [Weeks_basedon_Completed_yearsofService] decimal(15,4)  NULL,
    [Weeks_asat_calculateday] decimal(15,4)  NULL,
    [LSL_Average_Hours] decimal(15,4)  NULL,
    [Hours] decimal(15,4)  NULL,
    [Hourly_Rate] decimal(15,6)  NULL,
    [Liability] decimal(15,4)  NULL,
    [Probability] decimal(15,4)  NULL,
    [Revised_Liability_based_on_probability] decimal(15,4)  NULL,
    [Primary_Cost_Centre] varchar(10)  NULL,
    [Primary_Work_Location] varchar(100)  NULL,
    [WorkCover_20162017] decimal(15,6)  NULL,
    [Liability_at_Entitlement_Wagesgrowth] decimal(15,4)  NULL,
    [NPV_of_Liability] decimal(15,4)  NULL,
    [Casual_Factor] decimal(15,4)  NULL,
    [NPV_after_casual_factor] decimal(15,4)  NULL,
    [Add_Super] decimal(15,4)  NULL,
    [Add_Workcover] decimal(15,4)  NULL,
    [Ave_WC_Rate] decimal(15,4)  NULL,
    [LY_Ave_Workcover_rate] decimal(15,4)  NULL,
    [Current_NonCurrent] varchar(20)  NULL,
    [C8000or9000] varchar(10)  NULL
);
GO


-- Creating primary key on [LSL_Key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [PK_lsl_fact]
    PRIMARY KEY CLUSTERED ([LSL_Key] ASC);
GO



-- Creating foreign key on [calcualte_date_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_calcualte_date_key]
    FOREIGN KEY ([calcualte_date_key])
    REFERENCES [finance].[date_dim]
        ([date_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_calcualte_date_key'
CREATE INDEX [IX_fk_lsl_fact_calcualte_date_key]
ON [finance].[lsl_fact]
    ([calcualte_date_key]);
GO

-- Creating foreign key on [employee_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_employee_key]
    FOREIGN KEY ([employee_key])
    REFERENCES [finance].[employee_dim]
        ([employee_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_employee_key'
CREATE INDEX [IX_fk_lsl_fact_employee_key]
ON [finance].[lsl_fact]
    ([employee_key]);
GO

-- Creating foreign key on [portfolio_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_portfolio_key]
    FOREIGN KEY ([portfolio_key])
    REFERENCES [finance].[portfolio_dim]
        ([portfolio_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_portfolio_key'
CREATE INDEX [IX_fk_lsl_fact_portfolio_key]
ON [finance].[lsl_fact]
    ([portfolio_key]);
GO

-- Creating foreign key on [primary_position_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_primary_position_key]
    FOREIGN KEY ([primary_position_key])
    REFERENCES [finance].[position_dim]
        ([position_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_primary_position_key'
CREATE INDEX [IX_fk_lsl_fact_primary_position_key]
ON [finance].[lsl_fact]
    ([primary_position_key]);
GO

-- Creating foreign key on [program_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_program_key]
    FOREIGN KEY ([program_key])
    REFERENCES [finance].[program_dim]
        ([program_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_program_key'
CREATE INDEX [IX_fk_lsl_fact_program_key]
ON [finance].[lsl_fact]
    ([program_key]);
GO

-- Creating foreign key on [service_stream_key] in table 'lsl_fact'
ALTER TABLE [finance].[lsl_fact]
ADD CONSTRAINT [fk_lsl_fact_service_stream_key]
    FOREIGN KEY ([service_stream_key])
    REFERENCES [finance].[service_stream_dim]
        ([service_stream_key])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_lsl_fact_service_stream_key'
CREATE INDEX [IX_fk_lsl_fact_service_stream_key]
ON [finance].[lsl_fact]
    ([service_stream_key]);
GO
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------