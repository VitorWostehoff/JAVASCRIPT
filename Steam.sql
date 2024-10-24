create database steam;

use steam;

create table biblioteca(
	idjogo int primary key auto_increment,
	jogo varchar(30),
	preco float(10,2),
	genero varchar(30),
	baixado varchar(30)
);

insert into biblioteca values(null,"hollow knight", 46.99, "metroidvania", "sim");
insert into biblioteca values(null,"stardew valley", 24.99, "simulador rural", "sim");
insert into biblioteca values(null,"bloons td6", 27.89, "tower defense", "sim");
insert into biblioteca values(null,"phasmofobia", 27.89, "terror", "não");
insert into biblioteca values(null,"slime rancher", 89.99, "exploração", "não");

select now();

select current_user();

create database atualizacoes;

use atualizacoes;

create table jogoatualizado(
	idatualizacao int primary key auto_increment,
	idjogo int,
	jogo varchar(30),
	preco float,
	novo_preco float,
    genero varchar(30), 
	baixado varchar(30),
	atualizado datetime,
	usuarioDobanco varchar(30),
	comando varchar(30)
	
);
drop table atualizacoes.jogoatualizado;
use steam;

select * from biblioteca;

delimiter $

create trigger att after update on biblioteca 
for each row begin
	
	insert into atualizacoes.jogoatualizado values
	(null,old.idjogo,old.jogo,old.preco,new.preco, old.genero, 
	old.baixado,  now(), current_user(), 'atualizado');

end
$

delimiter ;
drop trigger jogoFoda;
update biblioteca set baixado = "não" where idjogo = 1;

select * from biblioteca;

select * from atualizacoes.jogoatualizado;

drop database steam;