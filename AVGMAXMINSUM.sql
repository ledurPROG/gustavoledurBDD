create database loja;
use loja;

create table vendas(
id_venda INT PRIMARY KEY,
produto varchar (100) NOT NULL,
valor_venda decimal(10,2));

insert into vendas(id_venda,valor_venda,produto)values
('001', '10.00', 'papel higienico'),
('002', '25.50', 'detergente'),
('003', '7.30', 'sabão em pó'),
('004', '12.00', 'shampoo'),
('005', '5.75', 'condicionador'),
('006', '15.00', 'creme dental'),
('007', '8.20', 'esponja de cozinha'),
('008', '18.40', 'limpador multiuso'),
('009', '9.60', 'alvejante'),
('010', '11.50', 'desinfetante'),
('011', '22.00', 'amaciante'),
('012', '14.80', 'sabonete'),
('013', '13.90', 'papel toalha'),
('014', '30.00', 'kit de limpeza'),
('015', '6.40', 'esponja de banho');

select min(cast(replace(valor_venda,',','.') AS decimal(10,2))) AS valor_minimo_loja
from vendas;

select max(cast(replace(valor_venda,',','.') AS decimal(10,2))) AS valor_maximo_loja
from vendas;

select sum(cast(replace(valor_venda,',','.') AS decimal(10,2))) AS media_de_vendas
from vendas;

select avg(cast(replace(valor_venda, ',','.') AS decimal(10,2))) AS media_valores_venda
from vendas;


SELECT*FROM vendas;