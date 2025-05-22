 -- Contar quantos empréstimos cada usuário já fez (ordenar do mais ativo para o menos ativo).
SELECT u.IdUsuario,
MAX(u.Nome_Usuario) AS Nome_Usuario,
MAX(u.Numero_Carteirinha) AS Numero_Carteirinha,
e.IdLivros, l.Nome_do_livro,
count(e.IdUsuario) AS Total_Emprestimos 
from usuarios as u 
join emprestimos as e  ON u.IdUsuario = e.IdUsuario
join livros as l       ON l.IdLivros = e.IdLivros
GROUP BY u.IdUsuario,u.Nome_Usuario, u.Numero_carteirinha, e.IdLivros, l.Nome_do_livro
order by Total_Emprestimos;
