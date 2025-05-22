USE Sistema_de_Biblioteca;

select* from emprestimos;
select*from usuarios;
select*from livros;

INSERT INTO emprestimos (IdLivros, IdUsuario, Data_retirada, Data_prevista, Data_entrega, Status) 
VALUES
-- Empréstimos finalizados dentro do prazo (FECHADO)
(21, 26, '2023-01-05', '2023-01-19', '2023-01-19', 'FECHADO'),
(40, 50, '2023-02-10', '2023-02-24', '2023-02-24', 'FECHADO'),
(25, 26, '2023-03-15', '2023-03-29', '2023-03-29', 'FECHADO'),
(29, 27, '2023-04-02', '2023-04-16', '2023-04-16', 'FECHADO'),
(22, 28, '2023-05-18', '2023-06-01', '2023-06-01', 'FECHADO'),

-- Empréstimos finalizados com atraso (FECHADO)
(24, 29, '2023-01-10', '2023-01-24', '2023-02-05', 'FECHADO'), -- Atraso: 11 dias
(27, 30, '2023-03-01', '2023-03-15', '2023-03-25', 'FECHADO'), -- Atraso: 10 dias
(28, 30, '2023-05-20', '2023-06-03', '2023-06-10', 'FECHADO'), -- Atraso: 7 dias
(39, 30, '2023-07-05', '2023-07-19', '2023-07-30', 'FECHADO'), -- Atraso: 11 dias
(23, 30, '2023-09-10', '2023-09-24', '2023-10-01', 'FECHADO'), -- Atraso: 7 dias

-- Empréstimos ativos dentro do prazo (ATIVO)
(33, 29, '2023-10-01', '2023-10-15', NULL, 'ATIVO'),
(35, 45, '2023-10-05', '2023-10-19', NULL, 'ATIVO'),
(23, 30, '2023-10-10', '2023-10-24', NULL, 'ATIVO'),
(33, 30, '2023-10-12', '2023-10-26', NULL, 'ATIVO'),
(30, 35, '2023-10-14', '2023-10-28', NULL, 'ATIVO'), -- Corrigido: adicionei IdLivros e IdUsuario faltantes

-- Empréstimos em atraso (ATRASO)
(30, 42, '2023-09-01', '2023-09-15', NULL, 'ATRASO'), -- 30 dias de atraso
(21, 30, '2023-09-10', '2023-09-24', NULL, 'ATRASO'), -- 21 dias de atraso
(26, 30, '2023-09-15', '2023-09-29', NULL, 'ATRASO'), -- 16 dias de atraso
(37, 39, '2023-09-20', '2023-10-04', NULL, 'ATRASO'), -- 11 dias de atraso
(39, 30, '2023-09-25', '2023-10-09', NULL, 'ATRASO'), -- 6 dias de atraso

-- Casos especiais
(36, 36, '2023-08-01', '2023-08-15', NULL, 'ATRASO'), -- Nunca devolvido
(28, 33, '2023-08-15', '2023-08-29', NULL, 'ATRASO'), -- Nunca devolvido
(25, 30, '2023-10-01', '2023-10-15', NULL, 'ATIVO'), -- No prazo (ainda não devolvido)
(39, 30, '2023-10-10', '2023-10-24', NULL, 'ATIVO'), -- No prazo (ainda não devolvido)
(40, 30, '2023-09-30', '2023-10-14', '2023-10-14', 'FECHADO'); -- Devolvido no último dia

