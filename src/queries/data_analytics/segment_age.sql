-- select the database
USE CustomerHistoryData;
-- Segment by Status
SELECT CustomerAge,
    COUNT(*) AS Total
FROM dbo.DataWarehouse
GROUP BY CustomerAge;