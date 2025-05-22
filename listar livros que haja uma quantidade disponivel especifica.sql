--  Listar todos os livros disponíveis (quantidade > 30) em ordem alfabética numa tabela de livros 
select*from livros;
select *from autores;
select * 
from livros 
where Quantidade_de_livros > 30
ORDER BY Nome_do_livro ASC;