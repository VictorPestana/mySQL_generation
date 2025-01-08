CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo e alta resistência.'),
('Mago', 'Usuário de magias com alto poder de ataque à distância.'),
('Arqueiro', 'Especialista em combate à distância com precisão.'),
('Paladino', 'Combina habilidades defensivas e de suporte com combate.'),
('Assassino', 'Especialista em ataques furtivos e alta velocidade.');


CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT,           -- Chave Primária
    nome_personagem VARCHAR(50) NOT NULL,          
    nivel INT NOT NULL,                            
    HP INT NOT NULL,                               
    ATAQUE BIGINT NOT NULL,                        
    MANA INT NOT NULL,                             
    id_classe_personagens BIGINT NOT NULL,            -- Chave Estrangeira para tb_classes
    PRIMARY KEY (id_personagem),                   -- Definição da Chave Primária
    FOREIGN KEY (id_classe_personagens)            -- Definição da Chave Estrangeira
        REFERENCES tb_classes (id_classe)          
);


INSERT INTO tb_personagens (nome_personagem, nivel, hp, ATAQUE, mana, id_classe_personagens) VALUES
('Thorin', 10, 1200, 200,2000, 1), -- Guerreiro
('Elena', 8, 800, 1000,3000, 2),   -- Mago
('Arwyn', 12, 900, 3300,5000, 3),   -- Arqueiro
('Lancelot', 15, 1500,300, 500, 4), -- Paladino
('Shadow', 9, 700, 50,4000, 5),   -- Assassino
('Morgana', 11, 850, 1100,9000, 2), -- Mago
('Drake', 14, 1300, 400,10000, 1),  -- Guerreiro
('Lira', 7, 750, 800,3000, 3);     -- Arqueiro

-- LISTA TODOS
SELECT * FROM tb_personagens;

-- LISTA ONDE ATAQUE MAIOR QUE 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- LISTA ONDE ATAQUE ENTRE 1000 E 2000
SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 and 2000;

-- LISTA ONDE NOME DE PERSONAGEM POSSUI C
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- INNER JOIN UNINDO AS DUAS CLASSES
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe_personagens = tb_classes.id_classe;

-- INNER JOIN UNINDO AS DUAS CLASSES MAS TRAZENDO SOMENTE OS ARQUEIROS (ID 3)
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe_personagens = tb_classes.id_classe WHERE id_classe = 3






