CREATE TABLE [dbo].[Vereine]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [Matchcode] VARCHAR(100) NOT NULL, 
    [Bahnanlage] VARCHAR(50) NULL, 
    CONSTRAINT [PK_Vereine] PRIMARY KEY ([Id] ASC), 
    CONSTRAINT [AK_Vereine_Matchcode] UNIQUE ([Matchcode] ASC) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel der Tabelle',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereine',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Vereinsname',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereine',
    @level2type = N'COLUMN',
    @level2name = N'Matchcode'
GO

EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name der Bahnenanlage',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereine',
    @level2type = N'COLUMN',
    @level2name = N'Bahnanlage'