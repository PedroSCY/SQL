use selecoes;

select * from departamento;

select * from departamento where localizacao like "c%";

select * from departamento where nome like "%humanos";

select * from departamento where nome like "_i";

select * from departamento where localizacao like "%_e%o";

/* Os operadores coringas _ e % servem para representar caracteres desconhecidos em uma string, onde _ representa um único caractere e % representa zero ou mais caracteres. */