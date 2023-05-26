CREATE TABLE [dbo].[Vereinsrekorde]
(
	[Id]            INT IDENTITY(1,1)   NOT NULL, 
    [Datum]         DATE            NOT NULL, 
    [Beschreibung]  VARCHAR(150)        NOT NULL, 
    [Rekordwert]    INT                 NOT NULL, 
    [SpielerID]     INT                 NULL, 
    CONSTRAINT [PK_Vereinsrekorde] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Vereinsrekorde_Mitglieder] FOREIGN KEY ([SpielerID]) REFERENCES [Mitglieder]([Id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Datum, wann Rekord erspielt worden ist',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereinsrekorde',
    @level2type = N'COLUMN',
    @level2name = N'Datum'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Genaue Beschreibung des Vereinsrekord',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereinsrekorde',
    @level2type = N'COLUMN',
    @level2name = N'Beschreibung'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Primärschlüssel des Vereinsrekord',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereinsrekorde',
    @level2type = N'COLUMN',
    @level2name = N'Id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Ergebnis o.Ä., an dem Rekord gemessen wird',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereinsrekorde',
    @level2type = N'COLUMN',
    @level2name = N'Rekordwert'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Falls Einzelrekord, wird der Spieler hier verknüpft. Fremdschlüssel auf Tabelle Mitglieder.ID',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Vereinsrekorde',
    @level2type = N'COLUMN',
    @level2name = N'SpielerID'