-- Apagar Banco de Dados db_quitanda

DROP DATABASE db_quitanda;
 
-- Recriar o Banco de dados db_quitanda

CREATE DATABASE db_quitanda;
 
-- Selecionar o Banco de Dados db_quitanda

USE db_quitanda;
 
-- Criar a tabela tb_categorias

CREATE TABLE tb_categorias(

id BIGINT AUTO_INCREMENT,

descricao VARCHAR(255) NOT NULL,

PRIMARY KEY (id)

);
 
-- Insere dados na tabela tb_categorias

INSERT INTO tb_categorias (descricao)

VALUES ("Frutas");
 
INSERT INTO tb_categorias (descricao)

VALUES ("Verduras");
 
INSERT INTO tb_categorias (descricao)

VALUES ("Legumes");
 
INSERT INTO tb_categorias (descricao)

VALUES ("Temperos");
 
INSERT INTO tb_categorias (descricao)

VALUES ("Ovos");
 
INSERT INTO tb_categorias (descricao)

VALUES ("outros");
 
-- Lista todos os dados da tabela tb_categorias

SELECT * FROM tb_categorias;
 
-- Criar a Tabela tb_produtos

CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT,

nome VARCHAR(255) NOT NULL,

quantidade INT, 

data_validade DATE NULL,

preco DECIMAL(6, 2),

categoria_id BIGINT, 

PRIMARY KEY (id),

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);
 
-- Insere dados na tabela tb_produtos

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, categoria_id)

VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
 
INSERT INTO Tb_produtos(nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
 
INSERT INTO Tb_produtos(nOme, Quantidade, Data_validade, Preco, Categoria_id)

VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
 
INSERT INTO TB_produtos(noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES("CEnoura", 1800, "2022-03-09", 3.50, 3);
 
INSERT INTO TB_produtos (noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES ("PImenta", 1100, "2022-03-15", 10.00, 4);
 
INSERT INTO TB_produtos (noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES ("ALecrim", 130, "2022-03-10", 5.00, 4);
 
INSERT INTO TB_produtos (noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES ("MAnga", 200, "2022-03-07", 5.49, 1);
 
INSERT INTO TB_produtos (noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES ("LAranja", 3000, "2022-03-13", 10.00, 1);
 
INSERT INTO TB_produtos (noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES ("COuve", 100, "2022-03-12", 1.50, 2);
 
INSERT INTO TB_produtos(noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES("TOmate", 1105, "2022-03-15", 3.00, 3);
 
INSERT INTO TB_produtos(noMe, qUantidade, dAta_validade, pReco, cAtegoria_id)

VALUES("RAbanete", 1200, "2022-03-15", 13.00, 3);
 
INSERT INTO TB_produtos(noMe, qUantidade, pReco)

VALUES("SAcola Cinza", 1118, 0.50);
 
INSERT INTO TB_produtos(noMe, qUantidade, pReco)

VALUES("SAcola Verde", 1118, 0.50);
 
-- Visualiza todos os dados da tabela tb_produtos

SELECT * FROM TB_produtos;
SELECT * FROM TB_produtos where PReco > 5.00 ANd CAtegoria_id = 2;
SELECT * FROM TB_produtos where PReco > 5.00 OR CAtegoria_id = 2;
SELECT * FROM TB_produtos where NOt CAtegoria_id = 2;
SELECT * FROM TB_produtos order BY NOme;  -- ordena por ordem crescente, por exemplo aqui ficou em ordem alfabetica 
SELECT * FROM TB_produtos order BY NOme desC;
SELECT * FROM TB_produtos ordER BY NOme, dAta_validade; -- util quando tem nome iguais e segundo critério de orden pode ser sobrenome 
SELECT * FROM TB_produtos wherE NOT CATegoria_id = 2;
select * from TB_produtos where PREco between 5.00 and 15.00 order by pREco;  -- ordena por ordem  -- pega intervalo de dados
SELECT * FROM TB_produtos WHERE preco IN (5.00, 10.00, 15.00);
SELECT * FROM TB_produtos WHERE nome LIKE "%ra%"; -- "%ra%" caracter coringa que traz os produtos que tenha silaba ra em qualquer lugar da palavra - qualquer coisa entre a porcentagem funciona, palavra, numero
SELECT * FROM TB_produtos WHERE nome LIKE "%ra";
SELECT * FROM TB_produtos WHERE nome LIKE "ra%";

SELECT * FROM TB_produtos INNER JOIN tb_categorias    -- 1 inner join faz a conexão das 2 tabelas / 2
ON tb_produtos.categoria_id = tb_categorias.id;       -- on o valor da chave primária da tb1 deve ser igual a da chave estrangeira da tb2 - nome da tabela.atributo que vc quer utilizar