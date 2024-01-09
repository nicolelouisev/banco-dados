CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria) VALUES
(1, 'Medicamentos', 'Produtos para tratamentos medicinais'),
(2, 'Cosméticos', 'Produtos de beleza e cuidados com a pele'),
(3, 'Higiene', 'Produtos de higiene pessoal'),
(4, 'Vitaminas e Suplementos', 'Suplementos nutricionais e vitaminas'),
(5, 'Prescrição Médica', 'Produtos vendidos apenas com prescrição médica');

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT,
    valor DECIMAL(8, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (id_produto, nome_produto, descricao_produto, valor, id_categoria) VALUES
(1, 'Aspirina', 'Analgésico e antitérmico', 12.50, 1),
(2, 'Shampoo Revitalizante', 'Para cabelos danificados', 25.00, 2),
(3, 'Sabonete Antibacteriano', 'Limpeza profunda', 5.50, 3),
(4, 'Vitamina C', 'Suplemento vitamínico', 30.00, 4),
(5, 'Creme Hidratante Facial', 'Hidratação intensiva', 45.00, 2),
(6, 'Preservativo', 'Preservativo com lubrificante', 8.90, 3),
(7, 'Antidepressivo', 'Medicamento para tratamento de depressão', 60.00, 1),
(8, 'Protetor Solar FPS 50', 'Proteção solar para a pele', 35.00, 2);

SELECT *
FROM tb_produtos
WHERE valor > 50.00;

SELECT *
FROM tb_produtos
WHERE valor BETWEEN 5.00 AND 60.00;

SELECT *
FROM tb_produtos
WHERE nome_produto LIKE '%C%';

SELECT *
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT *
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Cosméticos';
