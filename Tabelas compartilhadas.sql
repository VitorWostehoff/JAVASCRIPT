create database livraria;
use livraria;
drop database livraria;

create table livros(
id_livro int primary key auto_increment,
nome varchar(30),
lancamento int,
preco double,
idautores int,
foreign key(idautores)
references autores(idautor)
);

create table autores(
idautor int primary key auto_increment,
nome varchar(30),
anoNascimento int
);


insert into livros values(null,"Narnia", 2023 , 78.9, 1); 
insert into livros values(null,"Pequeno Principe", 1943 , 18.99, 2);
insert into livros values(null,"O culpa é das estrelas", 2012 , 30.99, 3);
insert into livros values(null,"Mobidick", 1851 , 20.00, 4);
insert into livros values(null,"O menino do pijama listrado", 2006 , 38.99, 5);

insert into autores values(null, "CSLewis", 1898);
insert into autores values(null, "Antoine de Saint-Exupéry", 1900);
insert into autores values(null, "John Green", 1977);
insert into autores values(null, "Herman Melville", 1819);
insert into autores values(null, "John Boyne", 1971);

select livros.id_livro,livros.nome,livros.idautores,autores.idautor,autores.nome from livros
inner join autores on livros.idautores = autores.idautor;