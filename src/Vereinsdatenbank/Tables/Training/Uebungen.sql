CREATE TABLE [dbo].[Uebungen]
(
	[Id] INT NOT NULL  IDENTITY(1,1), 
    [Bezeichnung] VARCHAR(50) NOT NULL, 
    [Beschreibung] VARCHAR(500) NOT NULL, 
    [BetroffeneKeile] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Uebungen] PRIMARY KEY (Id),
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ÜbungsNr',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Uebungen',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name der Übung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Uebungen',
    @level2type = N'COLUMN',
    @level2name = N'Bezeichnung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Erklärung der Übung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Uebungen',
    @level2type = N'COLUMN',
    @level2name = N'Beschreibung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Angabe betroffene Keile',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Uebungen',
    @level2type = N'COLUMN',
    @level2name = N'BetroffeneKeile'
GO

CREATE INDEX [IX_Uebungen_Id] ON [dbo].[Uebungen] (Id)
