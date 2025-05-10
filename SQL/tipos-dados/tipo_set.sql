
--CREATE TABLE aluno(
   -- matricula CHAR(10), --0 ,255
   -- nome VARCHAR(80), -- 0, 65535
    -- recomendacao TINYTEXT --ATÉ 255
   -- recomendacao TEXT, --65535
    -- recomendacao MEDIUMTEXT, -- 16 777215
    -- recomendacao LONGTEXT, -- 4 294 967 295

--);

DROP TABLE IF EXISTS aluno;
use tipos_dados;


CREATE TABLE IF NOT EXists aluno(
    matricula CHAR(10),
    nome VARCHAR(80),
    recomendacao TEXT,
    semestre TINYINT UNSIGNED,
    creditos_cursados SMALLINT,
    media_geral FLOAT,
    data_ingresso DATE,
    data_conclusao DATE,
    horas_estudadas TIME,
    bolsista BOOLEAN,
    turno_estudo ENUM('Manhã','Tarde', 'Integral'),
    disciplinas SET('Biologia','Matemática','História', 'Geografia')
);


INSERT INTO aluno VALUES
('123456789A',' Carlos Pinheiro Broges', 'É um ótimo aluno.',1,50,8.9, '2010-02-07','2014-05-12','574:54:35',TRUE,'Tarde',"Biologia,história,geografia");

SELECT * FROM aluno;