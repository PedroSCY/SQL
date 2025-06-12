use tipos_dados;
drop table if EXISTS aluno;

-- no mySLQ o boolean por tras dos panos é na verdade um tinyint(1). mas funciona da mesma forma 0 ou 1. 

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
    bolsista boolean
);

desc aluno

insert into aluno VALUES( '123456789A', "Pedro Lucas Prata", "É um aluno exemplar",1 , 50, 8.9, "2019-02-03", "2023-12-23", "574:36:00", 0);


select * from tipos_dados.aluno;