-- LISTA 2 Banco de dados para Game - Hades

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Deuses', 'Entidades poderosas que comandam o Olimpo'),
('Heróis', 'Mortais com habilidades acima da média'),
('Monstros', 'Criaturas do submundo com grande força'),
('Arqueiros', 'Especialistas em combate à distância'),
('Magos', 'Usuários de feitiços e magia ancestral');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Zagreus', 2500, 1800, 45, 1),
('Aquiles', 2200, 2000, 40, 2),
('Minotauro', 3000, 2500, 50, 3),
('Orfeu', 1200, 1000, 20, 2),
('Circe', 2800, 1500, 38, 5),
('Apolo', 2700, 1700, 42, 1),
('Calíope', 1500, 1200, 25, 4),
('Cérbero', 3200, 2300, 55, 3);

-- SELECTS
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.id, p.nome AS personagem, p.poder_ataque, p.poder_defesa, 
       c.nome AS classe, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.id, p.nome AS personagem, p.poder_ataque, p.poder_defesa, 
       c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiros';
