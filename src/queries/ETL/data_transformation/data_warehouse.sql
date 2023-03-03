-- use the database
USE CustomerHistoryData;
-- create a new table
CREATE TABLE dbo.DataWarehouse(
    CLIENTNUM int,
    idstatus varchar(255),
    Customer_Age int,
    Gender varchar(255),
    Dependent_count int,
    Educationid varchar(255),
    Maritalid varchar(255),
    Income_Category varchar(255),
    Card_Category varchar(255),
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