--  Mostrar quais livros um determinado usuário já pegou emprestado.

select l.Nome_do_livro, l.idLivros,u.Nome_Usuario,u.Numero_carteirinha, e.Status
from livros as l
join usuarios as u
join emprestimos as e
where u.Numero_carteirinha = '6543210987';