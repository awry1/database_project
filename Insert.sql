use [Projekt Kamil Lubarski]
-- Sprzedawcy
insert into Sprzedawcy values
	-- sprzedawca, NIP
	('X-kom', '4530999827'),
	('Morele', '9392101151'),
	('Media Markt', '5229177792'),
	('Media Expert', '1453020750'),
	('Komputronik', '6482782355'),
	('Avans', '4310166915'),
	('Allegro', '1125456028'),
	('OLX', '3173155561'),
	('Amazon', '9611928923'),
	('eBay', '1659770895'),
	('AliExpress', '6003776547'),
	('Alsen', '4148798626'),
	('CheapBuy', '9583242529'),
	('WantStuff', '3005748852'),
	('NotPricey', '9567375838'),
	('Staples', '6068732188'),
	('Target', '5065110092'),
	('Walmart', '6117803134'),
	('Tesco', '8317185364'),
	('Biedronka', '6605975336');

-- Sprzedaze
insert into Sprzedaze (Kraj, Data_Sprzedazy, Nazwa_Sprzedawcy) values
	-- kraj sprzedazy, data sprzedazy, sprzedawca
	('Stany Zjednoczone', '2077-10-10', 'Walmart'),
	('Kanada', '1410-07-15', 'Allegro'),
	('Meksyk', '2023-06-21', 'eBay'),
	('Panama', '2023-08-08', 'Alsen'),
	('Haiti', '2022-12-22', 'CheapBuy'),
	('Jamajka', '1998-01-01', 'OLX'),
	('Peru', '2016-04-06', 'Staples'),
	('Dominikana', '2021-03-07', 'Staples'),
	('Kuba', '2016-04-30', 'Biedronka'),
	('Grenlandia', '2005-11-05', 'Biedronka'),
	('Salwador', '1990-03-04', 'Tesco'),
	('Polska', '2020-12-31', 'X-kom'),
	('Polska', '2016-04-12', 'X-kom'),
	('Polska', '2017-05-14', 'X-kom'),
	('Polska', '2000-07-30', 'Morele'),
	('Polska', '2003-06-06', 'Morele'),
	('Polska', '2019-02-16', 'Media Markt'),
	('Polska', '2019-02-16', 'Media Expert'),
	('Polska', '2002-03-09', 'Komputronik'),
	('Polska', '2002-10-08', 'Avans');

-- Firmy Softwareowe
insert into Firmy_Softwareowe values
	-- firma, nip
	('Microsoft', '7390048448'),
	('Adobe', '1721962378'),
	('JetBrains', '4906241920'),
	('Oracle', '6919281975'),
	('Mozilla', '9723539683'),
	('Apple', '6314701518'),
	('Google', '2202048666'),
	('Valve', '9864234971'),
	('GIMP Development Team', '5170973690'),
	('IBM', '1000000000'),
	('NotNot Software', '1231231231'),
	('WeMake Programs', '4949446464'),
	('DontExpectMuchFromUs', '7777777333'),
	('WiiLack Creativity', '1324354657'),
	('HowManys Left', '1524360798'),
	('Only5 More', '1083569247'),
	('ICan Doit', '1234509876'),
	('Generic Corporation', '4756291038'),
	('Yet Another One', '2223334556'),
	('Tomorrow Corporation', '1212121212');

