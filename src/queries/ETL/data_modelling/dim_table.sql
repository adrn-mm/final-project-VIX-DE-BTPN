-- Use the database
USE CustomerHistoryData;
-- Buat tabel dimensi
CREATE TABLE dbo.DimClient (
    ClientKey INT PRIMARY KEY,
    ClientID INT,
    Status VARCHAR(255),
    CustomerAge INT,
    Gender VARCHAR(255),
    DependentCount INT,
    Education VARCHAR(255),
    MaritalStatus VARCHAR(255),
    IncomeCategory VARCHAR(255)
);
CREATE TABLE dbo.DimCard (
    CardKey INT PRIMARY KEY,
    CardCategory VARCHAR(255),
);
CREATE TABLE dbo.DimProduct (
    ProductKey INT PRIMARY KEY,
    TotalRelationshipCount INT
);
CREATE TABLE dbo.DimContact (
    ContactKey INT PRIMARY KEY,
    MonthsOnBook INT,
    MonthsInactiveIn12Month INT,
    ContactsCountIn12Month INT
);
-- Populate dims table
INSERT INTO dbo.DimClient (
        ClientKey,
        ClientID,
        Status,
        CustomerAge,
        Gender,
        DependentCount,
        Education,
        MaritalStatus,
        IncomeCategory
    )
SELECT ROW_NUMBER() OVER (
        ORDER BY ClientID
    ),
    ClientID,
    Status,
    CustomerAge,
    Gender,
    DependentCount,
    Education,
    MaritalStatus,
    IncomeCategory
FROM (
        SELECT DISTINCT ClientID,
            Status,
            CustomerAge,
            Gender,
            DependentCount,
            Education,
            MaritalStatus,
            IncomeCategory
        FROM dbo.DataWarehouse
    ) AS D;
INSERT INTO dbo.DimCard (CardKey, CardCategory)
SELECT ROW_NUMBER() OVER (
        ORDER BY CardCategory
    ),
    CardCategory
FROM (
        SELECT DISTINCT CardCategory
        FROM dbo.DataWarehouse
    ) AS D;
INSERT INTO dbo.DimProduct (ProductKey, TotalRelationshipCount)
SELECT ROW_NUMBER() OVER (
        ORDER BY TotalRelationshipCount
    ),
    TotalRelationshipCount
FROM (
        SELECT DISTINCT TotalRelationshipCount
        FROM dbo.DataWarehouse
    ) AS D;
INSERT INTO dbo.DimContact (
        ContactKey,
        MonthsOnBook,
        MonthsInactiveIn12Month,
        ContactsCountIn12Month
    )
SELECT ROW_NUMBER() OVER (
        ORDER BY MonthsOnBook,
            MonthsInactiveIn12Month,
            ContactsCountIn12Month
    ),
    MonthsOnBook,
    MonthsInactiveIn12Month,
    ContactsCountIn12Month
FROM (
        SELECT DISTINCT MonthsOnBook,
            MonthsInactiveIn12Month,
            ContactsCountIn12Month
        FROM dbo.DataWarehouse
    ) AS D;