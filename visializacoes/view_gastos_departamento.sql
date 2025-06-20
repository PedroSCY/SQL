use visualizacoes;

create view gastos_departamentos as 
select departamento as nome, sum(salario) as gastos_salarios from funcionarios group by departamento order by gastos_salarios DESC;

select nome, gastos_salarios *12 as gastos_anuais from gastos_departamentos ORDER BY gastos_salarios;