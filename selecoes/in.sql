use selecoes;

select * from departamento where nome = "financeiro" or nome = "Vendas" or nome = "TI";

-- com IN:

select * from departamento where nome in ("financeiro", "Vendas", "TI");
