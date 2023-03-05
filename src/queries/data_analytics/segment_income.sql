-- select database
USE CustomerHistoryData;
-- segment by income
SELECT Status,
    IncomeCategory,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    IncomeCategory;