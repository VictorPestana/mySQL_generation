CREATE DATABASE db_cidades_das_carnes;

USE db_cidades_das_carnes;

CREATE TABLE tb_categoria (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(500),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, descricao) VALUES
('Carnes', 'Diversas opções de carnes frescas, como bovinas, suínas e aves.'),
('Legumes', 'Legumes frescos, ideais para o consumo diário.'),
('Frutas', 'Frutas frescas e tropicais, para consumo ou sucos.'),
('Embutidos', 'Produtos derivados de carnes como linguiças e salsichas.'),
('Vegetais', 'Verduras e vegetais variados, como couve e alface.');


CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    quantidade_estoque INT NOT NULL,
    descricao VARCHAR(500),
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria)
        REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, descricao, id_categoria) VALUES
('Picanha', 450.00, 30, 'Carne bovina nobre, ideal para churrasco', 1),  -- Categoria Carnes
('Fraldinha', 35.00, 20, 'Carne bovina macia, boa para assados', 1),    -- Categoria Carnes
('Coxa de Frango', 55.00, 50, 'Coxa de frango fresca e suculenta', 1),  -- Categoria Carnes
('Tomate', 5.00, 200, 'Tomates frescos e saborosos', 2),               -- Categoria Legumes
('Cenoura', 3.50, 150, 'Cenouras frescas e crocantes', 2),             -- Categoria Legumes
('Maçã Gala', 4.00, 100, 'Frutas frescas e doces', 3),                 -- Categoria Frutas
('Laranja', 3.00, 120, 'Laranjas frescas para suco ou consumo', 3),    -- Categoria Frutas
('Linguiça Calabresa', 20.00, 80, 'Linguiça calabresa defumada', 4);    -- Categoria Embutidos

SELECT * FROM tb_produtos; # LISTA TODOS

SELECT * FROM tb_produtos WHERE preco > 50.00; # PRECO MAIOR QUE 50

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00; # PRECO ENTRE 50 E 150

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%'; # PRODUTOS QUE POSSUAM A LETRA C

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id_categoria; # UNIAO DOS DADOS DE AMBAS TABELAS

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id_categoria WHERE tb_produtos.id_categoria = 1 # UNIAO DOS DADOS DE AMBAS TABELAS ONDE BUSCAMOS APENAS OS PRODUTOS DA CATEGORIA CARNES








