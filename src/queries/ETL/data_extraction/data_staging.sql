-- use the database
USE CustomerHistoryData;
-- create a new table
CREATE TABLE dbo.DataStaging(
    CLIENTNUM int,
    idstatus int,
    Customer_Age int,
    Gender varchar(255),
    Dependent_count int,
    Educationid int,
    Maritalid int,
    Income_Category varchar(255),
    Card_Category int,
    Months_on_book int,
    Total_Relationship_Count int,
    Months_Inactive_12_mon int,
    Contacts_Count_12_mon int,
    Credit_Limit float,
    Total_Revolving_Bal int,
    Avg_Open_To_Buy float,
    Total_Trans_Amt int,
    Total_Trans_Ct int,
    Avg_Utilization float
);
-- import the file
BULK
INSERT dbo.DataStaging
FROM 'C:\Users\LENOVO\OneDrive\Desktop\DE BTPN\data\raw\customer_data_history.csv' WITH(FORMAT = 'CSV', FIRSTROW = 2);