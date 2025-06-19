use relacionamentos;

create table aluno(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL
);
create table disciplinas(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL
);

create table matricula(
    aluno_id int NOT NULL,
    disciplina_id int NOT NULL,
    quantidade_creditos int default 4,
    PRIMARY KEY (aluno_id, disciplina_id),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

insert into aluno (nome) values ('João'), ('Maria'), ('Pedro');
insert into disciplinas (nome) values ('Matemática'), ('Física'), ('Química');

insert into matricula (aluno_id, disciplina_id, quantidade_creditos) values 
(1, 1, 4), 
(1, 2, 4), 
(2, 1, 4), 
(2, 3, 4), 
(3, 2, 4);

select * from aluno;
select * from disciplinas;
select * from matricula;