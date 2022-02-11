CREATE DATABASE db_escola; -- CRIANDO O BANCO

USE db_escola;  -- COLOCANDO EM USO

-- CRIANDO A TABELA ALUNO
CREATE TABLE aluno (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    email VARCHAR(30),
    matricula INT,
    telefone VARCHAR(20),
    nota DOUBLE,
    PRIMARY KEY (id)
);

-- INSERINDO ALUNOS
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Vitor","vitor@gmail.com",14789,"11945783612",10.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Leticia","leticia@gmail.com",14790,"11945126978",9.50);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Laura","laura@gmail.com",14791,"1194789451236",7.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Amanda","amanda@gmail.com",14792,"11978453691",10.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Mario","mario@gmail.com",14793,"11936451678",6.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Jose","jose@gmail.com",14794,"11997462581",5.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Maria","maria@gmail.com",14795,"11937946871",8.00);
INSERT INTO aluno (nome,email,matricula,telefone,nota) VALUES ("Joao","joao@gmail.com",14796,"11949341682",10.00);

-- TODOS ALUNO INSERIDOS
SELECT * FROM aluno;

-- ALUNOS COM NOTA MENOR QUE 7
SELECT * FROM aluno
WHERE nota < 7;

-- ALUNOS COM NOTA MAIOR QUE 7
SELECT * FROM aluno
WHERE nota > 7;

-- ALTERANDO NOTA DO ALUNO
UPDATE aluno 
SET nota = 7.50
WHERE matricula = 14791;