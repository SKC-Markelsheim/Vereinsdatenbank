CREATE TABLE [dbo].[Beitragssaetze]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [BeitragInEuro] DECIMAL(18, 2) NOT NULL, 
    [Beschreibung] VARCHAR(150) NULL DEFAULT 'Keine Beschreibung verfügbar', 
    CONSTRAINT [PK_Beitragssaetze] PRIMARY KEY (Id)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Beitrag in Euro pro Jahr',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Beitragssaetze',
    @level2type = N'COLUMN',
    @level2name = N'BeitragInEuro'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zusätzliche Beschreibung für den Datensatz',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Beitragssaetze',
    @level2type = N'COLUMN',
    @level2name = N'Beschreibung'