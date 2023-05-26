-- =============================================
-- Author:		<Kaltenbach, Robin>
-- Create date: 16.10.2020
-- Description:	Erzeugt die fertige Übersicht, die auf der Homepage eingefügt werden soll
-- =============================================
CREATE PROCEDURE [dbo].[ErzeugeLivetickerUebersichtAnhandSaison]
	@saison VARCHAR(50)
AS
	SELECT 
		FORMAT(Livetickeruebersicht.Datum, 'dd.MM.yyyy') as Datum,
		Livetickeruebersicht.Heim,
		Livetickeruebersicht.Gast,
		CONCAT('<a href="https://www.tickaroo.com/ticker/', 
				Livetickeruebersicht.TickerID, 
				'" rel="noopener noreferrer" target="_blank">Liveticker</a>') 
		AS Tickerlink
	FROM Livetickeruebersicht
	WHERE Saison = @saison
	ORDER BY Livetickeruebersicht.Datum
