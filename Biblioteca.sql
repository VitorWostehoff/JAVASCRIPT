create database biblioteca;
use biblioteca;

create table livros(
idlivros int primary key auto_increment,
nome VarChar(30),
datalancamento date,
valorcompra double,
valorlivrovenda double,
datacompra date,
fkadm int,
fkautor int,
fkLivros int,
foreign key (fkadm)
references admBiblioteca(idADM),
foreign key (fkautor)
references autores(idAutor)
);

create table Autores(
idAutor int primary key auto_increment,
Nome Varchar(30),
Nascimento date
);

create table admBiblioteca(
idADM int primary key auto_increment,
nomeBiblioteca VarChar(30),
saldototal double
);

create table LivrosComprados(
idLivroComprado int primary key auto_increment,
Nome VarChar(30),
DataCompra date,
Valor double
);

create table LivrosVendidos(
idLivroVendido int primary key auto_increment,
Nome VarChar(30),
DataVenda date,
Valor double
);

insert into livros values(null,"Narnia", '1950-10-16', 60.00, 75.00, '2018-03-24', 1, 1);
insert into Autores values (null, "CSLewis", '1898-11-29');
insert into admBiblioteca values (null, "Vitor Wostehoff", 100.204);
insert into LivrosComprados values (null, "Pequeno Principe", '2023-08-03', 35.00);
insert into LivrosVendidos values (null, "Pequeno Principe", '2023-12-12', 50.00);

delimiter $$
create trigger compra after insert on LivrosComprados for each row begin
    update admBiblioteca
    set saldototal = saldototal - new.Valor
    where idADM = new.fkadm;
    insert into livros (nome, datalancamento, valorcompra, fkadm, fkautor)
    values (new.nome, new.datalancamento, new.valorcompra, new.fkadm, new.fkautor);
end $$
delimiter ;

delimiter $$
create trigger venda after insert on LivrosVendidos for each row begin
	update admBiblioteca
    set saldototal = saldototal + new.Valor
    where idADM = new.fkadm;
	delete from livros
	where idlivros = new.fkLivros;
end $$
delimiter ;

select * from livros;
select * from Autores;
select * from admBiblioteca;
select * from LivrosComprados;
select * from LivrosVendidos;