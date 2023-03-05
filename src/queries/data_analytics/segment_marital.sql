-- select database
USE CustomerHistoryData;
-- segment by marital status
SELECT Status,
    MaritalStatus,
    COUNT(*) as Total
FROM dbo.DataWarehouse
GROUP BY Status,
    MaritalStatus;