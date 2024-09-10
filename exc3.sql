
CREATE DATABASE biblioteca;
USE biblioteca;


CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    id_autor INT,
    id_categoria INT,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);


CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


INSERT INTO Categoria (nome) VALUES
('Ficção'),
('Romance'),
('Aventura'),
('Poesia'),
('Infantil');


INSERT INTO autor (id_autor, nome) VALUES
(1, 'Machado de Assis'),
(2, 'Clarice Lispector'),
(3, 'Jorge Amado'),
(4, 'Guimarães Rosa'),
(5, 'Carlos Drummond de Andrade'),
(6, 'Monteiro Lobato');


INSERT INTO livros (titulo, id_autor, id_categoria) VALUES 
('Dom Casmurro', 1, 1),
('A Hora da Estrela', 2, 2),
('Gabriela, Cravo e Canela', 3, 3),
('Grande Sertão: Veredas', 4, 4),
('Alguma Poesia', 5, 4),
('Sítio do Picapau Amarelo', 6, 5);


SELECT livros.titulo, autor.nome AS autor, Categoria.nome AS categoria
FROM livros
JOIN autor ON livros.id_autor = autor.id_autor
JOIN Categoria ON livros.id_categoria = Categoria.id_categoria;