-- Programy
insert into Programy values
	-- program, przeznaczenie, rozszerzenia, producent
	('Excel', 'Rozliczanie podatk�w', 'xls,xlsx,csv,txt', 'Microsoft'),
	('PowerPoint', 'Aplikacja do tworzenia interaktywnych prezentacji', 'ppt,pptx', 'Microsoft'),
	('Word', 'Edytor plik�w tekstowych', 'doc,docx,csv,txt', 'Microsoft'),
	('SQL Server Managment Studio', 'System zarz�dzania i tworzenia baz danych', 'sql,mdf,ndf,ldf', 'Microsoft'),
	('Edge', 'Przegl�darka internetowa', default, 'Microsoft'),
	('Paint', 'Edytor plik�w graficznych', 'jpg,png,bmp,jp2', 'Microsoft'),
	('Notepad', 'Prosty edytor plik�w tekstowych', 'txt,ini,json', 'Microsoft'),
	
	('Acrobat Pro', 'Przegl�darka plik�w pdf', 'pdf', 'Adobe'),
	('Lightroom', 'Zaawansowany edytor plik�w graficznych', 'png,bmp,jp2', 'Adobe'),
	('Photoshop', 'Zaawansowany edytor plik�w graficznych', 'png,bmp,jp2', 'Adobe'),
	('Premiere Pro', 'Zaawansowany edytor plik�w wideo', 'mp4,mov,avi,3gp,flv', 'Adobe'),
	
	('Android Studio', 'Pisanie kodu na platform� android', 'apk', 'JetBrains'),
	('CLion', 'Pisanie kodu w j�zyku cpp', 'cpp', 'JetBrains'),
	('DataGrip', 'System zarz�dzania i tworzenia baz danych', 'sql', 'JetBrains'),
	('Dataspell', 'Zarz�dzanie czym� od JetBrains', 'sql,csv,py', 'JetBrains'),
	('GoLand', 'Pisanie kodu w j�zyku go', 'go', 'JetBrains'),
	('IntelliJ IDEA', 'Pisanie kodu w j�zyku java', 'java,jar', 'JetBrains'),
	('MPS', 'Tworzenie w�asnych DSL', 'sample', 'JetBrains'),
	('PhpStorm', 'Pisanie kodu w j�zyku php', 'php', 'JetBrains'),
	('PyCharm', 'Pisanie kodu w j�zyku python', 'py', 'JetBrains'),
	('Rider', 'Platforma .NET', 'cs,csx', 'JetBrains'),
	('RubyMine', 'Pisanie kodu w j�zyku ruby', 'rb,ru', 'JetBrains'),
	('RustRover', 'Pisanie kodu w j�zyku rust', 'rs,rlib', 'JetBrains'),
	('WebStorm', 'Pisanie kodu w j�zyku javascript', 'js,cjs,mjs', 'JetBrains'),

	('NetBeans', 'Pisanie kodu w j�zyku java', 'java,jar', 'Oracle'),
	('VirtualBox', 'System zarz�dzania i tworzenia maszyn wirtualnych', 'vdi,vmdk,vhd,hdd', 'Oracle'),

	('Firefox', 'Przegl�darka internetowa', default, 'Mozilla'),
	('Thunderbird', 'Klient poczty elektronicznej', default, 'Mozilla'),

	('iTunes', 'Biblioteka muzyczna i wiele wi�cej', default, 'Apple'),
	('Safari', 'Przegl�darka internetowa', 'rozszerzenia', 'Apple'),

	('Chrome', 'Przegl�darka internetowa', default, 'Google'),
	('Ultron', 'Przegl�darka internetowa u�ywana przez Nasa', default, 'Google'),

	('Steam', 'Internetowy sklep z grami z funkcj� forum', default, 'Valve'),

	('GIMP', 'Zaawansowany edytor plik�w graficznych', 'xcf,png,jpg,jp2', 'GIMP Development Team');

-- Pakiety Programow
insert into Pakiety_Programow values
	-- pakiet
	('Office'),
	('Creative Cloud'),
	('Toolbox'),					-- JetBrains bez RustRover
	('Internet Browser Package'),	-- przegladarki
	('Essential WinTools'),			-- notatnik, edge, paint
	('Essential Dev'),				-- te normalniejsze jezyki
	('NonEssential Dev'),			-- mniej normalne jezyki
	('Photoshop is my passion'),	-- gimp + paint
	('Gamer Extreme Utility'),		-- steam + iTunes
	('IT Powerbox'),				-- acrobat + ultron
	('Apple Emulation Pack'),		-- virtualbox + apple
	('SQL my beloved'),				-- bazy danych
	('Office x Toolbox'),			-- office + toolbox enterprise
	('Microsoft Package'),
	('Adobe Package'),
	('JetBrains Package'),
	('Oracle Package'),
	('Mozilla Package'),
	('Apple Package'),
	('Google Package'),
	('All Stuff Plus');				-- wszystko

