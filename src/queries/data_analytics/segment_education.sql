-- select database
USE CustomerHistoryData;
-- segment by education
SELECT Status,
    Education,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    Education;