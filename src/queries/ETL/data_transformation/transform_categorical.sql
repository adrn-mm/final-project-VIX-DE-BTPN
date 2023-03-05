-- use the database
USE CustomerHistoryData;
-- change table column's data type before transforming
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Idstatus VARCHAR(255);
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Customer_Age VARCHAR(255);
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Educationid VARCHAR(255);
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Maritalid VARCHAR(255);
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Card_Category VARCHAR(255);
ALTER TABLE dbo.DataWarehouse
ALTER COLUMN Dependent_count VARCHAR(255);
-- transform categorical data
UPDATE dbo.DataWarehouse
SET Idstatus = CASE
        WHEN Idstatus = 1 THEN 'Existing Customer'
        WHEN Idstatus = 2 THEN 'Attrited Customer'
        ELSE 'Unknown'
    END,
    Customer_Age = CASE
        WHEN Customer_Age < 30 THEN '20s'
        WHEN Customer_Age >= 30
        AND Customer_Age < 40 THEN '30s'
        WHEN Customer_Age >= 40
        AND Customer_Age < 50 THEN '40s'
        WHEN Customer_Age >= 50
        AND Customer_Age < 60 THEN '50s'
        WHEN Customer_Age >= 60
        AND Customer_Age < 70 THEN '60s'
        WHEN Customer_Age >= 70 THEN '70s+'
        ELSE 'Unknown'
    END,
    Educationid = CASE
        WHEN Educationid = 1 THEN 'High School'
        WHEN Educationid = 2 THEN 'Graduate'
        WHEN Educationid = 3 THEN 'Uneducated'
        WHEN Educationid = 4 THEN 'Unknown'
        WHEN Educationid = 5 THEN 'College'
        WHEN Educationid = 6 THEN 'Post-Graduate'
        WHEN Educationid = 7 THEN 'Doctorate'
        ELSE 'Unknown'
    END,
    Maritalid = CASE
        WHEN Maritalid = 1 THEN 'Married'
        WHEN Maritalid = 2 THEN 'Single'
        WHEN Maritalid = 3 THEN 'Unknown'
        WHEN Maritalid = 0 THEN 'Divorced'
        ELSE 'Unknown'
    END,
    Card_Category = CASE
        WHEN Card_Category = 1 THEN 'Blue'
        WHEN Card_Category = 2 THEN 'Gold'
        WHEN Card_Category = 3 THEN 'Silver'
        WHEN Card_Category = 4 THEN 'Platinum'
        ELSE 'Unknown'
    END,
    Dependent_count = CASE
        WHEN Dependent_count = 0 THEN 'No Dependents'
        WHEN Dependent_count BETWEEN 1 AND 2 THEN 'Few Dependents'
        WHEN Dependent_count BETWEEN 3 AND 4 THEN 'Moderate Dependents'
        WHEN Dependent_count > 4 THEN 'Many Dependents'
        ELSE 'Unknown'
    END;