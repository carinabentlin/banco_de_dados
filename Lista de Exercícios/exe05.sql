-- LISTA 2 Banco de dados de uma pizzaria

-- Criar banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionar banco
USE db_pizzaria_legal;

-- Criar tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Criar tabela de pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tamanho ENUM('Pequena', 'Média', 'Grande', 'Família') NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    borda_recheada BOOLEAN DEFAULT FALSE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserir registros em tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas com sabores tradicionais'),
('Especiais', 'Combinações diferenciadas e sabores exclusivos'),
('Premium', 'Ingredientes nobres e combinações gourmet'),
('Vegetariana', 'Sem carne, à base de vegetais e queijos'),
('Doce', 'Pizzas com recheios doces');

-- Inserir registros em tb_pizzas
INSERT INTO tb_pizzas (nome, tamanho, preco, borda_recheada, categoria_id) VALUES
('Mussarela', 'Média', 39.90, TRUE, 1),
('Calabresa', 'Grande', 45.00, FALSE, 1),
('Frango com Catupiry', 'Família', 65.00, TRUE, 2),
('Quatro Queijos', 'Média', 55.00, FALSE, 2),
('Camarão Especial', 'Grande', 89.90, TRUE, 3),
('Vegetariana', 'Média', 49.90, FALSE, 4),
('Brigadeiro', 'Pequena', 35.00, TRUE, 5),
('Romeu e Julieta', 'Média', 50.00, FALSE, 5);

-- SELECT 1: pizzas com valor > R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT 2: pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT 3: pizzas com nome contendo a letra 'M'
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT 4: INNER JOIN pizzas + categorias
SELECT p.id, p.nome AS pizza, p.tamanho, p.preco, p.borda_recheada,
       c.nome AS categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- SELECT 5: INNER JOIN filtrando por categoria (exemplo: doces)
SELECT p.id, p.nome AS pizza, p.tamanho, p.preco,
       c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';