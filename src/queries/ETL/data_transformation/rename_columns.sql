-- Use the database you want to work with
USE CustomerHistoryData;
-- Rename the columns
EXEC sp_rename 'dbo.DataWarehouse.CLIENTNUM',
'ClientID',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.idstatus',
'Status',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Customer_Age',
'CustomerAge',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Dependent_count',
'DependentCount',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Educationid',
'Education',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Maritalid',
'MaritalStatus',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Income_Category',
'IncomeCategory',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Card_Category',
'CardCategory',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Months_on_book',
'MonthsOnBook',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Total_Relationship_Count',
'TotalRelationshipCount',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Months_Inactive_12_mon',
'MonthsInactiveIn12Month',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Contacts_Count_12_mon',
'ContactsCountIn12Month',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Credit_Limit',
'CreditLimit',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Total_Revolving_Bal',
'TotalRevolvingBalance',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Avg_Open_To_Buy',
'AvgOpenToBuy',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Total_Trans_Amt',
'TotalTransAmt',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Total_Trans_Ct',
'TotalTransCT',
'COLUMN';
EXEC sp_rename 'dbo.DataWarehouse.Avg_Utilization',
'AvgUtilizationRatio',
'COLUMN';