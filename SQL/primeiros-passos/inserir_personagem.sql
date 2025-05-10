INSERT INTO starwars.personagem (id, nome, altura, destaque, nascimento ) VALUES
(12, "Luke Skywalkers" , 1.75, true, "3091-10-25");


INSERT INTO starwars.personagem(id, nome, destaque) VALUES
(2,"Chebacca",true)

INSERT INTO starwars.personagem(nome, altura, nascimento, id, destaque) VALUES
('Dart Vader', 2.02,'309-09-08',3,true);

INSERT INTO starwars.personagem VALUES (4, 'Jabba the Hunt', 1.75,false,'30-06-12')

INSERT INTO starwars.personagem VALUES 
(5, 'Snoke', 2.13,false,'2097-04-08'),
(6, 'Leia', 1.50, true,'3093-08-11');

SELECT * FROM starwars.personagem