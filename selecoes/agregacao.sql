use selecoes;

select * from departamento;


select count(*) as qtde_departamentos from departamento;

select sum(qtde_min_empregados) from departamento;

select avg(qtde_min_empregados) from departamento;

select min(qtde_min_empregados)as minimo, max(qtde_min_empregados) as maximo from departamento;