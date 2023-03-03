-- Use the database
USE CustomerHistoryData;
-- Add relationship to DimClient
ALTER TABLE dbo.FactTransaction
ADD CONSTRAINT FK_FactTransaction_DimClient FOREIGN KEY (ClientKey) REFERENCES dbo.DimClient(ClientKey);
-- Add relationship to DimCard
ALTER TABLE dbo.FactTransaction
ADD CONSTRAINT FK_FactTransaction_DimCard FOREIGN KEY (CardKey) REFERENCES dbo.DimCard(CardKey);
-- Add relationship to DimContact
ALTER TABLE dbo.FactTransaction
ADD CONSTRAINT FK_FactTransaction_DimContact FOREIGN KEY (ContactKey) REFERENCES dbo.DimContact(ContactKey);
-- Add relationship to DimProduct
ALTER TABLE dbo.FactTransaction
ADD CONSTRAINT FK_FactTransaction_DimProduct FOREIGN KEY (ProductKey) REFERENCES dbo.DimProduct(ProductKey);