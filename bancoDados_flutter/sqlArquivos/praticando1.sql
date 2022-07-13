CREATE DATABASE lojinha;

DROP DATABASE lojinha;

CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(20) UNIQUE,
    whatsapp VARCHAR(35)
);

DROP TABLE Produto;

CREATE TABLE Produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50),
    marca varchar(50),
    preco double,
    quantidadeEstoque smallint
);

CREATE TABLE Compra(
id INT PRIMARY KEY AUTO_INCREMENT,
clienteID int,
produtoID int,
foreign key (clienteID) references Cliente(id),
foreign key (produtoID) references Produto(id)
);

INSERT INTO Produto
VALUE (NULL,"Arroz","Arras",5.80,9),
(NULL,"PCGamer","Kabum",200,10),
(NULL,"calculadora","Razer",1000,20);

INSERT INTO Cliente
VALUE(NULL,"MATHEUS","105.465.781-20","(47) 9 8921-2734"),
(NULL,"LUANZIN MILGRAU","325.658.265-00","(47) 8 4578-3265");

INSERT INTO Compra
VALUE (NULL, 1,1);

SELECT * FROM Cliente;
SELECT * FROM Compra;
SELECT * FROM Produto;



