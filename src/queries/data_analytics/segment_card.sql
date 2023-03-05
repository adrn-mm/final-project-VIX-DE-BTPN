-- select database
USE CustomerHistoryData;
-- segment by credit card
SELECT Status,
    CardCategory,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    CardCategory;