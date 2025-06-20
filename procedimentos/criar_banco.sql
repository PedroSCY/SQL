create database procedimentos;

use procedimentos;

create table aluno(
    id_aluno int PRIMARY KEY AUTO_INCREMENT,
    nome_aluno varchar(100) NOT NULL
);
create table disciplinas(
    id_disciplina int PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina varchar(100) NOT NULL
);

create table matricula(
    aluno_id int NOT NULL,
    disciplina_id int NOT NULL,
    PRIMARY KEY (aluno_id, disciplina_id),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id_aluno),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id_disciplina)
);

insert into aluno (nome_aluno) values ('João'), ('Maria'), ('Pedro');
insert into disciplinas (nome_disciplina) values ('Matemática'), ('Física'), ('Química');

insert into matricula (aluno_id, disciplina_id) values 
(1, 1), 
(1, 2), 
(2, 1), 
(3, 3); 


select * from aluno;
select * from disciplinas;
select * from matricula;