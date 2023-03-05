-- select database
USE CustomerHistoryData;
-- segment by gender
SELECT Status,
    Gender,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    Gender;