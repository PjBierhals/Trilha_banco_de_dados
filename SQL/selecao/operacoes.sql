USE selecoes;

--Operacao de união
SELECT nome, status FROM departamento where status ='Ativo'
UNION
SELECT nome, status FROM departamento where status ='Inativo';

--intersecção
SELECT nome, status FROM departamento 
where status ='Ativo' or qtde_min_empregados >5
INTERSECT
SELECT nome, status FROM departamento 
where status ='Inativo'or qtde_min_empregados <5;


--exclusao cuidar a ordem
SELECT nome, status FROM departamento 
where status ='Ativo' or qtde_min_empregados >5
EXCEPT
SELECT nome, status FROM departamento 
where status ='Inativo'or qtde_min_empregados <5;

