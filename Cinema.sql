drop database Cinema;

create database Cinema;
use Cinema;

create table Filme(
id_Filme int primary key auto_increment,
nomeFilme Varchar(50),
lancamento int,
preco double,
Diretor int,
foreign key (Diretor)
references Diretor(idDiretor)
);

Create table Diretor(
idDiretor int primary key auto_increment,
nome VarChar(50),
anoNascimento double
);

insert into Filme values(null,"Oppenheimer", 2023, 24.0, 1);
insert into Filme values(null,"Barbie", 2023, 24.0, 2);
insert into Filme values(null,"Indiana Jones", 2023, 24.0, 3);
insert into Filme values(null,"Jogador Numero 001", 2011, 24.0, 4);
insert into Filme values(null,"Deadpool", 2016, 24.0, 5);

insert into Diretor values(null,"Christopher Nolan", 1970);
insert into Diretor values(null,"Greta Gerwig", 1983);
insert into Diretor values(null,"James Mangold", 1970);
insert into Diretor values(null,"Steven Spielberg", 1970);
insert into Diretor values(null,"Tim Miller", 1970);

select Filme.id_Filme,Filme.nomeFilme,Filme.lancamento,Filme.preco,Filme.Diretor,Diretor.idDiretor,Diretor.nome,Diretor.AnoNascimento from Filme
inner join Diretor on Filme.id_Filme = Diretor.idDiretor;