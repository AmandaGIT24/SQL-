create database Sistema_de_Biblioteca;
use Sistema_de_Biblioteca;
select*from estoque;
DESCRIBE estoque;

CREATE TABLE Autores
(
	IdAutor INT auto_increment PRIMARY KEY,
	Nome_Autor varchar(30) not null,
    Nome_do_livro varchar(30) not null
);

CREATE TABLE Livros
(  
	IdLivros INT auto_increment PRIMARY KEY,
	Nome_do_Livro varchar(30) not null,
	descriçao varchar(255) not null
);
    
    
CREATE TABLE Usuarios
(
     IdUsuario INT AUTO_INCREMENT PRIMARY KEY,
     Nome_Usuario varchar(30) not null,
     Numero_carteirinha int unique not null
);



CREATE TABLE Emprestimos 
(
    IdEmprestimo INT AUTO_INCREMENT PRIMARY KEY,
    IdLivros INT NOT NULL,
    IdUsuario INT NOT NULL,
    Data_retirada DATE NOT NULL,
    Data_prevista DATE NOT NULL,
    Data_entrega DATE NULL,
    Status ENUM('ATIVO', 'FECHADO', 'ATRASO') NOT NULL DEFAULT 'ATIVO',
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario),
    FOREIGN KEY (IdLivros) REFERENCES Livros(IdLivros)
);

CREATE TABLE estoque
 (
	IdLivros int,
    Nome_do_livro varchar(100),
	Quantidade_de_livros INT,
    Quantidade_Disponivel int,
    Quantidade_Emprestada int,
    FOREIGN KEY(IdLivros) REFERENCES livros(IdLivros)
)


