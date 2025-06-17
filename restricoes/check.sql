use restricoes;

drop table departamento;
drop table empregado;

create table departamento (
    id int primary key auto_increment,
    nome varchar(40) not null,
    localizacao varchar(80),
    qtde_min_funcionarios int not null,
    qtde_max_funcionarios int not null,
    constraint qtde_funcionarios check (qtde_min_funcionarios >= 3 and qtde_max_funcionarios <= 10)
)

insert into departamento (nome, localizacao, qtde_min_funcionarios, qtde_max_funcionarios) values (
    'Recursos Humanos', "Bloco B, Terceiro Andar", 1, 8
);

select * from departamento;