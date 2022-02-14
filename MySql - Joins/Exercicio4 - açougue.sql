CREATE DATABASE db_cidade_das_carnes; -- CRIANDO O BANCO DE DADOS

USE db_cidade_das_carnes; -- COLOCANDO O BANCO EM USO

-- CRIANDO TABELA CATEGORIA
CREATE TABLE tb_categoria(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
responsavel varchar(10),
primary key (id));

-- CRIANDO TABELA PRODUTO
CREATE TABLE tb_produto(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
valor DOUBLE,
fornecedor VARCHAR(20),
estoque int,
id_categoria INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) references tb_categoria(id));

-- POPULANDO TABELA CATEGORIA
INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Carnes", "Robson");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Legumes", "Ruan");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Frutas", "Mario");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Aves", "Marcos");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Outros", "Andre");

-- POPULANDO TABELA PRODUTOS
INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Abobrinha", 1.50, "HortiFruti", 6, 2);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Picanha", 80, "JBS", 17, 1);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Maça", 0.50, "HortiFruti", 12, 3);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Frango", 25, "JBS", 25, 4);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Leite", 4, "Nestle", 4, 5);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Patinho", 30, "JBS", 9, 1);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Berinjela", 1.50, "HortiFruti", 8, 2);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Cereal", 8, "Nestle", 7, 5);

-- PRODUTOS COM VALOR MAIOR DE 50 REAIS
SELECT * FROM tb_produto
WHERE valor >= 50;

-- PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
SELECT * FROM tb_produto
WHERE valor BETWEEN 3 AND 60;

-- PRODUTOS COM A LETRA C
SELECT * FROM tb_produto
WHERE nome like 'C%';

-- SELECT INNER JOIN COM PRODUTOS E CATEGORIAS 
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria AS C on P.id_categoria = C.id; 

-- TODOS PRODUTOS DE UMA CATEGORIA ESPECIFICA (EX:CARNES)
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria AS C ON P.id_categoria = C.id
WHERE c.id = 1;