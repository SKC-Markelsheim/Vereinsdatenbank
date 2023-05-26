CREATE TABLE [dbo].[Konten]
(
	[Id] INT NOT NULL IDENTITY(1,1) , 
    [BankenID] INT NULL,
    [IBAN] VARCHAR(28) NOT NULL, 
    [KontoNr] INT NULL, 
    CONSTRAINT [PK_Konten] PRIMARY KEY (Id),
    CONSTRAINT [AK_Konten_IBAN] UNIQUE ([IBAN] ASC) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Konten ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Konten',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Banken.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Konten',
    @level2type = N'COLUMN',
    @level2name = N'BankenID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'IBAN oder Kontonummer des Mitglieds',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Konten',
    @level2type = N'COLUMN',
    @level2name = N'IBAN'
GO

GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'KontoNr bei der Bank',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Konten',
    @level2type = N'COLUMN',
    @level2name = N'KontoNr'
GO

CREATE INDEX [IX_Konten_IBAN] ON [dbo].[Konten] (IBAN)

GO

GO


GO

CREATE INDEX [IX_Konten_BankenID] ON [dbo].[Konten] ([BankenID])
