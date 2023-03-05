-- use the database
USE CustomerHistoryData -- detect the negative values
SELECT COUNT(*) AS TotalNegativeRows
FROM dbo.DataWarehouse
WHERE Months_on_book < 0
    OR Total_Relationship_Count < 0
    OR Months_Inactive_12_mon < 0
    OR Contacts_Count_12_mon < 0
    OR Credit_Limit < 0
    OR Total_Revolving_Bal < 0
    OR Avg_Open_To_Buy < 0
    OR Total_Trans_Amt < 0
    OR Total_Trans_Ct < 0
    OR Avg_Utilization < 0;