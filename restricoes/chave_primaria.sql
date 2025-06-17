use restricoes;

drop table departamento;
create table departamento (
    id int primary key,
    nome varchar(40) not null,
    localizacao varchar(80)
)

desc departamento;

insert into departamento values (
    1 ,'Recursos Humanos', null
)

-- Deve dar error por já existir um registro com id = 1
insert into departamento values (
    1 ,'Recursos Humanos', null
)


select * from departamento;