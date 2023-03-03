-- use the database
USE CustomerHistoryData;
-- populate the data warehouse table with transformed data
INSERT INTO dbo.DataWarehouse (
        CLIENTNUM,
        idstatus,
        Customer_Age,
        Gender,
        Dependent_count,
        Educationid,
        Maritalid,
        Income_Category,
        Card_Category,
        Months_on_book,
        Total_Relationship_Count,
        Months_Inactive_12_mon,
        Contacts_Count_12_mon,
        Credit_Limit,
        Total_Revolving_Bal,
        Avg_Open_To_Buy,
        Total_Trans_Amt,
        Total_Trans_Ct,
        Avg_Utilization
    )
SELECT CLIENTNUM,
    CASE
        WHEN Idstatus = 1 THEN 'Existing Customer'
        WHEN Idstatus = 2 THEN 'Attrited Customer'
        ELSE ''
    END AS Idstatus,
    Customer_Age,
    Gender,
    Dependent_count,
    CASE
        WHEN Educationid = 1 THEN 'High School'
        WHEN Educationid = 2 THEN 'Graduate'
        WHEN Educationid = 3 THEN 'Uneducated'
        WHEN Educationid = 4 THEN 'Unknown'
        WHEN Educationid = 5 THEN 'College'
        WHEN Educationid = 6 THEN 'Post-Graduate'
        WHEN Educationid = 7 THEN 'Doctorate'
        ELSE ''
    END AS Educationid,
    CASE
        WHEN Maritalid = 1 THEN 'Married'
        WHEN Maritalid = 2 THEN 'Single'
        WHEN Maritalid = 3 THEN 'Unknown'
        WHEN Maritalid = 0 THEN 'Divorced'
        ELSE ''
    END AS Maritalid,
    Income_Category,
    CASE
        WHEN Card_Category = 1 THEN 'Blue'
        WHEN Card_Category = 2 THEN 'Gold'
        WHEN Card_Category = 3 THEN 'Silver'
        WHEN Card_Category = 4 THEN 'Platinum'
        ELSE ''
    END AS Card_Category,
    Months_on_book,
    Total_Relationship_Count,
    Months_Inactive_12_mon,
    Contacts_Count_12_mon,
    Credit_Limit,
    Total_Revolving_Bal,
    Avg_Open_To_Buy,
    Total_Trans_Amt,
    Total_Trans_Ct,
    Avg_Utilization
FROM dbo.DataStaging