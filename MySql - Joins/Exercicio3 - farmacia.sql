CREATE DATABASE db_farmacia_do_bem; -- CRIANDO O BANCO DE DADOS

USE db_farmacia_do_bem; -- COLOCANDO O BANCO EM USO

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
receita BOOLEAN,
fabricante VARCHAR(20),
estoque int,
id_categoria INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) references tb_categoria(id));

-- POPULANDO TABELA CATEGORIA
INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Higiene", "Carlão");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Medicamentos", "Joana");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Beleza", "Marina");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Suplementos", "Arnold");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Alimentos", "Marcel");

-- POPULANDO TABELA PRODUTOS
INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Aspirina", 2.50, false, "Bayer",20, 2);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Whey", 91.50, false, "Integral Medica",4, 4);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Rivotril", 20.50, true, "Pfizer",15, 2);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Esmalte", 4.50, false, "Anita",6, 3);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Leite em pó", 25.50, true, "Nestle",7, 5);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Papel higienico", 10.50, false, "Personal",15, 1);

INSERT INTO tb_produto(nome, valor, receita, fabricante, estoque, id_categoria)
VALUES("Band Aid", 10.50, false, "Band",10, 2);

-- PRODUTOS COM VALOR MAIOR DE 50 REAIS
SELECT * FROM tb_produto
WHERE valor >= 50;

-- PRODUTOS COM VALOR ENTRE 3 E 60 REAIS
SELECT * FROM tb_produto
WHERE valor BETWEEN 3 AND 60;

-- PRODUTOS COM A LETRA B
SELECT * FROM tb_produto
WHERE nome like 'B%';

-- SELECT INNER JOIN COM PRODUTOS E CATEGORIAS 
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria as C on P.id_categoria = C.id; 

-- TODOS PRODUTOS DE UMA CATEGORIA ESPECIFICA (EX:MEDICAMENTOS)
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria AS C ON P.id_categoria = C.id
WHERE c.id = 2;