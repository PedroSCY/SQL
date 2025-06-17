use restricoes;

drop table departamento;
create table departamento (
    id int primary key auto_increment,
    nome varchar(40) not null,
    localizacao varchar(80)
)

create table empregado (
    matricula int primary key auto_increment,
    nome varchar(50) not null,
    departamento_id int,
    Foreign Key (departamento_id) REFERENCES departamento(id)
)

desc departamento;
desc empregado

insert into departamento (nome, localizacao) values (
    'Recursos Humanos', null
)
insert into departamento (nome, localizacao) values (
    'Financeiro', null
)

insert into empregado (nome, departamento_id) values (
    'João Silva', 1
)


select * from departamento;

select * from empregado;

select * from empregado JOIN departamento ON empregado.departamento_id = departamento.id;