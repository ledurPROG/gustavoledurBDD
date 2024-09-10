CREATE DATABASE escola;
use escola;
CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Nota (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    nota DECIMAL(5, 2) NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

INSERT INTO Aluno (nome) VALUES
('Ana Souza'),
('Carlos Silva'),
('Fernanda Lima'),
('João Pereira'),
('Maria Oliveira'),
('Pedro Santos'),
('Tatiane Costa'),
('Vinícius Almeida'),
('Laura Rodrigues'),
('Ricardo Fernandes');

INSERT INTO Nota (nota, id_aluno) VALUES
(7.5, 1), (8.0, 1), (9.0, 1), (6.5, 1), (8.5, 1), (7.0, 1), (9.5, 1), (8.0, 1),
(6.0, 2), (7.5, 2), (8.5, 2), (7.0, 2), (6.5, 2), (8.0, 2), (9.0, 2), (7.5, 2),
(9.0, 3), (8.5, 3), (7.0, 3), (6.0, 3), (8.0, 3), (7.5, 3), (9.5, 3), (8.5, 3),
(8.0, 4), (7.5, 4), (9.0, 4), (6.5, 4), (8.5, 4), (7.0, 4), (8.0, 4), (9.0, 4),
(7.0, 5), (8.5, 5), (9.0, 5), (6.5, 5), (7.5, 5), (8.0, 5), (9.5, 5), (8.5, 5),
(8.5, 6), (9.0, 6), (6.0, 6), (7.5, 6), (8.0, 6), (7.0, 6), (9.0, 6), (8.5, 6),
(7.5, 7), (8.0, 7), (9.0, 7), (6.5, 7), (8.5, 7), (7.0, 7), (9.5, 7), (8.0, 7),
(9.5, 8), (8.5, 8), (7.0, 8), (6.5, 8), (8.0, 8), (7.5, 8), (9.0, 8), (8.5, 8),
(8.0, 9), (9.0, 9), (7.5, 9), (6.5, 9), (8.5, 9), (7.0, 9), (9.0, 9), (8.0, 9),
(7.0, 10), (8.5, 10), (9.0, 10), (6.5, 10), (7.5, 10), (8.0, 10), (9.5, 10), (8.5, 10);

SELECT a.nome AS aluno_nome, 
       AVG(n.nota) AS media_notas
FROM Aluno a
LEFT JOIN Nota n ON a.id_aluno = n.id_aluno
GROUP BY a.id_aluno, a.nome;
