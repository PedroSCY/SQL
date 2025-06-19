use selecoes;

select * from departamento;

select * from departamento limit 2;

select * from departamento limit 2 offset 2;

-- ou (offset,limit)
select * from departamento limit 2,1;


select * from departamento order by nome desc limit 2,3;

