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
IF OBJECT_ID(N'[finance].[employee_dim]', 'U') IS NOT NULL
    DROP TABLE [finance].[employee_dim];
GO




-- Creating table 'employee_dim'
CREATE TABLE [finance].[employee_dim] (
    [employee_key] int NOT NULL,
    [id_number] int  NULL,
    [given_name] varchar(50)  NULL,
    [family_name] varchar(50)  NULL,
    [preferred_name] varchar(50)  NULL,
    [gender] varchar(10)  NULL,
    [date_of_birth] datetime  NULL,
    [passport_number] varchar(30)  NULL,
    [visa_number] varchar(30)  NULL,
    [country_of_origin] varchar(50)  NULL,
    [employee_type] varchar(20)  NULL,
    [employee_class] varchar(20)  NULL,
    [change_reason_code] varchar(5)  NULL,
    [change_reason_description] varchar(50)  NULL,
    [row_effective_date] datetime  NULL,
    [row_expiration_date] datetime  NULL,
    [current_row_indicator] nvarchar(1)  NULL,
    [pay_per_period] decimal(12,6)  NULL,
    [rem_level] varchar(60)  NULL,
    [rem_range] varchar(60)  NULL,
    [car_flag] varchar(3)  NULL,
    [phone_flag] varchar(3)  NULL,
    [salary_continuance] varchar(60)  NULL,
    [street_address_line1] varchar(50)  NULL,
    [street_address_line2] varchar(50)  NULL,
    [street_address_line3] varchar(50)  NULL,
    [street_city] varchar(50)  NULL,
    [street_state] varchar(50)  NULL,
    [street_post_code] varchar(10)  NULL,
    [street_country_code] varchar(10)  NULL,
    [street_telephone1] varchar(20)  NULL,
    [street_telephone2] varchar(20)  NULL,
    [street_telephone3] varchar(20)  NULL,
    [street_mobile1] varchar(20)  NULL,
    [street_mobile2] varchar(20)  NULL,
    [street_email1] varchar(100)  NULL,
    [street_email2] varchar(100)  NULL,
    [postal_address_line1] varchar(50)  NULL,
    [postal_address_line2] varchar(50)  NULL,
    [postal_address_line3] varchar(50)  NULL,
    [postal_city] varchar(50)  NULL,
    [postal_state] varchar(50)  NULL,
    [postal_post_code] varchar(10)  NULL,
    [postal_country_code] varchar(10)  NULL,
    [postal_telephone1] varchar(20)  NULL,
    [postal_telephone2] varchar(20)  NULL,
    [postal_telephone3] varchar(20)  NULL,
    [postal_mobile1] varchar(20)  NULL,
    [postal_mobile2] varchar(20)  NULL,
    [postal_email1] varchar(100)  NULL,
    [postal_email2] varchar(100)  NULL,
    [ethnic_group] varchar(10)  NULL,
    [pay_period_unit] varchar(1)  NULL,
    [units_per_period] decimal(9,6)  NULL,
    [visa_type] varchar(64)  NULL,
    [fte] decimal(7,6)  NULL,
    [salary] decimal(18,6)  NULL,
    [contact_family_name] varchar(50)  NULL,
    [contact_given_name] varchar(50)  NULL,
    [contact_dependant_flag] varchar(1)  NULL,
    [contact_type] varchar(20)  NULL,
    [contact_address_line1] varchar(50)  NULL,
    [contact_address_line2] varchar(50)  NULL,
    [contact_address_line3] varchar(50)  NULL,
    [contact_address_city] varchar(50)  NULL,
    [contact_address_state] varchar(50)  NULL,
    [contact_address_post_code] varchar(10)  NULL,
    [contact_address_country_code] varchar(10)  NULL,
    [contact_telephone1] varchar(20)  NULL,
    [contact_telephone2] varchar(20)  NULL,
    [contact_telephone3] varchar(20)  NULL,
    [contact_mobile1] varchar(20)  NULL,
    [contact_mobile2] varchar(20)  NULL,
    [contact_email1] varchar(100)  NULL,
    [contact_email2] varchar(100)  NULL,
    [user_id] varchar(14)  NULL,
    [AD_UserID] varchar(100)  NULL,
    [ASA_Email] varchar(100)  NULL
);
GO


-- Creating primary key on [employee_key] in table 'employee_dim'
ALTER TABLE [finance].[employee_dim]
ADD CONSTRAINT [PK_employee_dim]
    PRIMARY KEY CLUSTERED ([employee_key] ASC);
GO


