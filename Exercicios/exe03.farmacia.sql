CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(500),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Produtos farmacêuticos como remédios e vitaminas.'),
('Higiene', 'Produtos para higiene pessoal, como sabonetes, cremes e desodorantes.'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele, cabelo e maquiagem.'),
('Suplementos', 'Suplementos alimentares para saúde e bem-estar.'),
('Cuidados Pessoais', 'Produtos diversos para cuidados com a saúde e o corpo.');


CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10 , 2 ) NOT NULL,
    validade DATE NOT NULL,
    descricao VARCHAR(500),
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria)
        REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, validade, descricao, id_categoria) VALUES
('Paracetamol 500mg', 15.00, '2025-12-31', 'Medicamento para dor e febre', 1),  -- Categoria Medicamentos
('Aspirina 100mg', 18.50, '2026-06-30', 'Medicamento para dor e inflamação', 1), -- Categoria Medicamentos
('Shampoo Anti-caspa', 22.00, '2024-09-15', 'Shampoo para controle de caspa', 2), -- Categoria Higiene
('Desodorante Roll-on', 10.50, '2025-03-20', 'Desodorante roll-on para proteção', 2), -- Categoria Higiene
('Base Líquida', 35.00, '2026-05-10', 'Base líquida para maquiagem de longa duração', 3), -- Categoria Cosméticos
('Creme Hidratante', 28.00, '2025-12-01', 'Creme hidratante para pele seca', 3), -- Categoria Cosméticos
('Whey Protein', 150.00, '2024-12-31', 'Suplemento alimentar de proteína', 4), -- Categoria Suplementos
('Multivitamínico', 45.00, '2026-04-05', 'Suplemento vitamínico para saúde geral', 4); -- Categoria Suplementos

SELECT * FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_produtos.id_categoria = 3


