-- use the database
USE CustomerHistoryData;
-- Checking for missing values in the primary key in the data staging table
SELECT *
FROM dbo.DataStaging
WHERE CLIENTNUM IS NULL;