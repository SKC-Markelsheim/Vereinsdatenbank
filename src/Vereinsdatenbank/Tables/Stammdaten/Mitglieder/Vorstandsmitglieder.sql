CREATE TABLE [dbo].[Vorstandsmitglieder]
(
	[ID] INT NOT NULL  IDENTITY(1,1), 
    [MitgliedID] INT NOT NULL, 
    [Funktion] VARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_Vorstandsmitglieder,MitgliederID] FOREIGN KEY (MitgliedID) REFERENCES [Mitglieder]([Id]), 
    CONSTRAINT [PK_Vorstandsmitglieder] PRIMARY KEY (ID) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'FunktionsID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vorstandsmitglieder',
    @level2type = N'COLUMN',
    @level2name = N'ID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fremdschlüssel zu Mitglieder',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vorstandsmitglieder',
    @level2type = N'COLUMN',
    @level2name = N'MitgliedID'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Funktion des Mitglieds',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vorstandsmitglieder',
    @level2type = N'COLUMN',
    @level2name = N'Funktion'