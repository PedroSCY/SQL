/* 

    O full Join não é suportado por todos os SGBDs, mas é possível simular o comportamento dele com a união de um Left Outer Join e um Right Outer Join.

    full Outer Join
    | v | v | v |

 */

use juncoes;

select pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo from pessoa full outer join filme on pessoa.filme_preferido = filme.id;

