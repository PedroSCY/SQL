use restricoes;

drop table departamento;
create table departamento (
    id int unique not null,
    nome varchar(40) not null,
    localizacao varchar(80)
)

desc departamento;

insert into departamento values (
    1 ,'Recursos Humanos', null
)

insert into departamento values (
    2,'Financeiro', null
)

-- Deve dar error por já existir um registro unique com id = 1
insert into departamento values (
    1 ,'Recursos Humanos', null
)

select * from departamento;