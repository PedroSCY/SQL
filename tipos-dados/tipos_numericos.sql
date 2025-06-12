use tipos_dados;
drop table if EXISTS aluno;

-- Tipos numéricos:
-- o periodo de valores pode ser sinalizado ou nao, o sinal diz se o valor vai ser sempre positivo ou não, se ele tbm puder ser positivo o periodo de valor é divido entre numeros positivos e negativos. ex: sem sinal (0-10), com sinal (-5 - 4 ). por que sinal? por que de um pouco de vista pratico, numeros negativos são identificados por terem literalmente um sinal "-". o tamanho do periodo não muda, apenas a forma que suporta as informações.
-- INT: Inteiro de tamanho padrão. valores (0 - 4294967295) sem sinal.
-- TINYINT: Inteiro pequeno (1 byte). valores (0 - 255) sem sinal.
-- SMALLINT: Inteiro pequeno (2 bytes). valores (0 - 65535) sem sinal.
-- MEDIUMINT: Inteiro médio (3 bytes). valores (0 - 16777215) sem sinal.
-- BIGINT: Inteiro grande (8 bytes). valores (0 - (2**64)-1) sem sinal.

-- DECIMAL(p,s): Número decimal de precisão exata, útil para valores monetários.
-- FLOAT: Número de ponto flutuante de precisão simples.
-- DOUBLE: Número de ponto flutuante de precisão dupla.
-- BIT: Armazena valores binários (bits).

create table aluno(
    matricula char(10),
    nome varchar(80), 
    recomendacao text, 
    semestre tinyint unsigned,
    creditos_cursados smallint,
    media_geral float
);

desc aluno

insert into aluno VALUES( '123456789A', "Pedro Lucas Prata", "É um aluno exemplar",1 , 50, 8.9 );

-- Teste com valores negativos (deve dar erro)
insert into aluno VALUES( '123456789AB', "Pedro Lucas Prata", "É um aluno exemplar", -1 , 50, 8.9 );


select * from tipos_dados.aluno;