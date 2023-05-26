-- =============================================
-- Author:		<Kaltenbach, Robin>
-- Create date: <16.11.2019>
-- Description:	<Berechnet Alter der Mitglieder neu>
-- =============================================
CREATE PROCEDURE AlterNeuBerechnen
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @mitgliedID INT
	DECLARE @GebDatum DATE
	DECLARE @alter INT
	DECLARE @alterNeu INT
	-- Insert statements for procedure here
	DECLARE  cMitglieder CURSOR LOCAL READ_ONLY FORWARD_ONLY 
	FOR 
		SELECT Id, GebDatum--, MitgliedsAlter
		FROM Mitglieder
	OPEN cMitglieder
	FETCH NEXT FROM cMitglieder INTO @mitgliedID, @GebDatum, @alter

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @GebDatum = '01.01.9999'
			SET @alterNeu = 0
		ELSE
			SET @alterNeu = DATEDIFF(DAY, @GebDatum, GETDATE())/365
			IF @alterNeu <> @alter
				--UPDATE Mitglieder SET MitgliedsAlter = @alterNeu WHERE Id = @mitgliedID
		FETCH NEXT FROM cMitglieder INTO @mitgliedID, @GebDatum, @alter
	END
END
GO
