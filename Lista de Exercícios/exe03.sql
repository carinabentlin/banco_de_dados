CREATE DATABASE db_exercicio3escola;
USE db_exercicio3escola;

-- Criação da tabela estudantes
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    data_matricula DATE NOT NULL
);

-- Inserir registros
INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula) VALUES
('Ana Souza', 15, '1A', 8.5, '2023-02-10'),
('João Lima', 16, '2B', 6.8, '2022-03-12'),
('Maria Oliveira', 14, '1B', 9.0, '2023-01-25'),
('Pedro Santos', 17, '3A', 5.5, '2021-02-20'),
('Beatriz Costa', 15, '1C', 7.2, '2023-02-01'),
('Lucas Almeida', 16, '2A', 6.0, '2022-02-15'),
('Fernanda Lima', 14, '1A', 8.0, '2023-03-05'),
('Ricardo Mendes', 17, '3B', 4.5, '2021-01-30');

-- Selecionando dados da tabela
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualizar Registro
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_estudantes SET nota = 7.5 WHERE nome = 'João Lima';
SET SQL_SAFE_UPDATES = 1;
