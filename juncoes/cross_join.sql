/* 
    cross join
    O cross join é uma junção cartesiana, ou seja, ele combina todas as linhas de uma tabela com todas as linhas de outra tabela.
 */

 use juncoes;

 select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa cross join filme;