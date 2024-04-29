use [Projekt Kamil Lubarski]
create table Sprzedawcy (
	Nazwa_Sprzedawcy char(30) unique not null,
	NIP char(10) check (isnumeric(NIP) = 1) primary key
);

create table Sprzedaze (
	ID_Sprzedazy int identity primary key,
	Kraj char(30) not null,
	Data_Sprzedazy date not null,
	Nazwa_Sprzedawcy char(30) foreign key references Sprzedawcy(Nazwa_Sprzedawcy) on delete cascade on update cascade not null
);

create table Firmy_Softwareowe (
	Nazwa_Firmy char(30) unique not null,
	NIP char(10) check (isnumeric(NIP) = 1) primary key
);

create table Programy (
	Nazwa_Programu char(30) primary key,
	Przeznaczenie text not null,
	Obslugiwane_Pliki text default null,
	Nazwa_Firmy char(30) foreign key references Firmy_Softwareowe(Nazwa_Firmy) on delete cascade on update cascade not null
);

create table Pakiety_Programow (
	Nazwa_Pakietu char(30) primary key
);

create table Pakiety_Zawieraja_Programy (
	Nazwa_Pakietu char(30) foreign key references Pakiety_Programow(Nazwa_Pakietu) on delete cascade on update cascade not null,
	Nazwa_Programu char(30) foreign key references Programy(Nazwa_Programu) on delete cascade on update cascade not null,
	primary key (Nazwa_Pakietu, Nazwa_Programu)
);

create table Edycje (
	Nazwa_Edycji char(30) primary key,
	Data_wydania date not null,
	Koszt_Produkcji int not null,
	Status_Wsparcia bit not null,	-- 0 jak nie wspierany
	Nazwa_Pakietu char(30) foreign key references Pakiety_Programow(Nazwa_Pakietu) on delete cascade on update cascade default null,
	Nazwa_Programu char(30) foreign key references Programy(Nazwa_Programu) on delete cascade on update cascade default null
);

create table Licencje (
	ID_Licencji int identity primary key,
	Rodzaj char(4) check (Rodzaj in ('home', 'comm', 'edut', 'edus')),
	Cena smallint not null,
	Okres tinyint check (Okres between 0 and 36),	-- 0 oznacza dozywotnia licencje, w przeciwnym wypadku miesiace
	Nazwa_Edycji char(30) foreign key references Edycje(Nazwa_Edycji) on delete cascade on update cascade not null,
	ID_Sprzedazy int foreign key references Sprzedaze(ID_Sprzedazy) on delete cascade on update cascade not null
);

create table Systemy_Operacyjne (
	Nazwa_Systemu char(30) primary key,
	Udzial_Na_Rynku float check (Udzial_Na_Rynku <= 100 and Udzial_Na_Rynku >= 0)
);

create table Obslugiwane_Systemy (
	Nazwa_Systemu char(30) foreign key references Systemy_Operacyjne(Nazwa_Systemu) on delete cascade on update cascade not null,
	primary key (Nazwa_Systemu)
);

create table Systemy_Obsluguja (
	Nazwa_Systemu char(30) foreign key references Obslugiwane_Systemy(Nazwa_Systemu) on delete cascade on update cascade not null,
	Nazwa_Edycji char(30) foreign key references Edycje(Nazwa_Edycji) on delete cascade on update cascade not null,
	primary key (Nazwa_Edycji, Nazwa_Systemu)
);