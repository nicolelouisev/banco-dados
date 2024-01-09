CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE IF NOT EXISTS Estudantes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INT NOT NULL,
    Nota DECIMAL(3, 1) NOT NULL,
    Turma VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

INSERT INTO Estudantes (Nome, Idade, Nota, Turma, Email)
VALUES
    ('Ana Silva', 16, 8.5, '10A', 'ana.silva@email.com'),
    ('Carlos Oliveira', 17, 7.2, '11B', 'carlos.oliveira@email.com'),
    ('Mariana Santos', 15, 6.8, '9C', 'mariana.santos@email.com'),
    ('Pedro Lima', 18, 8.9, '12A', 'pedro.lima@email.com'),
    ('Larissa Souza', 16, 9.5, '10B', 'larissa.souza@email.com'),
    ('Rafael Alves', 17, 6.5, '11A', 'rafael.alves@email.com'),
    ('Amanda Pereira', 15, 7.8, '9B', 'amanda.pereira@email.com'),
    ('Lucas Santos', 18, 8.2, '12B', 'lucas.santos@email.com');
    
    -- SELECT para estudantes com nota maior que 7.0
SELECT * FROM Estudantes
WHERE Nota > 7.0;

-- SELECT para estudantes com nota menor que 7.0
SELECT * FROM Estudantes
WHERE Nota < 7.0;

UPDATE Estudantes
SET Nota = 7.0
WHERE Nome = 'Rafael Alves';