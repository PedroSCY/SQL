use restricoes;

drop table departamento;
create table departamento (
    id int not null,
    nome varchar(40) not null,
    localizacao varchar(80)
)

desc departamento;

insert into departamento values (
    1 ,'Recursos Humanos', null
)

select * from departamento;