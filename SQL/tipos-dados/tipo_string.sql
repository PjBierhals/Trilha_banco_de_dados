
--CREATE TABLE aluno(
   -- matricula CHAR(10), --0 ,255
   -- nome VARCHAR(80), -- 0, 65535
    -- recomendacao TINYTEXT --ATÉ 255
   -- recomendacao TEXT, --65535
    -- recomendacao MEDIUMTEXT, -- 16 777215
    -- recomendacao LONGTEXT, -- 4 294 967 295

--);
use tipos_dados;
CREATE TABLE aluno(
    matricula CHAR(10),
    nome VARCHAR(80),
    recomendacao TEXT

);
INSERT INTO aluno VALUES('123456',' Carlos Pinheiro Broges', 'É um ótimo aluno.');

SELECT * FROM aluno;