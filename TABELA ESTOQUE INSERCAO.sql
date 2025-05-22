-- INSERT INTO estoque: Estamos adicionando dados à tabela estoque
-- Colunas entre parênteses: São as colunas que vamos preencher
-- SELECT: Busca os dados da tabela livros para colocar no estoque 
-- Inserindo dados iniciais 

SELECT*FROM estoque;

INSERT INTO estoque (
    IdLivros,
    Nome_do_livro,
    Quantidade_de_livros,
    Quantidade_Disponivel,  -- Deixando vazio inicialmente
    Quantidade_Emprestada   -- Iniciando com 0
)
SELECT 
    IdLivros,
    Nome_do_livro,
    Quantidade_de_livros,
    NULL,                   -- Quantidade disponível será calculada depois
    0                       -- Inicia com zero empréstimos
FROM 
    livros;

UPDATE estoque as  e  -- ATUALIZAR A COLUNA DE LIVRO EMPRESTADO
SET 
    e.Quantidade_Emprestada = (
        SELECT COUNT(*) 
        FROM emprestimos 
        WHERE IdLivros = e.IdLivros 
        AND Status IN ('ATIVO', 'ATRASO')
    ),
    e.Quantidade_Disponivel = e.Quantidade_de_livros - e.Quantidade_Emprestada;


-- Inserir os que não existem
INSERT INTO estoque (IdLivros, Nome_do_livro, Quantidade_de_livros, Quantidade_Disponivel, Quantidade_Emprestada)
SELECT l.IdLivros, l.Nome_do_livro, l.Quantidade_de_livros, l.Quantidade_de_livros, 0
FROM livros l
LEFT JOIN estoque e ON l.IdLivros = e.IdLivros
WHERE e.IdLivros IS NULL;

-- Atualizar os que existem
UPDATE estoque e
JOIN livros l ON e.IdLivros = l.IdLivros
SET 
    e.Nome_do_livro = l.Nome_do_livro,
    e.Quantidade_de_livros = l.Quantidade_de_livros,
    e.Quantidade_Disponivel = l.Quantidade_de_livros - e.Quantidade_Emprestada
WHERE e.Quantidade_de_livros <> l.Quantidade_de_livros;

select*from estoque;
