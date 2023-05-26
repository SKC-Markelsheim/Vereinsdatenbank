-- =============================================
-- Author:		<Kaltenbach, Robin>
-- Create date: <23.11.2019>
-- Description:	<Berechnet Alter eines Mitglieds neu>
-- =============================================
CREATE PROCEDURE [dbo].[EinzelnesMitgliedsalterBerechnen]
	@mitgliedID int
AS
DECLARE @GebDatum DATE
	SELECT @GebDatum = GebDatum
	FROM Mitglieder
	WHERE Id = @mitgliedID

	--UPDATE Mitglieder SET MitgliedsAlter = DATEDIFF(YEAR, @GebDatum, GETDATE()) WHERE Id = @mitgliedID
GO
