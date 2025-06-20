create database visualizacoes;

use visualizacoes;

create table funcionarios(
    id int auto_increment primary key,
    nome varchar(50) not null,
    salario decimal(10,2) not null,
    departamento varchar(50) not null
);
delete from funcionarios;

insert into funcionarios (nome, salario, departamento) values
('joão', 5000.00, 'TI'),
('Maria', 6000.00, 'Vendas'),
('Carlos', 5678.54, 'RH'),
('Ana', 4785.20, 'Vendas'),
('Luiz', 3500.00, 'Financeiro'),
('Fernanda', 4000.00, 'TI'),
('Roberto', 5200.00, 'Vendas'),
('Juliana', 4800.00, 'RH'),
('Marcos', 5300.00, 'Financeiro'),
('Pedro', 4500.00, 'TI');

select * from funcionarios;