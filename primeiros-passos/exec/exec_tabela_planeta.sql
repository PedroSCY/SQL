use starwars;

create table if not exists planeta (
    id int,
    nome varchar(120),
    raio decimal(8,2),
    qtde_luas int,
    habitado boolean
);

show tables;

drop table if exists planeta;