create database selecoes;

use selecoes;

drop table departamento;

create table departamento(
    id int primary key auto_increment,
    nome varchar(40) not null,
    localizacao varchar(80),
    qtde_min_empregados int,
    status set('Ativo', 'Inativo', 'Em Revisao') default 'Ativo',
    check (qtde_min_empregados > 0)
)

desc departamento;

insert into departamento(nome, localizacao, qtde_min_empregados)
values
('Recursos Humanos', 'Sao Paulo', 5),
('Financeiro', 'Rio de Janeiro', 3);


insert into departamento(nome, localizacao, qtde_min_empregados, status)
values
('Marketing', 'Belo Horizonte', 4, 'Inativo'),
('Vendas', 'Curitiba', 6, 'Inativo'),
('TI', 'Curitiba', 2, 'Em Revisao');


select * from selecoes.departamento;