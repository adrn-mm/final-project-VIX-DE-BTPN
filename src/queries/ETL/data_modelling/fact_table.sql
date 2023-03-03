-- Use the database
USE CustomerHistoryData;
-- Create fact table
CREATE TABLE dbo.FactTransaction (
    ClientKey INT,
    CardKey INT,
    ProductKey INT,
    ContactKey INT,
    CreditLimit FLOAT,
    TotalRevolvingBalance INT,
    AvgOpenToBuy FLOAT,
    TotalTransAmt INT,
    TotalTransCT INT,
    AvgUtilizationRatio FLOAT
);
-- Populate fact table
INSERT INTO dbo.FactTransaction (
        ClientKey,
        CardKey,
        ProductKey,
        ContactKey,
        CreditLimit,
        TotalRevolvingBalance,
        AvgOpenToBuy,
        TotalTransAmt,
        TotalTransCT,
        AvgUtilizationRatio
    )
SELECT D.ClientKey,
    C.CardKey,
    P.ProductKey,
    Co.ContactKey,
    CreditLimit,
    TotalRevolvingBalance,
    AvgOpenToBuy,
    TotalTransAmt,
    TotalTransCt,
    AvgUtilizationRatio
FROM dbo.DataWarehouse AS F
    JOIN dbo.DimClient AS D ON F.ClientID = D.ClientID
    JOIN dbo.DimCard AS C ON F.CardCategory = C.CardCategory
    JOIN dbo.DimProduct AS P ON F.TotalRelationshipCount = P.TotalRelationshipCount
    JOIN dbo.DimContact AS Co ON F.MonthsInactiveIn12Month = Co.MonthsInactiveIn12Month
    AND F.ContactsCountIn12Month = Co.ContactsCountIn12Month
    AND F.MonthsOnBook = Co.MonthsOnBook;