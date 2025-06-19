use selecoes;

select * from departamento order by qtde_min_empregados;

select * from departamento order by nome asc;

-- Para desempates: 
select * from departamento order by localizacao asc, qtde_min_empregados asc;


