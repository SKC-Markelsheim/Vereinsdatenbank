CREATE TABLE [dbo].[Banken]
(
	[Id] INT NOT NULL IDENTITY(1,1) , 
    [BIC] VARCHAR(50) NOT NULL, 
    [BLZ] INT NULL, 
    [Bankname] VARCHAR(100) NULL, 
    CONSTRAINT [PK_Banken] PRIMARY KEY (Id)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'BIC der Bank',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Banken',
    @level2type = N'COLUMN',
    @level2name = N'BIC'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Bankleitzahl',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Banken',
    @level2type = N'COLUMN',
    @level2name = N'BLZ'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Banken ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Banken',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Name der jeweiligen Bank',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Banken',
    @level2type = N'COLUMN',
    @level2name = 'Bankname'
GO

CREATE INDEX [IX_Banken_BIC] ON [dbo].[Banken] (BIC)
