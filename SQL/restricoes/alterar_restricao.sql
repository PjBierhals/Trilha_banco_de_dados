USE restricoes;

DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS empregado;
CREATE TABLE empregado(
    matricula CHAR(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    salario decimal(7,2) DEFAULT 2500,
    estado_civil ENUM('solteiro','casado','divorciado', 'viuvo') DEFAULT 'solteiro'
    
);

DESC empregado;

--modificar o valor defaut
ALTER TABLE restricoes.empregado
ALTER COLUMN estado_civil DROP DEFAULT;
ALTER TABLE restricoes.empregado
ALTER COLUMN estado_civil SET DEFAULT 'solteiro';

--modififcar uma constrait a coluna
ALTER TABLE restricoes.empregado
MODIFY COLUMN nome VARCHAR(50);
ALTER TABLE restricoes.empregado
MODIFY COLUMN nome VARCHAR(50)NOT NULL;

ALTER TABLE restricoes.empregado
ADD CONSTRAINT salario_minimo CHECK (salario >= 2600);

ALTER TABLE restricoes.empregado
DROP CHECK empregado_chk_1;
ALTER TABLE restricoes.empregado DROP CHECK salario_minimo;

INSERT INTO empregado (matricula, nome, salario ) VALUES
('12345','Ronald Borges',1600);
SELECT * FROM empregado;

