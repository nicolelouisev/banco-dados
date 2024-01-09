CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe INT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao_classe TEXT
);

INSERT INTO tb_classes (id_classe, nome_classe, descricao_classe) VALUES
(1, 'Guerreiro', 'Personagem especializado em combate corpo a corpo.'),
(2, 'Mago', 'Personagem com habilidades mágicas poderosas.'),
(3, 'Arqueiro', 'Personagem especializado em ataques à distância.'),
(4, 'Ladrão', 'Personagem ágil e furtivo.'),
(5, 'Clerigo', 'Personagem com habilidades de cura e suporte.');

CREATE TABLE tb_personagens (
    id_personagem INT PRIMARY KEY,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT,
    pontos_vida INT,
    ataque INT,
    defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (id_personagem, nome_personagem, nivel, pontos_vida, ataque, defesa, id_classe) VALUES
(1, 'Aragorn', 10, 100, 2500, 1200, 1),
(2, 'Gandalf', 8, 80, 1800, 900, 2),
(3, 'Legolas', 7, 75, 2100, 1100, 3),
(4, 'Thief', 6, 60, 1600, 800, 4),
(5, 'Healer', 9, 90, 1900, 1000, 5),
(6, 'Boromir', 12, 120, 2800, 1500, 1),
(7, 'RobinHood', 5, 50, 1950, 1050, 3),
(8, 'Merlin', 10, 95, 2200, 1300, 2);

SELECT *
FROM tb_personagens
WHERE ataque > 2000;

SELECT *
FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT *
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT *
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Arqueiro';