INSERT INTO emprestimos (IdLivros, IdUsuario, Data_retirada, Data_prevista, Data_entrega, Status) 
VALUES
-- Empréstimos finalizados dentro do prazo (FECHADO)
(21, 26, '2023-01-05', '2023-01-19', '2023-01-10', 'FECHADO'),
(40, 50, '2023-02-10', '2023-02-24', '2023-02-24', 'FECHADO'),
(25, 30, '2023-03-15', '2023-03-29', '2023-03-29', 'FECHADO'),
(29, 32, '2023-04-02', '2023-04-16', '2023-04-16', 'FECHADO'),
(22, 33, '2023-05-18', '2023-06-01', '2023-06-01', 'FECHADO'),
(31, 35, '2023-06-10', '2023-06-24', '2023-06-20', 'FECHADO'),
(34, 37, '2023-07-05', '2023-07-19', '2023-07-18', 'FECHADO'),
(38, 40, '2023-08-12', '2023-08-26', '2023-08-25', 'FECHADO'),
(41, 42, '2023-09-03', '2023-09-17', '2023-09-16', 'FECHADO'),
(45, 45, '2023-10-01', '2023-10-15', '2023-10-14', 'FECHADO'),

-- Empréstimos finalizados com atraso (FECHADO)
(24, 28, '2023-01-10', '2023-01-24', '2023-02-05', 'FECHADO'), -- Atraso: 11 dias
(27, 39, '2023-03-01', '2023-03-15', '2023-03-25', 'FECHADO'), -- Atraso: 10 dias
(28, 30, '2023-05-20', '2023-06-03', '2023-06-10', 'FECHADO'), -- Atraso: 7 dias
(39, 30, '2023-07-05', '2023-07-19', '2023-07-30', 'FECHADO'), -- Atraso: 11 dias
(23, 30, '2023-09-10', '2023-09-24', '2023-10-01', 'FECHADO'), -- Atraso: 7 dias
(32, 34, '2023-02-15', '2023-03-01', '2023-03-10', 'FECHADO'), -- Atraso: 9 dias
(36, 38, '2023-04-10', '2023-04-24', '2023-05-05', 'FECHADO'), -- Atraso: 11 dias
(42, 41, '2023-06-05', '2023-06-19', '2023-06-30', 'FECHADO'), -- Atraso: 11 dias
(46, 43, '2023-08-08', '2023-08-22', '2023-09-02', 'FECHADO'), -- Atraso: 11 dias
(49, 47, '2023-09-20', '2023-10-04', '2023-10-15', 'FECHADO'), -- Atraso: 11 dias

-- Empréstimos ativos dentro do prazo (ATIVO)
(33, 29, '2023-10-01', '2023-10-15', NULL, 'ATIVO'),
(35, 45, '2023-10-05', '2023-10-19', NULL, 'ATIVO'),
(23, 30, '2023-10-10', '2023-10-24', NULL, 'ATIVO'),
(33, 30, '2023-10-12', '2023-10-26', NULL, 'ATIVO'),
(30, 35, '2023-10-14', '2023-10-28', NULL, 'ATIVO'),
(37, 36, '2023-10-03', '2023-10-17', NULL, 'ATIVO'),
(44, 48, '2023-10-07', '2023-10-21', NULL, 'ATIVO'),
(47, 49, '2023-10-09', '2023-10-23', NULL, 'ATIVO'),
(50, 50, '2023-10-11', '2023-10-25', NULL, 'ATIVO'),
(52, 26, '2023-10-15', '2023-10-29', NULL, 'ATIVO'),

-- Empréstimos em atraso (ATRASO)
(30, 42, '2023-09-01', '2023-09-15', NULL, 'ATRASO'), -- 30 dias de atraso
(21, 30, '2023-09-10', '2023-09-24', NULL, 'ATRASO'), -- 21 dias de atraso
(26, 30, '2023-09-15', '2023-09-29', NULL, 'ATRASO'), -- 16 dias de atraso
(37, 39, '2023-09-20', '2023-10-04', NULL, 'ATRASO'), -- 11 dias de atraso
(24, 31, '2023-08-25', '2023-09-08', NULL, 'ATRASO'), -- 37 dias de atraso
(28, 33, '2023-09-05', '2023-09-19', NULL, 'ATRASO'), -- 26 dias de atraso
(31, 34, '2023-08-15', '2023-08-29', NULL, 'ATRASO'), -- 47 dias de atraso
(34, 37, '2023-09-28', '2023-10-12', NULL, 'ATRASO'), -- 3 dias de atraso
(38, 40, '2023-08-30', '2023-09-13', NULL, 'ATRASO'), -- 32 dias de atraso
(43, 44, '2023-09-10', '2023-09-24', NULL, 'ATRASO'); -- 21 dias de atraso

