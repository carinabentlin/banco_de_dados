CREATE DATABASE db_exercicio1rh;
DROP DATABASE db_exercicio1rh;
CREATE DATABASE db_exercicio1rh;
USE db_exercicio1rh;

-- Criação da tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50),
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);
-- Inserir dados dos colaboradores
INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_admissao)
VALUES
('Ana Souza', 'Analista de RH', 'Recursos Humanos', 2500.00, '2022-05-15'),
('João Lima', 'Assistente Administrativo', 'Administrativo', 2800.00, '2021-03-10'),
('Carina Bentlin', 'Desenvolvedora', 'TI', 4500.00, '2020-11-20'),
('Carlos Silva', 'Contador', 'Financeiro', 3200.00, '2024-01-05'),
('Fernanda Alves', 'Estagiária', 'Marketing', 1200.00, '2025-06-01');

-- Selecionando dados da tabela
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizar Registro
UPDATE tb_colaboradores SET salario = 4800.00 WHERE id = 3; 


