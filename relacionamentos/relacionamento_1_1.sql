use relacionamentos;

drop table departamento;
drop table gerente;

create table departamento(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL
);

create table gerente(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    departamento_id int UNIQUE NOT NULL,
    foreign key(departamento_id) references departamento(id)
);

insert into departamento (nome) values ('Vendas'), ('TI');

insert into gerente(nome, departamento_id) values
('João Silva', 1),
('Maria Oliveira', 2);

select * from gerente;
select * from departamento;