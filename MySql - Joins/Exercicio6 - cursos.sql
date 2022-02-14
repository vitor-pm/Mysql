CREATE DATABASE db_cursoDaMinhaVida; -- CRIANDO O BANCO DE DADOS
-- DROP DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida; -- COLOCANDO O BANCO EM USO

-- CRIANDO TABELA CATEGORIA
CREATE TABLE tb_categoria(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
coordenador varchar(10),
primary key (id));

-- CRIANDO TABELA PRODUTO
CREATE TABLE tb_curso(
id INT AUTO_INCREMENT,
nome VARCHAR(20),
professor varchar(30),
valor DOUBLE,
descricao VARCHAR(100),
carga int,
id_categoria INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) references tb_categoria(id));

-- POPULANDO TABELA CATEGORIA
INSERT INTO tb_categoria(nome, coordenador) 
VALUES ("Java", "Gustavo");

INSERT INTO tb_categoria(nome, coordenador) 
VALUES ("Eletrica", "Anderson");

INSERT INTO tb_categoria(nome, coordenador) 
VALUES ("Banco de dados", "Samira");

INSERT INTO tb_categoria(nome, coordenador) 
VALUES ("Desenho", "Sheila");

INSERT INTO tb_categoria(nome, coordenador) 
VALUES ("Outros", "Fabio");

-- POPULANDO TABELA PRODUTOS
INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Java - Introdução", "Gustavo",50,"Aprenda Java",6,1);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Condutores", "Patricio",30,"Aprenda sobre condutores eletricos",10,2);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("CRUD", "Pamela",70,"Aprenda a fazer o CRUD",20,3);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Desenho - iniciante", "Carina",70,"Aprenda a desenhar",40,4);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Culinaria", "Marcelo",40,"Aprenda a cozinhar",10,5);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Java - APIS", "Gustavo",70,"Aprenda a criar apis com java",25,1);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Triggers", "Pamela",10,"Aprenda a criar triggers",6,2);

INSERT INTO tb_curso(nome, professor, valor, descricao, carga, id_categoria)
VALUES("Manutençao PC", "William",50,"Aprenda a consertar pcs",40,5);

-- CURSOS COM VALOR MAIOR DE 50 REAIS
SELECT * FROM tb_curso
WHERE valor >= 50;

-- CURSO SCOM VALOR ENTRE 3 E 60 REAIS
SELECT * FROM tb_curso
WHERE valor BETWEEN 3 AND 60;

-- CURSOS COM A LETRA J
SELECT * FROM tb_curso
WHERE nome like 'j%';

-- SELECT INNER JOIN COM CURSOS E CATEGORIAS 
SELECT P.Nome, P.Valor, C.Nome FROM tb_produto  AS P
INNER JOIN tb_categoria as C on P.id_categoria = C.id; 

-- TODOS CURSOS DE UMA CATEGORIA ESPECIFICA (EX:JAVA)
SELECT C.Nome, C.Valor, A.Nome FROM tb_curso  AS C
INNER JOIN tb_categoria AS A ON C.id_categoria = A.id
WHERE c.id_categoria = 1;