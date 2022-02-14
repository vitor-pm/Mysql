CREATE DATABASE db_pizzaria_legal; -- CRIANDO O BANCO DE DADOS
-- drop database db_pizzaria_legal;
USE db_pizzaria_legal; -- COLOCANDO O BANCO EM USO

-- CRIANDO TABELA CATEGORIA
CREATE TABLE tb_categoria(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
pizzaiolo VARCHAR(20),
PRIMARY KEY (id));

-- CRIANDO TABELA PIZZA
CREATE TABLE tb_pizza(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
valor double,
tamanho varchar(10),
id_categoria INT,
PRIMARY KEY(id));

-- POPULANDO TABELA CATEGORIA
INSERT INTO tb_categoria (nome, pizzaiolo) 
VALUES("Doce","Anderson");

INSERT INTO tb_categoria (nome, pizzaiolo) 
VALUES("Frango","Salles");

INSERT INTO tb_categoria (nome, pizzaiolo) 
VALUES("Muçarela","Amanda");

INSERT INTO tb_categoria (nome, pizzaiolo) 
VALUES("Calabresa","Anderson");

INSERT INTO tb_categoria (nome, pizzaiolo) 
VALUES("Outros","Amadeu");

-- POPULANDO TABELA PIZZA
INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Brigadeiro",40,"Pequena",1);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Frango c/ cat.",60,"Grande",2);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("4 Queijos",50,"Grande",3);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Calabresa c/ Queijo",60,"Grande",4);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Atum",40,"Media",5);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Cogumelo",60,"Media",5);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Muçarela",40,"Media",3);

INSERT INTO tb_pizza (nome, valor, tamanho,id_categoria)
VALUES("Calabresa c/ cat.",60,"Grande",4);

-- PIZZAS COM VALOR MAOIR DE 45 REAIS
SELECT * FROM tb_pizza
WHERE valor >= 45;

-- PIZZAS COM VALOR ENTRE 29 E 60 REAIS
SELECT * FROM tb_pizza
WHERE valor BETWEEN 3 AND 60;

-- PIZZAS COM A LETRA C
SELECT * FROM tb_pizza
WHERE nome like 'C%';

-- SELECT INNER JOIN COM PIZZAS E CATEGORIAS 
SELECT P.Nome, P.Valor, C.Nome FROM tb_pizza  AS P
INNER JOIN tb_categoria as C on P.id_categoria = C.id; 

-- TODAS PIZZAS DE UMA CATEGORIA ESPECIFICA (EX:MUÇARELA)
SELECT P.Nome, P.Valor, C.Nome FROM tb_pizza  AS P
INNER JOIN tb_categoria AS C ON P.id_categoria = C.id
WHERE c.id = 3;