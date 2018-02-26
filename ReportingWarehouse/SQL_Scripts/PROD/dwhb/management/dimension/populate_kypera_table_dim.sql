-------------------
-- PROD environment
-------------------
use dwhb;
GO
-- schema: kypera source data
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_Occupancy', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_RentCalculation_Arrears_EffectiveBalances', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Block', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_BlockUnit', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_District', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_scheme', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Unit', 'kypera', 'dbo', 'anglicare', 'appsql-3');
INSERT INTO [management].[TABLE_DIM] VALUES ('Security_user', 'kypera', 'dbo', 'anglicare', 'appsql-3');

-- schema: replicated kypera tables
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_Occupancy', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('Occupancies_RentCalculation_Arrears_EffectiveBalances', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Block', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_BlockUnit', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_District', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_scheme', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('PropertyStructure_Unit', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');
INSERT INTO [management].[TABLE_DIM] VALUES ('Security_user', 'dwh', 'extract_kypera', 'dwhb', 'AZ-SQLBI01');


-- schema: conform_riskman
INSERT INTO [management].[TABLE_DIM] VALUES ('Kypera_Tenancy_Balance_Fact', 'dwh', 'conform_finance', 'dwhb', 'AZ-SQLBI01');




-- schema: riskman
INSERT INTO [management].[TABLE_DIM] VALUES ('Kypera_Tenancy_Balance_Fact', 'dwh', 'finance', 'dwhf_finance', 'AZ-SQLBI01');i 
