CREATE VIEW [dbo].[Livetickeruebersicht]
	AS 
	SELECT 
		Liveticker.Id,
		Liveticker.Datum, 
		CASE WHEN Liveticker.Heim = 'SKC'
			THEN 'SKC Markelsheim'
			ELSE Liveticker.Heim end as Heim, 
		CASE WHEN Liveticker.Gast = 'SKC'
			THEN 'SKC Markelsheim'
			ELSE Liveticker.Gast end as Gast,
		Liveticker.Saison,
		Liveticker.TickerID
	FROM Liveticker
