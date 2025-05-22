-- Parte	Significado
-- mysql -> Cliente de linha de comando do MySQL — usado para conectar ao servidor MySQL
-- -u root ->	Especifica o usuário com o qual você deseja se conectar (aqui: root -> permissão maxima)
-- -p ->	Solicita que o MySQL peça a senha desse usuário
mysql -u root -p

--criando um novo usuário
CREATE USER 'estagiario'@'localhost' IDENTIFIED BY 'senha123';

--privilegios
GRANT ALL PRIVILEGES ON starwars.* TO 'estagiario'@'localhost';


--depois recarregar 
flush privileges;
--privilegios separados
grant alter, create, delete, drop, insert, select on relacionamentos.* to 'estagiario2'@'localhost';
--retirando permissoes do usuario
 revoke  delete, drop on relacionamentos.* from 'estagiario2'@'localhost'; 

-- privilegio de visualização em todas as tabelas
 grant select on *.* to 'estagiario2'@'localhost';