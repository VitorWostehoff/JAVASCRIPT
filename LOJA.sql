create database LOJA;

use LOJA;

create table produto(
	idproduto int primary key auto_increment,
	nome varchar(30),
	valor float(10,2)
);

insert into produto values (null,"livro modelagem",50.00);
insert into produto values (null,"livro bi",80.00);
insert into produto values (null,"livro oracle",70.00);
insert into produto values (null,"livro SQL server",50.00);

/*quando*/
select now();
/*quem*/
select current_user();

create database backups;

use backups;

create table bkp_produto(
	idbackup int primary key auto_increment,
	idproduto int,
	nome varchar(30),
	valor_original float(10,2),
	valor_alterado float(10,2),
	datas datetime,
	usuario varchar(30),
	evento char(1)

);

use LOJA;

select * from PRODUTO;

delimiter $

create trigger audit_prod
after update on produto
for each row
begin

	insert into backups.bkp_produto values(null,old.idproduto,
	old.nome,old.valor, new.valor, now(),current_user(),'U');

end
$

delimiter ;
/*
criar uma trigger que ao deletar um produto insere as informações em backups
*/
update produto set valor = 110.00
where idproduto = 2;

select * from produto;

select * from backups.BKP_produto;

drop database LOJA;                