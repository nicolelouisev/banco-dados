USE db_ecommerce;

CREATE TABLE IF NOT EXISTS Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Descricao TEXT
);