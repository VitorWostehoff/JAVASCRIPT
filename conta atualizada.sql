create database codigofoda;
use codigofoda;

drop database codigofoda;

create table conta(
idconta int(11) primary key auto_increment,
tipoconta enum('carteira','contacorrente','contapoupança','instituiçãofinanceira'),
saldo double(10,2)
);

create table despesas(
iddespesas int(11) primary key auto_increment,
valor double(10,2),
dataPagamento date,
dataPagamentoEsperado date,
tipodespesas enum('alimentacao','educacao','lazer','moradia','roupa','saude','tranporte','outros'),
FKconta int(11),
foreign key (FKconta)
references conta(idconta)
);

create table receita(
idreceita int(11) primary key auto_increment,
valor double(10,2),
dataRecebimento date,
dataRecebimentoEsperado date,
descricao VarChar(50),
tipodareceita enum('salario','premio','outros') default null,
FKconta int(11) default null,
foreign key (FKconta)
references conta(idconta)
);

insert into conta values (null,"corrente",150.000);
insert into conta values (null,"poupança",300.000);

insert into despesas values (null,30.00,'2023-01-09',"mercado",1);
insert into despesas values (null,9.99,'2023-05-03',"lojinha",1);
insert into despesas values (null,100.00,'2018-27-07',"material de construção",1);
insert into despesas values (null,250.600,'2020-07-08',"concessionária",1);
insert into despesas values (null,60.00,'2018-12-06',"floricultura",1);

insert into receita values (null,10.00,'2023-20-08',"juros recebidos",1);
insert into receita values (null,713.00,'2016-12-08',"juros recebidos",2);
insert into receita values (null,500.00,'2015-25-12',"juros recebidos",2);
insert into receita values (null,133.00,'2018-28-02',"juros recebidos",1);
insert into receita values (null,56.00,'2020-10-12',"juros recebidos",1);