-- pakiety zawieraja
insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu) values
	-- pakiet, program
	('Office', 'Word'),
	('Office', 'Excel'),
	('Office', 'PowerPoint'),
	
	('Creative Cloud', 'Acrobat Pro'),
	('Creative Cloud', 'Lightroom'),
	('Creative Cloud', 'Photoshop'),
	('Creative Cloud', 'Premiere Pro'),
	
	('Toolbox', 'Android Studio'),
	('Toolbox', 'CLion'),
	('Toolbox', 'DataGrip'),
	('Toolbox', 'Dataspell'),
	('Toolbox', 'GoLand'),
	('Toolbox', 'IntelliJ IDEA'),
	('Toolbox', 'MPS'),
	('Toolbox', 'PhpStorm'),
	('Toolbox', 'PyCharm'),
	('Toolbox', 'Rider'),
	('Toolbox', 'RubyMine'),
	('Toolbox', 'WebStorm'),
	
	('Internet Browser Package', 'Edge'),
	('Internet Browser Package', 'Firefox'),
	('Internet Browser Package', 'Safari'),
	('Internet Browser Package', 'Chrome'),
	('Internet Browser Package', 'Ultron'),
	
	('Essential WinTools', 'Edge'),
	('Essential WinTools', 'Notepad'),
	('Essential WinTools', 'Paint'),
	
	('Essential Dev', 'CLion'),
	('Essential Dev', 'IntelliJ IDEA'),
	('Essential Dev', 'PhpStorm'),
	('Essential Dev', 'PyCharm'),
	('Essential Dev', 'Rider'),
	('Essential Dev', 'WebStorm'),
	
	('NonEssential Dev', 'GoLand'),
	('NonEssential Dev', 'RubyMine'),
	('NonEssential Dev', 'RustRover'),
	
	('Photoshop is my passion', 'GIMP'),
	('Photoshop is my passion', 'Paint'),
	
	('Gamer Extreme Utility', 'Steam'),
	('Gamer Extreme Utility', 'iTunes'),
	
	('IT Powerbox', 'Acrobat Pro'),
	('IT Powerbox', 'Ultron'),

	('Apple Emulation Pack', 'VirtualBox');

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select 'Apple Emulation Pack' as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Apple';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select 'SQL my beloved' as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Obslugiwane_Pliki like 'sql,%' or Obslugiwane_Pliki like '%,sql,%' or Obslugiwane_Pliki like '%,sql' or Obslugiwane_Pliki like 'sql';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select 'Office x Toolbox' as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Pakiety_Zawieraja_Programy
	where Nazwa_Pakietu = 'Office' or Nazwa_Pakietu = 'Toolbox Enterprise';
	
insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Microsoft';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Adobe';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'JetBrains';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Oracle';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Mozilla';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Apple';
	
insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select concat(trim(Nazwa_Firmy), ' Package') as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy
	where Nazwa_Firmy = 'Google';

insert into Pakiety_Zawieraja_Programy (Nazwa_Pakietu, Nazwa_Programu)
	select 'All Stuff Plus' as Nazwa_Pakietu, Nazwa_Programu as Nazwa_Programu
	from Programy;

-- Edycje
insert into Edycje values
	-- edycja, data produkcji, koszt produkcji, stastus wsparcia, pakiet, program
	('Windows XP base', '2001-10-25', 10000, 0, 'Essential WinTools', default),
	('Windows Vista base', '2007-01-30', 100, 0, 'Essential WinTools', default),
	('Windows 7 base', '2009-10-22', 100, 0, 'Essential WinTools', default),
	('Windows 8 base', '2012-10-26', 100, 1, 'Essential WinTools', default),
	('Windows 10 base', '2015-07-29', 100, 1, 'Essential WinTools', default),
	('Windows 11 base', '2021-10-05', 100, 1, 'Essential WinTools', default),
	('Office 365', '2017-07-10', 100000, 1, 'Office', default),
	('Toolbox Enterprise', '2020-01-01', 100000, 1, 'Toolbox', default),
	('Creative Cloud', '2020-01-01', 100000, 1, 'Creative Cloud', default),
	('Microsoft Essential', '2020-01-01', 200100, 1, 'Microsoft Package', default),
	('Paint 2000', '2000-01-01', 0, 1, default, 'Paint'),
	('Paint 1999', '1999-01-01', 10, 0, default, 'Paint'),
	('CLion', '2001-03-07', 2137, 1, default, 'CLion'),
	('IntelliJ IDEA', '2001-03-07', 2137, 1, default, 'IntelliJ IDEA'),
	('PyCharm', '2001-03-07', 2137, 1, default, 'PyCharm'),
	('VirtualBox', '2000-04-20', 420, 1, default, 'VirtualBox'),
	('IT Special', '2014-03-20', 0, 1, 'IT Powerbox', default),
	('SQL Master', '2023-01-01', 100000, 1, 'SQL my beloved', default),
	('Google Ultron', '2014-03-20', 0, 1, default, 'Ultron'),
	('All The Good Stuff', '2023-12-19', 1000000000, 1, 'All Stuff Plus', default);

