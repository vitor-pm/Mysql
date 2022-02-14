CREATE DATABASE db_construindo_a_nossa_vida; -- CRIANDO O BANCO DE DADOS

USE db_construindo_a_nossa_vida; -- COLOCANDO O BANCO EM USO

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
VALUES ("Alvenaria", "Hugo");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Hidraulica", "Otavio");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Eletrica", "Chico");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Decoracao", "Rui");

INSERT INTO tb_categoria(nome, responsavel) 
VALUES ("Outros", "Andre");

-- POPULANDO TABELA PRODUTOS
INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Tijolo baiano", 1.50, "Dicico", 1000, 1);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Cano PVC", 5.0, "Tigre", 50, 2);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Fio de Cobre", 1.50, "HortiFruti", 40, 3);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Pá", 90, "Dicico", 5, 5);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Lustre", 150, "C&C", 3, 4);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Bloco de Concreto", 1.00, "C&C", 800, 1);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Quadro", 40, "Arts", 4, 5);

INSERT INTO tb_produto(nome, valor, fornecedor, estoque, id_categoria)
VALUES("Interruptor", 7, "Voltz", 4, 3);


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
INNER JOIN tb_categoria as C on P.id_categoria = C.id; 

-- TODOS PRODUTOS DE UMA CATEGORIA ESPECIFICA (EX:ELETRICA)
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria AS C ON P.id_categoria = C.id
WHERE C.id = 3;