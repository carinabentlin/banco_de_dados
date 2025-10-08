CREATE DATABASE db_exercicio2;
USE db_exercicio2;

-- Criação da tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    data_validade DATE
);
-- Inserir produtos
INSERT INTO tb_produtos (nome, categoria, quantidade, preco, data_validade) VALUES
('Notebook', 'Informática', 10, 3500.00, '2026-12-31'),
('Smartphone', 'Telefonia', 25, 2200.00, '2026-05-15'),
('Headset', 'Periféricos', 50, 450.00, '2027-01-01'),
('Monitor"', 'Informática', 15, 1200.00, '2026-08-20'),
('Mouse', 'Periféricos', 80, 150.00, '2027-02-10'),
('Teclado', 'Periféricos', 40, 380.00, '2027-03-05'),
('Cadeira Gamer', 'Móveis', 5, 950.00, '2028-01-01'),
('Impressora', 'Escritório', 12, 780.00, '2026-09-15');

-- Selecionando dados da tabela
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizar Registro
UPDATE tb_produtos SET preco = 499.90 WHERE id = 3;
