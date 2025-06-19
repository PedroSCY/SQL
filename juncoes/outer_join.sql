/* 
    Left Outer Join
    | v | v | x |

    Right Outer Join
    | x | v | v |

 */

use juncoes;

select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa left outer join filme on pessoa.filme_preferido = filme.id;

select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa right outer join filme on pessoa.filme_preferido = filme.id;

-- podemos omitir a palavra outer.

select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa left join filme on pessoa.filme_preferido = filme.id;

select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa right join filme on pessoa.filme_preferido = filme.id;