-- Criação da tabela Empregado
CREATE TABLE Empregado (
    id_empregado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_supervisor INT,
    FOREIGN KEY (id_supervisor) REFERENCES Empregado(id_empregado)
);

-- Inserção de dados na tabela Empregado
INSERT INTO Empregado (nome, id_supervisor) VALUES
('João Silva', NULL),    
('Maria Oliveira', 1),    
('Pedro Santos', 1),     
('Ana Souza', 2),         
('Carlos Pereira', 2),   
('Fernanda Lima', 3);     


SELECT e1.id_empregado AS empregado_id, 
       e1.nome AS empregado_nome, 
       e2.id_empregado AS supervisor_id, 
       e2.nome AS supervisor_nome
FROM Empregado e1
LEFT JOIN Empregado e2 ON e1.id_supervisor = e2.id_empregado;
