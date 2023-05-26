CREATE TABLE [dbo].[Postings]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [Datum] DATETIME NOT NULL, 
    [Erstelldatum] DATETIME NOT NULL DEFAULT GETDATE(), 
    [Inhalt] VARCHAR(MAX) NOT NULL, 
    [Plattform] INT NOT NULL, 
    [GraphId] INT NULL, 
    CONSTRAINT [PK_Postings] PRIMARY KEY (Id), 
    CONSTRAINT [FK_Postings_SocialMediaPlattformen] FOREIGN KEY (Plattform) REFERENCES SocialMediaPlattformen(Id) 
)
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zeitpunkt des Postings',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Postings',
    @level2type = N'COLUMN',
    @level2name = N'Datum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zeitpunkt der Erstellung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Postings',
    @level2type = N'COLUMN',
    @level2name = N'Erstelldatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Inhalt des Postings (reiner Text)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Postings',
    @level2type = N'COLUMN',
    @level2name = N'Inhalt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'PlattformID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Postings',
    @level2type = N'COLUMN',
    @level2name = N'Plattform'

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID der Graph API',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Postings',
    @level2type = N'COLUMN',
    @level2name = N'GraphId'