--backup
--mysqldump -u root -p rodando o comando de dump no usuario root
--database visualizacoes
--table funcionarios
-->direcionando o arquivo
mysqldump -u root -p visualizacoes funcionarios 
> "E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-funcionarios.sql"
--logo apos ira pedia a senha do banco


-- backup do database relacionamentos
mysqldump -u root -p relacionamentos > "E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-relacionamentos.sql"

--backup do database
mysqldump -u root -p --databases starwars juncoes >"E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-starwars-juncoes.sql"

--backup geral do mysql tudo
mysqldump -u root -p --all-databases >"E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-completo.sql"


--restaurar
mysql -u root -p < "E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-starwars-juncoes.sql"

--quando for um banco so deve se criar o banco primeiro

CREATE DATABASE relacionamentos;
--especificar onde que colocar o backup
mysql -u root -p relacionamentos < "E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-relacionamentos.sql"

--backup completo do mysql
mysql -u root -p  < "E:\curso dev\especialista\Trilha_banco_de_dados\SQL\miscelaneas\backups\backup-completo.sql"



DROP DATABASE relacionamentos;
