CREATE TABLE [dbo].[Mannschaften]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [Mannschaftsname] VARCHAR(100) NOT NULL, 
    [VereinsId] INT NOT NULL, 
    CONSTRAINT [PK_Mannschaften] PRIMARY KEY ([Id]),
    CONSTRAINT [AK_Mannschaften_Mannschaftsname] UNIQUE ([Mannschaftsname] ASC), 
    CONSTRAINT [FK_Mannschaften_Vereine] FOREIGN KEY ([VereinsId]) REFERENCES [Vereine]([Id]) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mannschaftsschlüssel',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mannschaften',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name der einzelnen Mannschaft',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mannschaften',
    @level2type = N'COLUMN',
    @level2name = N'Mannschaftsname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel auf Vereine.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Mannschaften',
    @level2type = N'COLUMN',
    @level2name = N'VereinsId'