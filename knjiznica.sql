drop database if exists knjizara;
create database knjizara;
use knjizara; 

create table autor (
    sifra int not null primary key auto_increment,
    ime nvarchar(50) not null,
    prezime nvarchar(50) not null,
    datumRodjenja datetime
);

create table izdavac (
    sifra int not null primary key auto_increment,
    naziv  nvarchar(50) not null,
    aktivan bit
);

create table mjesto (
    sifra int not null primary key auto_increment,
    naziv nvarchar(50) not null,
    postanskiBroj nvarchar(10),
    drzava nvarchar(50)
);

create table katalog (
    sifra int not null primary key auto_increment,
    autor int,
    naslov nvarchar(50) not null,
    izdavac int,
    mjesto int
);

alter table katalog add foreign key (autor) references autor (sifra);
alter table katalog add foreign key (izdavac) references izdavac (sifra);
alter table katalog add foreign key (mjesto) references mjesto (sifra);

create index naziv_index on katalog(naslov);

# Upisivanje vrijednosti u mjesto tablicu
insert into mjesto (sifra, naziv, postanskiBroj, drzava)
    values(1, 'Zagreb', '10000', 'Hrvatska');
insert into mjesto (sifra, naziv, drzava)
    values(2, 'Kopenhagen','danska');
insert into mjesto (naziv, sifra, drzava, postanskiBroj)
    values('Rijeka', 3, 'Hrvatska', '51000');
insert into mjesto (naziv, sifra, drzava, postanskiBroj)
    values('Osijek', 4, 'Hrvatska', '31000');

# Upisivanje vrijednosti u autor tablicu
insert into autor (sifra, ime, prezime, datumRodjenja)
    values(1, 'Ivana', 'Brlic Mazuranic', '1874-04-18');
insert into autor (sifra, ime, prezime, datumRodjenja)
    values(2, 'August', 'Senoa', '1838-11-14');
insert into autor (sifra, ime, prezime, datumRodjenja)
    values(3, 'Robert', 'Preisic', null);

# Upisivanje vrijednosti u izdavac tablicu
insert into izdavac (sifra, naziv)
    values(1, 'Hrvatska revizija');
insert into izdavac (sifra, naziv)
    values (2, 'Lavendel og rosmarin');
insert into izdavac (sifra, naziv)
    values(3, 'Rijec');
insert into izdavac (sifra, naziv)
    values(4, 'Biblioteka ON LINE');
insert into izdavac (sifra, naziv)
    values(5, 'Hrvatski pedagoski knjizevni zgor');

# Upisivanje vrijednosti u katalog tablicu
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(1, 1, 'Mir u Dusi', 1, 1);
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(2, 1, 'Price iz davnine', 2, 2);
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(3, 1, 'Cusdnovate zgode segrta HGlapica', 5, 1);
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(4, 2, 'Cuvaj se senjske ruke', 3, 3);
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(5, 2, 'Zlatarevo zlato', 3, 3);
insert into katalog (sifra, autor, naslov, izdavac, mjesto)
    values(6, 3, 'Kultura u predgradu', 4, 4);




