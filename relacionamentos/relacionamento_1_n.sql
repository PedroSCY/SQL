use relacionamentos;

drop table departamento;
drop table gerente;

create table usuario(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL
);

create table postagem(
    id int PRIMARY KEY AUTO_INCREMENT,
    titulo varchar(100) NOT NULL,
    usuario_id int NOT NULL,
    foreign key(usuario_id) references usuario(id)
);

insert into usuario (nome) values ('João Silva'), ('Maria Oliveira'), ('Pedro Santos');

insert into postagem(titulo, usuario_id) values
('Postagem de João', 1),
('Postagem de Maria', 2),
('Postagem de Pedro', 3);

select * from postagem;
select * from usuario;