INSERT INTO emprestimos (IdLivros, IdUsuario, Data_retirada, Data_prevista, Data_entrega, Status) 
VALUES
-- Empréstimos finalizados dentro do prazo (FECHADO)
(21, 26, '2023-01-05', '2023-01-19', '2023-01-19', 'FECHADO'),
(40, 255, '2023-02-10', '2023-02-24', '2023-02-24', 'FECHADO'),
(25, 30, '2023-03-15', '2023-03-29', '2023-03-29', 'FECHADO'),
(29, 272, '2023-04-02', '2023-04-16', '2023-04-16', 'FECHADO'),
(22, 291, '2023-05-18', '2023-06-01', '2023-06-01', 'FECHADO'),

-- Empréstimos finalizados com atraso (FECHADO)
(24, 264, '2023-01-10', '2023-01-24', '2023-02-05', 'FECHADO'), -- Atraso: 11 dias
(27, 300, '2023-03-01', '2023-03-15', '2023-03-25', 'FECHADO'), -- Atraso: 10 dias
(28, 273, '2023-05-20', '2023-06-03', '2023-06-10', 'FECHADO'), -- Atraso: 7 dias
(39, 282, '2023-07-05', '2023-07-19', '2023-07-30', 'FECHADO'), -- Atraso: 11 dias
(23, 30, '2023-09-10', '2023-09-24', '2023-10-01', 'FECHADO'), -- Atraso: 7 dias

-- Empréstimos ativos dentro do prazo (ATIVO)
(33, 37, '2023-10-01', '2023-10-15', NULL, 'ATIVO'),
(35, 264, '2023-10-05', '2023-10-19', NULL, 'ATIVO'),
(23, 300, '2023-10-10', '2023-10-24', NULL, 'ATIVO'),
(33, 273, '2023-10-12', '2023-10-26', NULL, 'ATIVO'),
(30, 282, '2023-10-14', '2023-10-28', NULL, 'ATIVO'),

-- Empréstimos em atraso (ATRASO)
(30, 255, '2023-09-01', '2023-09-15', NULL, 'ATRASO'), -- 30+ dias de atraso
(21, 291, '2023-09-10', '2023-09-24', NULL, 'ATRASO'), -- 21+ dias de atraso
(26, 30, '2023-09-15', '2023-09-29', NULL, 'ATRASO'), -- 16+ dias de atraso
(37, 43, '2023-09-20', '2023-10-04', NULL, 'ATRASO'), -- 11+ dias de atraso
(39, 47, '2023-09-25', '2023-10-09', NULL, 'ATRASO'), -- 6+ dias de atraso

-- Novos empréstimos adicionais (variando usuários e livros)
(46, 292, '2023-08-01', '2023-08-15', '2023-08-15', 'FECHADO'),
(47, 48, '2023-08-05', '2023-08-19', NULL, 'ATRASO'),
(48, 256, '2023-08-10', '2023-08-24', '2023-08-30', 'FECHADO'), -- Atraso: 6 dias
(56, 265, '2023-08-15', '2023-08-29', NULL, 'ATRASO'),
(60, 274, '2023-08-20', '2023-09-03', '2023-09-03', 'FECHADO'),
(41, 283, '2023-09-05', '2023-09-19', NULL, 'ATRASO'),
(52, 26, '2023-09-08', '2023-09-22', '2023-09-22', 'FECHADO'),
(22, 38, '2023-09-12', '2023-09-26', NULL, 'ATRASO'),
(53, 257, '2023-09-15', '2023-09-29', NULL, 'ATRASO'),
(54, 284, '2023-09-18', '2023-10-02', NULL, 'ATRASO');
