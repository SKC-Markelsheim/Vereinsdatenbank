CREATE TABLE [dbo].[LigaMannschaftZuordnungen]
(
	[Id]            INT IDENTITY(1,1)   NOT NULL, 
    [Mannschaft]    CHAR                 NOT NULL, 
    [Liga]          VARCHAR(100)        NOT NULL, 
    CONSTRAINT [PK_LigaMannschaftZuordnung] PRIMARY KEY ([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Um welche Mannschaft handelt es sich in dieser Zuordnung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LigaMannschaftZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'Mannschaft'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LigaMannschaftZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Liganame, in der Mannschaft spielt',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'LigaMannschaftZuordnungen',
    @level2type = N'COLUMN',
    @level2name = N'Liga'