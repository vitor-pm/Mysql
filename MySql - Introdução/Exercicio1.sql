CREATE DATABASE db_empresa; -- CRIANDO O BANCO

USE db_empresa; -- COLOCANDO EM USO

-- CRIANDO A TABELA FUNCIONARIO
CREATE TABLE funcionario (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cargo VARCHAR(20),
    cpf CHAR(11) NOT NULL,
    salario DECIMAL(10 , 2 ),
    telefone VARCHAR(20),
    PRIMARY KEY (id)
);

-- INSERINDO FUNCIONARIOS
INSERT INTO funcionario (nome,cargo,cpf,salario,telefone) VALUES ("Vitor","Desenvolvedor","47965478924",1500.00,11946781623);
INSERT INTO funcionario (nome,cargo,cpf,salario,telefone) VALUES ("Anderson","Instrutor","47864234578",3000.00,11945312678);
INSERT INTO funcionario (nome,cargo,cpf,salario,telefone) VALUES ("Fernanda","Instrutora","47904597865",3000.00,11978126349);
INSERT INTO funcionario (nome,cargo,cpf,salario,telefone) VALUES ("Luiza","Desenvolvedora","47909387865",1500.00,11998451268);
INSERT INTO funcionario (nome,cargo,cpf,salario,telefone) VALUES ("Mario","Recepcionista","47904621465",1000.00,11952137864);

-- FUNCIONARIOS QUE GANHAM MENOS QUE 2000
SELECT * FROM funcionario 
WHERE salario < 2000;

-- FUNCIONARIOS QUE GANHAM MAIS QUE 2000
SELECT * FROM funcionario 
WHERE salario > 2000;

-- ALTERANDO SALARIO DE UM FUNCIONARIO
UPDATE funcionario SET salario = 3000.00 WHERE nome = "Vitor";