use juncoes;
create table empregado(
    id int primary key auto_increment,
    nome varchar(100) not null,
    cargo varchar(50) not null,
    id_supervisor int,
    FOREIGN KEY (id_supervisor) REFERENCES empregado(id)
);

insert into empregado (nome, cargo, id_supervisor) values 
('Ana', 'Gerente', null), 
('Bruno', 'Analista', 1), 
('Carla', 'Desenvolvedora', 1), 
('David', 'Analista', 2), 
('Eva', 'Desenvolvedora', 2);

select t1.nome as nome, t1.cargo as cargo, t2.nome as supervisor from empregado t1 left join empregado t2 on t1.id_supervisor = t2.id;