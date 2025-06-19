use juncoes;

select * from pessoa inner join filme on pessoa.filme_preferido = filme.id;

select pessoa.id as id_pessoa, filme.id as id_filme, pessoa.nome, filme.titulo from pessoa inner join filme on pessoa.filme_preferido = filme.id;