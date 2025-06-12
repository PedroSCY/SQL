use tipos_dados;
drop table if EXISTS aluno;

-- Tipos de data e hora:
-- DATE: Armazena apenas a data (AAAA-MM-DD)
-- TIME: Armazena apenas a hora (hh:mm:ss)
-- DATETIME: Armazena data e hora (AAAA-MM-DD hh:mm:ss)
-- TIMESTAMP: Armazena data e hora, com fuso horário relativo ao UTC
-- YEAR: Armazena apenas o ano (AAAA)

create table aluno(
    matricula char(10),
    nome varchar(80), 
    recomendacao text, 
    semestre tinyint unsigned,
    creditos_cursados smallint,
    media_geral float,
    data_ingresso date,
    data_conclusao date,
    horas_estudadas time
);

desc aluno

insert into aluno VALUES( '123456789A', "Pedro Lucas Prata", "É um aluno exemplar",1 , 50, 8.9, "2019-02-03", "2023-12-23", "574:36:00");


select * from tipos_dados.aluno;