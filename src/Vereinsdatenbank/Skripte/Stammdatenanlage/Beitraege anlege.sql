BEGIN TRAN

insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (25, 'Grundbeitrag (Passive Mitglieder)')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (25, 'Jugend bis 18 Jahre')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (45, 'Student, Azubi, Bundeswehr')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (90, 'Erwachsene')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (75, 'Familie (Erwachsener)')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (15, 'Familie (Kind bis 18 Jahre)')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (25, 'Familie (Student/ Azubi)')
insert into Beitragssaetze (BeitragInEuro, Beschreibung) values (160, 'Höchstbetrag Familie')

select * from Beitragssaetze

-- commit
-- rollback