CREATE TABLE [dbo].[PartieArten]
(
	[Id] INT NOT NULL IDENTITY, 
    [Art] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_PartieArten] PRIMARY KEY ([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Schlüssel der PartieArten',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieArten',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Beschreibung bzw. Name der Spielart',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PartieArten',
    @level2type = N'COLUMN',
    @level2name = N'Art'