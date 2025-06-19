/* 
    Semi Join
   | x | v/x | x |

 */

use juncoes;

select * from pessoa where exists (
    select 1 from filme where pessoa.filme_preferido = filme.id
);

select * from filme where exists (
    select 1 from pessoa where pessoa.filme_preferido = filme.id
)