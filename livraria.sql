create database livraria;
use livraria;

drop database livraria;

create table livros(

id_livro int primary key auto_increment,
título text,
autor text,
genero text,
Anopublicacao int
);

insert into livros values(null,"Narnia", "CSLewis", "Fantasia", 1950); 
insert into livros values(null,"Pequeno Principe", "Antoine de Saint-Exupéry", "infantil", 1943); 
insert into livros values(null,"O culpa é das estrelas", "John Green", "Romance	", 2012); 
insert into livros values(null,"Mobidick", "Herman Melville", "ficção científica", 1851); 
insert into livros values(null,"O menino do pijama listrado", "John Boyne", "Ficção histórica", 2006); 
insert into livros values(null,"Diário de um banana", "Jeff Kinney", "Humor", 2007); 

UPDATE livros set Anopublicacao = 2000 where id_livro = 1;
delete from livros where id_livro = 1;

select * from livros;
select Anopublicacao from livros where Anopublicacao > 1000;
select genero from livros where genero like "Fantasia";
select título from livros where título like "O,o%"
