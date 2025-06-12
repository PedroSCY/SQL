use tipos_dados;


    --matricula char(10), -- tipo fixo, completa a string com espaços brancos; Aceita de (0, 255) caracteres.
    --nome varchar(80), -- caracteres vazios nao sao preenchidos; Aceita de (0, 65.535) caracteres.
    -- outros tipos do mysql pode ser mais performaticos por usar menos recursos:
    --recomendacao tinytext -- até 255 caracteres
    --recomendacao mediumtext -- até 16.777.215 caracteres
    --recomendacao longtext -- até 4.294.967.295 caracteres
    --recomendacao text -- até 65.536 caracteres


create table aluno(
    matricula char(10),
    nome varchar(80), 
    recomendacao text 
);

desc aluno

insert into aluno VALUES( '123456789A', "Pedro Lucas Prata", "É um aluno exemplar" );

-- Teste com matricula maior (deve dar erro)
insert into aluno VALUES( '123456789AB', "Pedro Lucas Prata", "É um aluno exemplar" );


select * from tipos_dados.aluno;