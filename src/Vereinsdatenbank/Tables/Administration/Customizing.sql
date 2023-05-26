CREATE TABLE [dbo].[Customizing]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [Erstelldatum] DATETIME NOT NULL DEFAULT GETDATE(), 
    [Beschreibung] VARCHAR(250) NOT NULL, 
    [WertInt] INT NULL DEFAULT 0, 
    [WertString] VARCHAR(50) NULL,
    [LetzteAenderung] DATETIME NULL, 
    [Erfasser] VARCHAR(50) NOT NULL DEFAULT HOST_NAME() , 
    CONSTRAINT [PK_Customizing] PRIMARY KEY (Id) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel in Tabelle Customizing',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Beschreibung der Customizingvariable',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'Beschreibung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Numerischer Customizingwert',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'WertInt'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zeitpunkt der Erstellung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'Erstelldatum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Zeitpunkt der letzten Änderung',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'LetzteAenderung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Workstation des Erfassers',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'Erfasser'
GO

CREATE TRIGGER [dbo].[Trigger_Customizing]
    ON [dbo].[Customizing]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
        UPDATE Customizing SET LetzteAenderung = GETDATE() FROM inserted where Customizing.Id = inserted.Id
    END
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Customizingwert als String',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Customizing',
    @level2type = N'COLUMN',
    @level2name = N'WertString'