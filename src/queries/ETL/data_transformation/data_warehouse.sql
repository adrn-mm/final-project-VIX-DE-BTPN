-- use the database
USE CustomerHistoryData;
-- create a new table (data warehouse) that we're going to tranform
SELECT * INTO dbo.DataWarehouse
FROM dbo.DataStaging;