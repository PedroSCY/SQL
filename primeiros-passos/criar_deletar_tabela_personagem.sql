use starwars;

create table personagem (
    id int,
    nome varchar(120),
    altura decimal(4,2),
    destaque boolean,
    nascimento date
)

create table id not exists personagem (
    id int,
    nome varchar(120),
    altura decimal(4,2),
    destaque boolean,
    nascimento date
)

drop Table personagem
-- drop table starwars.personagem; (é possivel definir o banco de dados diretamente)

drop table if exists personagem;

show tables;
