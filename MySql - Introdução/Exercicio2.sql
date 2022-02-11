CREATE DATABASE db_ecommerce; -- CRIANDO O BANCO

USE db_ecommerce; -- COLOCANDO EM USO

-- CRIANDO A TABELA PRODUTO
CREATE TABLE produto (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(20),
    quantidade INT,
    preco DECIMAL(10 , 2 ) NOT NULL,
    marca VARCHAR(20),
    PRIMARY KEY (id)
);

-- INSERINDO PRODUTOS
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("TV","Eletrônico",5,1500.00,"Samsung");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("PS5","Videogame",3,5000.00,"Sony");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("Controle","Eletrônico",10,15.00,"Samsung");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("Smartphone","Celular",8,2000.00,"Motorola");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("Roteador","Eletrônico",5,400.00,"TPLINK");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("Cabo HDMI","Acessorio",5,20.00,"Elgin");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("Fone de Ouvido","Audio",5,700.00,"Sony");
INSERT INTO produto (nome,tipo,quantidade,preco,marca) VALUES ("TV","Eletrônico",2,7000.00,"TCL");

-- TODOS OS PRODUTOS
SELECT * FROM produto;

-- PRODUTOS QUE CUSTAM MENOS DE 500
SELECT * FROM produto 
WHERE preco < 500;

-- PRODUTOS QUE CUSTAM MAIS DE 500
SELECT * FROM produto 
WHERE preco > 500;

-- ALTERANDO PRECO DO PRODUTO
UPDATE produto SET preco = 5000.00
WHERE id = 1;