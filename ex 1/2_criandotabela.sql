use db_rh;

CREATE TABLE Colaboradores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    DataAdmissao DATE NOT NULL,
    Departamento VARCHAR(50) NOT NULL
);