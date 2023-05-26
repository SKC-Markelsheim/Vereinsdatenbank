CREATE VIEW [dbo].[Mitglieder_Gesamt]
AS 
SELECT Mitglieder.Id, 
		Mitglieder.Vorname, 
		Mitglieder.Nachname, 
		ISNULL(Mitglieder.Geschlecht, ' ') as Geschlecht, 
		Mitglieder.GebDatum, 
		CASE WHEN Mitglieder.GebDatum = '9999-01-01'
		THEN 0
		ELSE DATEDIFF(DAY, Mitglieder.GebDatum, GETDATE())/365 
		END as Mitgliedsalter,
		ISNULL(Mitglieder.HandyNr, 'Nicht angegeben') as HandyNr,
		ISNULL(Mitglieder.TelefonNr, 'Nicht angegeben') as TelefonNr, 
		ISNULL(Mitglieder.EMail, 'Nicht angegeben') as EMail, 
		ISNULL(Mitglieder.Fax, 0) as Fax, 
		Adressen.Strasse, 
		Adressen.PLZ, 
		Adressen.Ortsname, 
		Adressen.Teilort, 
		Beitragssaetze.Beschreibung as Beitrag,
		Beitragssaetze.BeitragInEuro,
		Konten.IBAN, 
		Banken.BIC, 
		ISNULL(Banken.BLZ, 0) as BLZ, 
		Mitglieder.EintrittSKC, 
		Mitglieder.EintrittWKBV, 
		Mitglieder.WKBVFrüher, 
		Mitglieder.PassNr, 
		CASE WHEN Mitglieder.Mitgliedstatus = 1
		THEN 'Aktiv'
		WHEN Mitglieder.Mitgliedstatus = 2
		THEN 'Passiv'
		ELSE 'Ausgetreten' END as Mitgliedstatus
FROM Mitglieder
INNER JOIN Adressen ON Mitglieder.AdresseID = Adressen.Id
INNER JOIN Konten ON Konten.Id = Mitglieder.BankID
INNER JOIN Banken ON Konten.BankenID = Banken.Id
LEFT OUTER JOIN Mitgliedsbeitraege ON Mitglieder.Id = Mitgliedsbeitraege.MitgliedsID
LEFT OUTER JOIN Beitragssaetze ON Mitgliedsbeitraege.ZuZahlenderBeitrag = Beitragssaetze.Id
