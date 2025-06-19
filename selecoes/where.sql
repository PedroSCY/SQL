use selecoes;

select * from departamento where 1;

select * from departamento where id=1;

select * from departamento where id>1 and qtde_min_empregados > 3 and localizacao like "Curitiba";
-- like pode substituir o =. ele aceita % e _ como coringa, exemplo: localizacao like "Curitiba%" ou localizacao like "Curitba_" isso significa que o nome da localizacao deve começar com Curitiba ou ter apenas um caractere a mais.

select * from departamento where id > 1 or qtde_min_empregados < 5 or localizacao = "Sao Paulo";

select * from departamento where not localizacao = "Sao Paulo";