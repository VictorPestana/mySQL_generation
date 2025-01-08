CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categoria (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(500),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (nome_categoria, descricao) VALUES
('Hidráulica', 'Materiais relacionados à rede de água e esgoto'),
('Elétrica', 'Produtos e equipamentos para instalações elétricas'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Tintas e Vernizes', 'Tintas, vernizes e acessórios para pintura'),
('Madeiras', 'Produtos de madeira e derivados');


CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT,           
    nome_produto VARCHAR(50) NOT NULL,       
    preco DECIMAL(10, 2) NOT NULL,           
    quantidade_estoque INT NOT NULL,         
    descricao_produto VARCHAR(255),         
    id_categoria BIGINT NOT NULL,              
    PRIMARY KEY (id_produto),           
    FOREIGN KEY (id_categoria)            
        REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, descricao_produto, id_categoria) VALUES
('Canos PVC 100mm', 12.50, 200, 'Cano de PVC para uso em redes de esgoto', 1),
('Registro de Água 1/2', 25.00, 150, 'Registro para controle de fluxo de água', 1),
('Interruptor Simples', 5.00, 300, 'Interruptor de luz simples', 2),
('Fita Isolante', 3.50, 400, 'Fita para isolamento elétrico', 2),
('Chave de Fenda', 10.00, 250, 'Chave de fenda com cabo ergonômico', 3),
('Pincel 2"', 8.00, 100, 'Pincel para pintura em madeira e paredes', 4),
('Verniz Transparente 1L', 45.00, 80, 'Verniz à base de água para proteção de madeira', 4),
('Tábua Pinus 2m', 30.00, 50, 'Tábua de madeira para construções diversas', 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%'; 

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id_categoria WHERE tb_produtos.id_categoria = 1

