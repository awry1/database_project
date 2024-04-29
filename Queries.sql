use [Projekt Kamil Lubarski]


-- Widok do Zapytanie 4
if exists(select 1 from sys.views where name='Widok_Sprzedazy_Firm' and type='v')
	drop view Widok_Sprzedazy_Firm;
go
create view Widok_Sprzedazy_Firm as
select top (10) Firma, Sprzedane_Edycje
from (
	select Nazwa_Firmy as Firma, count(Nazwa_Firmy) as Sprzedane_Edycje
	from Programy P
	join Pakiety_Zawieraja_Programy PZP on P.Nazwa_Programu = PZP.Nazwa_Programu
	join Edycje E on PZP.Nazwa_Programu = E.Nazwa_Programu
	join Licencje L on E.Nazwa_Edycji = L.Nazwa_Edycji
	group by Nazwa_Firmy) as Done
order by Sprzedane_Edycje desc;



-- Zmienne
go
declare @edycja char(30);
declare @program char(30);
declare @rok int;
declare @miesiac int;
declare @iloscSprzedazy int;
declare @system char(30);
declare @rodzajLicencji char(4);



-- Zapytanie 1 ---------------------------------------------------------------------------------------------------------------------------------
-- Sprzedawca zauwazyl, ze licencja dla edycji X programu Y jest bledna.
-- Podaj nazwe firmy ktora wydala ten program.
set @edycja = 'Google Ultron';
set @program = 'Ultron';

select FS.Nazwa_Firmy as Firma
from Firmy_Softwareowe FS
join Programy P on FS.Nazwa_Firmy = P.Nazwa_Firmy
join Edycje E on P.Nazwa_Programu = E.Nazwa_Programu
where E.Nazwa_Edycji = @edycja and P.Nazwa_Programu = @program;



-- Zapytanie 2 ---------------------------------------------------------------------------------------------------------------------------------
-- Sprzedawca chce miec liste X sprzedazy z danego miesiaca w konkretnym roku.
-- Podaj te sprzedaze posortowane wedlug daty rosn�co.
set @rok = 2016;
set @miesiac = 4;
set @iloscSprzedazy = 2; -- sa trzy rezultaty

select top (@iloscSprzedazy) S.ID_Sprzedazy as ID, S.Data_Sprzedazy, S.Kraj, S.Nazwa_Sprzedawcy as Sprzedawca
from Sprzedaze S
where month(S.Data_Sprzedazy) = @miesiac and year(S.Data_Sprzedazy) = @rok
order by S.Data_Sprzedazy asc;



-- Zapytanie 3 ---------------------------------------------------------------------------------------------------------------------------------
-- Firma Software�owa chce zrobic liste programow z edycji X dzialajacych na systemie operacyjnym Y z rodzajem licencji Z.
-- Podaj te programy.
set @edycja = 'Office 365';
set @system = 'Windows 10';
set @rodzajLicencji = 'home';

select P.Nazwa_Programu as Program, P.Przeznaczenie, P.Obslugiwane_Pliki
from Programy P
join Edycje E on P.Nazwa_Programu = E.Nazwa_Programu
join Systemy_Obsluguja SO on E.Nazwa_Edycji = SO.Nazwa_Edycji
join Obslugiwane_Systemy OS on SO.Nazwa_Systemu = OS.Nazwa_Systemu
join Licencje L on E.Nazwa_Edycji = L.Nazwa_Edycji
where E.Nazwa_Edycji = @edycja and OS.Nazwa_Systemu = @system and L.Rodzaj = @rodzajLicencji
union all
select P.Nazwa_Programu, P.Przeznaczenie, P.Obslugiwane_Pliki
from (
    select PP.Nazwa_Pakietu
    from Pakiety_Programow PP
    join Edycje E on PP.Nazwa_Pakietu = E.Nazwa_Pakietu
    join Systemy_Obsluguja SO on E.Nazwa_Edycji = SO.Nazwa_Edycji
    join Obslugiwane_Systemy OS on SO.Nazwa_Systemu = OS.Nazwa_Systemu
    join Licencje L on E.Nazwa_Edycji = L.Nazwa_Edycji
    where E.Nazwa_Edycji = @edycja and OS.Nazwa_Systemu = @system and L.Rodzaj = @rodzajLicencji
	group by PP.Nazwa_Pakietu	-- distinct
) as PP
join Pakiety_Zawieraja_Programy PZP on PP.Nazwa_Pakietu = PZP.Nazwa_Pakietu
join Programy P on PZP.Nazwa_Programu = P.Nazwa_Programu;



