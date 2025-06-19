use selecoes;

select * from departamento;

select nome, status from departamento where status = "Ativo"
union
select nome, status from departamento where status = "Inativo";

select nome, status from departamento where status = "Ativo" or qtde_min_empregados > 5
intersect
select nome, status from departamento where status = "Inativo" or qtde_min_empregados < 5;

select nome, status from departamento where status = "Ativo" 
EXCEPT
select nome, status from departamento where qtde_min_empregados < 5;
