--     Listar todos os empréstimos ativos (não devolvidos) com nome do livro e do usuário.

select u.Nome_Usuario, e.IdLivros,l.Nome_do_livro, e.Status, e.Data_Prevista 
from emprestimos as e
join livros as l
join usuarios as u
where Status = 'ATIVO' or Status = 'ATRASO'
ORDER BY Status ASC;