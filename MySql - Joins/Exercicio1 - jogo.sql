create database db_generation_game_online; -- CRIANDO DATABASE

use db_generation_game_online; -- COLOCANDO EM USO

-- CRIANDO A TABELA CLASSE
CREATE TABLE tb_classe (
    id INT AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    descricao VARCHAR(100),
    arma VARCHAR(20),
    PRIMARY KEY (id)
);

-- CRIANDO A TABELA PERSONAGEM
CREATE TABLE tb_personagem (
    id INT AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    inteligencia int,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    dificuldade VARCHAR(10),
    id_classe INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe)
        REFERENCES tb_classe(id)
);

-- POPULANDO TABELA CLASSE
INSERT INTO tb_classe (nome,descricao,arma) VALUES("Arqueiro","Utiliza um arco para atacar inimigos a longa distância.","Arco");
INSERT INTO tb_classe (nome,descricao,arma) VALUES("Guerreiro","Utiliza uma espada e um escudo para ataques de curta distância.","Espada/Escudo");
INSERT INTO tb_classe (nome,descricao,arma) VALUES("Mago","Tem poderes mágicos.","Cajado de Ataque");
INSERT INTO tb_classe (nome,descricao,arma) VALUES("Tanker","Sua função é levar dano para proteger aliados.","Escudo reforçado");
INSERT INTO tb_classe (nome,descricao,arma) VALUES("Suporte","Deve curar seus aliados.","Cajado de cura");

-- POPULANDO TABELA PERSONAGEM
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Gerould",2000,1500,3000,2,"Facil");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Ushan",3000,3000,1500,3,"Dificil");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Tyorgrirn",1500,1000,4000,4,"Medio");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Cintinara",1800,2500,1800,1,"Medio");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Drylameia",3500,1500,1000,5,"Medio");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Farfa",1800,2500,1400,1,"Dificil");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Montego",2300,1500,3500,4,"Dificil");
INSERT INTO tb_personagem (nome, inteligencia, ataque, defesa, id_classe,dificuldade) VALUES ("Henia",3500,1000,1000,5,"Dificil");

-- PERSONAGENS COM PODER DE ATAQUE MAIOR QUE 2000
	SELECT * FROM tb_personagem
	WHERE ataque > 2000;

-- PERSONAGENS COM PODER DE DEFESA ENTRE 1000 E 2000
	SELECT * FROM tb_personagem
	WHERE defesa between 1000 and 2000;

-- LIKE: PERSONAGENS COM A LETRA C
	SELECT * FROM tb_personagem
	WHERE nome LIKE '%C%';

-- SELECT COM JOIN: TABELA PERSONAGEM E CLASSE
	SELECT p.Nome, p.Dificuldade, c.nome AS 'Classe'
    FROM tb_personagem AS p
	INNER JOIN tb_classe AS c ON c.id = p.id_classe;

-- SELECT DE PERSONAGENS DE UMA CLASSE ESPECIFICA (EX:ARQUEIRO)
	SELECT p.Nome, p.Dificuldade, c.nome AS 'Classe'
    FROM tb_personagem AS p
	INNER JOIN tb_classe AS c ON c.id = p.id_classe
    WHERE p.id_classe = 1;