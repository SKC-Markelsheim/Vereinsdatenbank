-- Auswärtsschnitt (SKC relevant)
select CONCAT(mitglieder.Nachname, ', ',mitglieder.Vorname) as Spieler, AVG(spez.Ergebnis) as Gesamtschnitt from SpielerPartieErgebnisZuordnungen spez
inner join Mitglieder on Mitglieder.Id = spez.SpielerID
inner join Partien on Partien.Id = spez.PartieID
where Partien.IstHeimspiel <> 1
group by CONCAT(mitglieder.Nachname, ', ',mitglieder.Vorname)
order by Gesamtschnitt desc

-- Gesamtschnitt
select CONCAT(mitglieder.Nachname, ', ',mitglieder.Vorname) as Spieler, AVG(spez.Ergebnis) as Gesamtschnitt from SpielerPartieErgebnisZuordnungen spez
inner join Mitglieder on Mitglieder.Id = spez.SpielerID
inner join Partien on Partien.Id = spez.PartieID
group by CONCAT(mitglieder.Nachname, ', ',mitglieder.Vorname)
order by Gesamtschnitt desc


-- Schnitt je Satz
select Saetze.SatzNr, AVG(Saetze.VolleGast) as VolleDurchschnitt, AVG(Saetze.AbraeumenGast) as AbräumenDurchschnitt, AVG(Saetze.AbraeumenGast + Saetze.VolleGast) as GesSchnitt from saetze
inner join Duelle on Saetze.DuellId = Duelle.Id
inner join Mitglieder on duelle.SpielerID = Mitglieder.Id
inner join partien on duelle.PartieID = partien.Id
where Mitglieder.Vorname = 'Robin'
--and partien.IstHeimspiel
group by saetze.SatzNr

