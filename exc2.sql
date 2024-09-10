create database biblioteca;
use biblioteca;
create table autor(
id_autor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL
);

insert into autor (id_autor, nome) VALUES
(01, 'Machado de Assis'),
(02, 'Clarice Lispector'),
(03, 'Jorge Amado'),
(04, 'Guimarães Rosa'),
(05, 'Carlos Drummond de Andrade'),
(06, 'Monteiro Lobato');

select*from autor;

create table livros(
id_livro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
id_autor INT,
FOREIGN KEY (id_autor) REFERENCES autor (id_autor)
);

insert into livros (id_livro, titulo, id_autor) values 
(101, 'Dom Casmurro', 1),
(202, 'A Hora da Estrela', 2),
(303, 'Gabriela, Cravo e Canela', 3),
(404, 'Grande Sertão: Veredas', 4),
(505, 'Alguma Poesia', 5),
(606, 'Sítio do Picapau Amarelo', 6);

select*from livros;

SELECT livros.titulo, autor.nome AS autor
FROM livros 
JOIN autor ON livros.id_autor=autor.id_autor;

