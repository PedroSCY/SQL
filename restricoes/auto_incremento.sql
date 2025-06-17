use restricoes;

drop table departamento;
create table departamento (
    id int primary key auto_increment,
    nome varchar(40) not null,
    localizacao varchar(80)
)

desc departamento;

insert into departamento (nome, localizacao) values (
    'Recursos Humanos', null
)

insert into departamento (nome, localizacao) values (
    'Financeiro', null
)


select * from departamento;