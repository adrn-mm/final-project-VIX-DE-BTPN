-- use the database
USE CustomerHistoryData;
-- Checking duplicate values in the primary key in the data staging table
SELECT CLIENTNUM,
    COUNT(CLIENTNUM)
FROm dbo.DataStaging
GROUP BY CLIENTNUM
HAVING COUNT(CLIENTNUM) > 1