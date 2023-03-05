-- select the database
USE CustomerHistoryData;
-- Segment by Status
SELECT Status,
    COUNT(*) AS Total
FROM dbo.DataWarehouse
GROUP BY Status;