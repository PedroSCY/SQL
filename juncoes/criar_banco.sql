create database juncoes;
use juncoes;

drop table pessoa;

create table filme(
    id int primary key auto_increment,
    titulo varchar(100) not null,
    ano_lancamento int
);

create table pessoa(
    id int primary key auto_increment,
    nome varchar(100) not null,
    idade int not null,
    filme_preferido int,
    foreign key (filme_preferido) references filme(id)
);

INSERT into filme (titulo, ano_lancamento) values 
('Filme A', 2001),
('Filme B', 2002),
('Filme C', 2003),
('Filme D', 2004);

insert into pessoa (nome, idade, filme_preferido) values 
('Alice', 30, 1),
('Bob', 25, 2),
('Charlie', 35, 3),
('Diana', 28, null);

select * from filme;
select * from pessoa;