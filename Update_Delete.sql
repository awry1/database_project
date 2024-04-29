use [Projekt Kamil Lubarski]
SELECT [Nazwa_Systemu],[Udzial_Na_Rynku]
  FROM [Projekt Kamil Lubarski].[dbo].[Systemy_Operacyjne];
SELECT [Nazwa_Systemu]
  FROM [Projekt Kamil Lubarski].[dbo].[Obslugiwane_Systemy];
update Systemy_Operacyjne set Nazwa_Systemu = 'najstarszy macOS' where Nazwa_Systemu = 'macOS 10';		-- kaskadowa aktualizacja
SELECT [Nazwa_Systemu],[Udzial_Na_Rynku]
  FROM [Projekt Kamil Lubarski].[dbo].[Systemy_Operacyjne];
SELECT [Nazwa_Systemu]
  FROM [Projekt Kamil Lubarski].[dbo].[Obslugiwane_Systemy];

SELECT [Nazwa_Firmy],[NIP]
  FROM [Projekt Kamil Lubarski].[dbo].[Firmy_Softwareowe];
SELECT [Nazwa_Programu],[Przeznaczenie],[Obslugiwane_Pliki],[Nazwa_Firmy]
  FROM [Projekt Kamil Lubarski].[dbo].[Programy];
delete Firmy_Softwareowe where Nazwa_Firmy = 'Microsoft';		-- kaskadowe usuwanie
SELECT [Nazwa_Firmy],[NIP]
  FROM [Projekt Kamil Lubarski].[dbo].[Firmy_Softwareowe];
  SELECT [Nazwa_Programu],[Przeznaczenie],[Obslugiwane_Pliki],[Nazwa_Firmy]
  FROM [Projekt Kamil Lubarski].[dbo].[Programy];