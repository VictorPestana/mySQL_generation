CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,           -- Chave Primária
    nome_categoria VARCHAR(50) NOT NULL,       -- Nome 
    descricao VARCHAR(255),                            -- Descrição 
    PRIMARY KEY (id_categoria)                 
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas com os sabores clássicos, como Margarita e Calabresa.'), -- ID 1 
('Gourmet', 'Pizzas sofisticadas, com ingredientes premium e sabores exclusivos.'), # ID 2 
('Vegana', 'Pizzas preparadas sem produtos de origem animal.'), # ID 3 
('Doces', 'Pizzas com sabores doces, como Chocolate e Banana com Canela.'), # ID 4 
('Especial', 'Pizzas com combinações únicas e inusitadas de sabores.'); # ID 5


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT,               -- Chave Primária
    nome_pizza VARCHAR(50) NOT NULL,           -- Nome 
    tamanho VARCHAR(20) NOT NULL,              -- Tamanho da Pizza (ex.: Pequena, Média, Grande)
    preco DECIMAL(10, 2) NOT NULL,             -- Preço 
    ingredientes TEXT NOT NULL,                -- Ingredientes 
    id_categoria INT NOT NULL,                 
    PRIMARY KEY (id_pizza),                    
    FOREIGN KEY (id_categoria)                 
        REFERENCES tb_categorias (id_categoria) 
);

INSERT INTO tb_pizzas (nome_pizza, tamanho, preco, ingredientes, id_categoria) VALUES
('Margherita', 'Média', 35.00, 'Molho de tomate, queijo muçarela, manjericão', 1),  
('Calabresa', 'Grande', 42.00, 'Calabresa, queijo muçarela, cebola', 1),            
('Quatro Queijos', 'Média', 40.00, 'Queijo muçarela, queijo prato, parmesão, gorgonzola', 1),  
('Trufada', 'Grande', 55.00, 'Molho branco, queijo muçarela, cogumelos, azeite de trufas', 2), 
('Salmon', 'Média', 65.00, 'Queijo muçarela, salmão defumado, dill, limão siciliano', 2),    
('Veggie', 'Média', 45.00, 'Molho de tomate, cogumelos, abobrinha, pimentões, queijo vegano', 3), 
('Banana com Canela', 'Pequena', 25.00, 'Banana, canela, açúcar, queijo', 4),           
('Chocolate', 'Pequena', 28.00, 'Chocolate ao leite, morango, calda de chocolate', 4);   

SELECT * FROM tb_pizzas; 

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 and 100;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_pizzas.id_categoria = 4






