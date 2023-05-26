BEGIN TRAN
insert into LigaMannschaftZuordnungen (Mannschaft, Liga) values ('1', 'Oberliga Nordwürttemberg Männer')
insert into LigaMannschaftZuordnungen (Mannschaft, Liga) values ('2', '1. Bezirksliga Ostalb Hohenlohe Männer')
insert into LigaMannschaftZuordnungen (Mannschaft, Liga) values ('g', 'Bezirksklasse B OH Gemischt')
insert into LigaMannschaftZuordnungen (Mannschaft, Liga) values ('S', 'Oberliga Nordwürttemberg Ü50')

select * from LigaMannschaftZuordnungen

-- commit 
-- rollback