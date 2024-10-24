drop database Empresas;

create database Empresas;
use Empresas;

create table Funcionario(
idFuncionario int primary key auto_increment,
Nome VarChar(50),
Nascimento VarChar(50),
Cargo VarChar(50),
Salario int,
Datadacontratacao VarChar(50),
FKSetor int,
foreign key (FKSetor)
references Setor (idSetor),
FKEmpresa int,
foreign key (FKEmpresa)
references Empresa (idEmpresa)
);

create table Setor(
idSetor int primary key auto_increment,
Nome VarChar(50),
QTDfuncionários int
);

create table Empresa(
idEmpresa int primary key auto_increment,
Nome VarChar(50),
Datadeinicio int,
Estado VarChar(50) 
);

insert into Funcionario values(null, "Vitor W", "16/07/1979", "CEO", 30000, "04/04/1999/", 1, 1);
insert into Funcionario values(null, "Vitor A", "30/10/2000", "Programador", 4000, "24/09/2010", 2, 2);
insert into Funcionario values(null, "Guilherme", "25/08/1994", "Supervisor", 3000, "8/01/2012", 3,3);
insert into Funcionario values(null, "Laís", "16/11/1999", "marketing", 2600, "10/02/2016", 4, 4);
insert into Funcionario values(null, "Gabriel", "14/08/1976", "contador", 4200, "24/09/2000", 5, 5);
insert into Funcionario values(null, "Stefanie", "22/10/1998", "análista", 3200, "02/06/2017", 1, 1);
insert into Funcionario values(null, "Vinicius B", "25/10/1998", "Programador", 4000, "11/12/2014", 2, 2);
insert into Funcionario values(null, "Veyda", "08/03/1999", "assistente", 2000, "17/03/20020", 3, 3);
insert into Funcionario values(null, "Pedro", "22/12/1995", "T.I.", 7500, "08/07/2012", 4, 4);
insert into Funcionario values(null, "Kayanne", "20/01/1977", "Treinador", 5000, "26/04/2004", 5, 5);
insert into Funcionario values(null, "Lucas F", "16/05/1999", "Programador Senior", 8500, "08/07/2017", 1, 1);
insert into Funcionario values(null, "Ryan", "15/05/1992", "faxineiro", 4400, "19/06/2012", 2, 2);
insert into Funcionario values(null, "Eduardo", "26/12/1986", "Recepcionista", 3130, "21/01/2019", 3, 3);
insert into Funcionario values(null, "Kauan", "05/06/1992", "segurança", 2400, "30/06/2021", 4, 4);
insert into Funcionario values(null, "Daniel", "28/02/2000", "estagiário", 2000, "03/03/2018", 5, 5);

insert into Setor values (null,"operacional", 8);
insert into Setor values (null,"financeiro", 2);
insert into Setor values (null,"administrativo", 1);
insert into Setor values (null,"comercial", 1);
insert into Setor values (null,"serviços gerais", 3);

insert into Empresa values (null, "Senior", 1988, "Santa Catarina");
insert into Empresa values (null, "PremierSoft", 2011, "Santa Catarina");
insert into Empresa Values (null, "Luby", 2002, "São Paulo");
insert into Empresa values (null, "TIVIT", 1998, "São Paulo");
insert into Empresa values (null, " Ambev tech", 1993, "Santa Catarina");

select Funcionario.idFuncionario,Funcionario.Nome,Funcionario.Nascimento,
Funcionario.Cargo,Funcionario.Salario,Funcionario.Datadacontratacao,Funcionario.FKSetor,
Funcionario.FKEmpresa,Setor.idSetor,Setor.Nome,Setor.QTDfuncionários,Empresa.idEmpresa,
Empresa.Nome,Empresa.Datadeinicio,Empresa.Estado from Funcionario
inner join Setor
on Funcionario.FKSetor = Setor.idSetor
inner join Empresa
on Funcionario.FKEmpresa = Empresa.idEmpresa;