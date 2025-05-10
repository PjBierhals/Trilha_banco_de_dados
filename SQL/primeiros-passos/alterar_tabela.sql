DESC starwars.personagem;

-- renomear tabela
ALTER TABLE starwars.personagem RENAME COLUMN destaque to em_destaque;

-- adicionar coluna
ALTER TABLE starwars.personagem ADD genero VARCHAR(20);

-- remover coluna
ALTER TABLE starwars.personagem DROP genero;

-- modificar coluna
ALTER TABLE starwars.personagem MODIFY COLUMN nome VARCHAR(50);

