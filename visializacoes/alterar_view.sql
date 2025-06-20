use visualizacoes;

alter view faixa_salarial as
select id, nome, salario, 
    case
        when salario >= 6000 then 'alto'
        when salario < 6000 and salario >= 3500 then 'medio'
        else 'baixo'
    end as faixa_salarial
from funcionarios;

create or replace view faixa_salarial as
select id, nome, salario, 
    case
        when salario >= 6000 then 'alto'
        when salario < 6000 and salario >= 4000 then 'medio'
        else 'baixo'
    end as faixa_salarial
from funcionarios;

select * from faixa_salarial;