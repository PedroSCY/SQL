use relacionamentos;

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

select * from empregado;