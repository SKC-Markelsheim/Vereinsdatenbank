CREATE TABLE [dbo].[SocialMediaPlattformen]
(
	[Id] INT NOT NULL IDENTITY(1,1) , 
    [Name] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_SocialMediaPlattformen] PRIMARY KEY (Id)
)
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Plattformname',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'SocialMediaPlattformen',
    @level2type = N'COLUMN',
    @level2name = N'Name'