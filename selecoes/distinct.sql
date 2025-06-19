use selecoes;


/* Distinct é usado para remover duplicatas */

select distinct localizacao from departamento;

/* Pode não funcionar bem com mais de uma coluna pois ele considera a combinação de valores das colunas para verificar duplicatas */

select distinct nome, localizacao from departamento;