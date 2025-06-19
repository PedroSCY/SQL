/* 
    anti Join
   | v | x/x | x |

 */

use juncoes;

select * from pessoa where not exists (
    select 1 from filme where pessoa.filme_preferido = filme.id
);

select * from filme where not exists (
    select 1 from pessoa where pessoa.filme_preferido = filme.id
);