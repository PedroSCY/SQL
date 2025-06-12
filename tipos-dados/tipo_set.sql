use tipos_dados;
drop table if EXISTS aluno;


create table aluno(
    matricula char(10),
    nome varchar(80), 
    recomendacao text, 
    semestre tinyint unsigned,
    creditos_cursados smallint,
    media_geral float,
    data_ingresso date,
    data_conclusao date,
    horas_estudadas time,
    bolsista boolean,
    turno_estudo enum("Manhã","Tarde", "Integral"),
    disciplinas set('Biologia', "Matematica", 'Historia', 'Geografia' ),
    historico JSON
);

desc aluno

insert into aluno VALUES( '123456789A', "Pedro Lucas Prata", "É um aluno exemplar",1 , 50, 8.9, "2019-02-03", "2023-12-23", "574:36:00", 0, "Manhã", "biologia,historia", '
{"semestres":[
{ "disciplinas" : ["Matematica", "Biologia"], "media_geral": 8.9},
{ "disciplinas" : ["Ingles", "Historia"], "media_geral": 7.5},
{ "disciplinas" : ["Educação Física", "Geografia"], "media_geral": 9.5},
{ "disciplinas" : ["Português", "Física"], "media_geral": 8.1}
],
"Forma_ingresso": "Recomendação"}');


select * from tipos_dados.aluno;