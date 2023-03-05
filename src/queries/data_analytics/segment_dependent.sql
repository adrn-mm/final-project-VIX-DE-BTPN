-- select database
USE CustomerHistoryData;
-- segment by number of dependents
SELECT Status,
    DependentCount,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    DependentCount;