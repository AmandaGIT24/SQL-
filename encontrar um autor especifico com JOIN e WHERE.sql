-- Buscar livros de um autor específico pelo nome (ex: "Machado de Assis").

Select  l.Nome_do_livro,l.descriçao, l.IdAutor as IDAutor, a.IdAutor,a.Nome_Autor
from livros as l
join autores as a 
where l.IdAutor = a.IdAutor 
and Nome_Autor = 'George Orwell';