-- Zapytanie 4 ---------------------------------------------------------------------------------------------------------------------------------
-- Pracownik chce dowiedziec sie, ktora Firma Softwareowa dostarczyla najbardziej popularna edycje wsrod sprzedawcow.
-- Sporzadz zestawienie 10 Firm Softwareowych wedlug malejacej liczby sprzedazy ich edycji.
select *
from Widok_Sprzedazy_Firm;



-- Zapytanie 5 ---------------------------------------------------------------------------------------------------------------------------------
-- W celach marketingowych pracownik chce dowiedziec sie, do jakiej grupy odbiorczej ma kierowac swoje dzialania.
-- Dlatego potrzebuje zestawienia najbardziej popularnych systemow operacyjnych wsrod klientow.
-- Sporzadz malejace zestawienie 5 Systemow Operacyjnych wspieranych przez najlepiej sprzedajace sie programy.
select top (5) Nazwa_Systemu, count(Nazwa_Systemu) as Obslugiwane_Programy
from Systemy_Obsluguja SO
join Edycje E on SO.Nazwa_Edycji = E.Nazwa_Edycji
join Pakiety_Zawieraja_Programy PZP on E.Nazwa_Pakietu = PZP.Nazwa_Pakietu
join Licencje L on E.Nazwa_Edycji = L.Nazwa_Edycji
group by Nazwa_Systemu
order by Obslugiwane_Programy desc;



-- Zapytanie 6 ---------------------------------------------------------------------------------------------------------------------------------
-- W celu dostosowania poziomow marzy z firmami, potrzebny jest podzial na miesiace sprzedazy dokonanych przez konkretnych sprzedawcow.
-- Sporzadz zestawienie wszystkich sprzedawcow wraz z iloscia sprzedanych przez nich licencji w danym miesiacu.
select month(SS.Data_Sprzedazy) as Miesiac, S.Nazwa_Sprzedawcy as Sprzedawca, count(ID_Licencji) as Sprzedane_Licencje
from Sprzedawcy S
join Sprzedaze SS on S.Nazwa_Sprzedawcy = SS.Nazwa_Sprzedawcy
join Licencje L on SS.ID_Sprzedazy = L.ID_Sprzedazy
group by S.Nazwa_Sprzedawcy, month(SS.Data_Sprzedazy)
order by Miesiac asc, Sprzedane_Licencje desc;

-- Zapytanie 7 ---------------------------------------------------------------------------------------------------------------------------------
-- Firma zlecila analize programow do obrobki graficznej dostepnych na rynku.
-- Zlicz, ile z programow obsluguje rozszerzenia 'png' i 'jpg', jednoczesnie nie obslugujac rozszerzenia 'xcf'.
select count(distinct Nazwa_Programu) as Liczba_Programow
from Programy
where (
	(Obslugiwane_Pliki like 'png'
	or Obslugiwane_Pliki like 'png,%'
	or Obslugiwane_Pliki like '%,png,%'
	or Obslugiwane_Pliki like '%,png')
	and
	(Obslugiwane_Pliki like 'jpg'
	or Obslugiwane_Pliki like 'jpg,%'
	or Obslugiwane_Pliki like '%,jpg,%'
	or Obslugiwane_Pliki like '%,jpg')
	and
	not(Obslugiwane_Pliki like 'xcf'
	or Obslugiwane_Pliki like 'xcf,%'
	or Obslugiwane_Pliki like '%,xcf,%'
	or Obslugiwane_Pliki like '%,xcf'
	)
);