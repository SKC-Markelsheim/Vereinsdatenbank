CREATE FUNCTION [dbo].[GetNextLiveticker]
(
	@datum DATETIME = null
)
RETURNS @returntable TABLE
(
	[Id] INT, 
    [Datum] DATE, 
    [Heim] VARCHAR(50), 
    [Gast] VARCHAR(50), 
    [TickerLink] VARCHAR(150), 
    [TickerID] VARCHAR(25), 
    [Saison] VARCHAR(50), 
    [Mannschaft] CHAR(1), 
    [IstWkbvPokal] BIT,
    [PartieArt] INT
)
AS
BEGIN
	IF @datum IS NULL
    BEGIN
        SET @datum = GETDATE()
    END

    INSERT @returntable
   	SELECT TOP 1 * FROM Liveticker WHERE Datum >= @datum ORDER BY Datum 
	RETURN
END