-- Licencje
insert into Licencje (Rodzaj, Cena, Okres, Nazwa_Edycji, ID_Sprzedazy) values
    -- rodzaj (home, edut, edus, comm), cena, okres w miesiacach (0 dozywotnia), edycja, id sprzedazy (to samo id jak kilka licencji, id jest autonumerowane w sprzedazach)
	('home', 500, 12, 'Office 365', 1),
	('home', 500, 6, 'Office 365', 3),
	('home', 500, 6, 'Office 365', 3),
	('home', 500, 36, 'Office 365', 4),
	('edut', 600, 24, 'Office 365', 2),
	('edus', 600, 36, 'Office 365', 2),
	('edut', 600, 24, 'VirtualBox', 3),
	('edus', 800, 36, 'Windows XP base', 3),
	('comm', 800, 6, 'Windows XP base', 3),
	('comm', 800, 6, 'Toolbox Enterprise', 4),
	('home', 500, 12, 'Creative Cloud', 5),
	('edut', 600, 24, 'Creative Cloud', 6),
	('home', 500, 12, 'Microsoft Essential', 7),
	('comm', 800, 6, 'IT Special', 8),
	('home', 500, 12, 'SQL Master', 9),
	('edus', 700, 36, 'SQL Master', 10),
	('comm', 800, 6, 'Google Ultron', 11),
	('home', 500, 12, 'All The Good Stuff', 12),
	('edut', 600, 24, 'Paint 2000', 13),
	('edus', 700, 36, 'CLion', 14),
	('comm', 800, 6, 'Windows 10 base', 15),
	('home', 500, 12, 'Windows 11 base', 16),
	('edut', 600, 24, 'IntelliJ IDEA', 17),
	('edus', 700, 36, 'Windows 7 base', 18),
	('comm', 800, 6, 'All The Good Stuff', 19),
	('home', 500, 12, 'Paint 2000', 20);

-- Systemy Operacyjne
insert into Systemy_Operacyjne values
	-- nazwa, udzial na rynku
	-- Windows 30%
	('Windows 11', 5),
	('Windows 10', 20),
	('Windows 8.1', 1),
	('Windows 8', 1),
	('Windows 7', 1),
	('Windows Vista', 1),
	('Windows XP', 1),
	-- macOS 5%
	('macOS 14', 1),
	('macOS 13', 1),
	('macOS 12', 1),
	('macOS 11', 1),
	('macOS 10', 1),
	-- iOS 15%
	('iOS 17', 5),
	('iOS 16', 5),
	('iOS 15', 1),
	('iOS 14', 1),
	('iOS 13', 1),
	('iOS 12', 1),
	('iOS 11', 1),
	-- Android 45%
	('Android 15', 20),
	('Android 14', 15),
	('Android 13', 5),
	('Android 12', 1),
	('Android 11', 1),
	('Android 10', 1),
	('Android 9', 1),
	('Android 8', 1),
	-- Linux 5%
	('Linux Ubuntu', 4),
	('Linux Debian', 1);

-- Obslugiwane Systemy
insert into Obslugiwane_Systemy  values
	-- nazwa
	('Windows XP'),
	('Windows Vista'),
	('Windows 7'),
	('Windows 8'),
	('Windows 10'),
	('Windows 11'),
	('Linux Ubuntu'),
	('Linux Debian'),
	('macOS 10'),
	('macOS 11'),
	('macOS 12'),
	('macOS 13'),
	('macOS 14');

insert into Systemy_Obsluguja values
	-- system, edycja
	('Windows XP', 'Windows XP base'),
	('Windows Vista', 'Windows Vista base'),
	('Windows 7', 'Windows 7 base'),
	('Windows 8', 'Windows 8 base'),
	('Windows 10', 'Windows 10 base'),
	('Windows 11', 'Windows 11 base'),
	('Linux Ubuntu', 'SQL Master'),
	('Linux Debian', 'SQL Master'),
	('macOS 14', 'SQL Master'),
	('Windows 10', 'SQL Master'),
	('macOS 10', 'Creative Cloud'),
	('macOS 11', 'Creative Cloud'),
	('macOS 12', 'Creative Cloud'),
	('macOS 13', 'Creative Cloud'),
	('macOS 14', 'Creative Cloud'),
	('Windows 10', 'Creative Cloud'),
	('Windows 11', 'Creative Cloud'),
	('Windows 8', 'Office 365'),
	('Windows 10', 'Office 365'),
	('Windows 11', 'Office 365'),
	('Windows 10', 'Paint 2000');