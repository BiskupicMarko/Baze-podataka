drop database if exists osnovnaSkola;
create database osnovnaSkola;
use osnovnaSkola;
CREATE TABLE Dijete (
  ID int not null primary key auto_increment,
  Ime varchar(50) not null,
  Prezime varchar(50) not null,
  Kontakt varchar(50) not null,
  Oib char(11)
  );


  #select * from Dijete;


# najbolji način korištenja insert naredbe

insert into Dijete (ID,Ime,Prezime,Kontakt,Oib)
values (null,'Josipa','Peric','031223421','98777725163');
insert into Dijete (ID,Ime,Prezime,Kontakt,Oib)
values (null,'Josip','Peric','031223445','9877354566');


