USE Sistema_de_Biblioteca;
select*from livros;
select * FROM autores;


INSERT INTO livros(Nome_do_Livro, descriçao, Quantidade_de_livros)
VALUES
('Dom Casmurro','Um clássico da literatura brasileira que explora ciúme, traição e a ambiguidade da narrativa através dos olhos de Bentinho.',30),
('1984','Uma distopia sombria sobre um regime totalitário que controla todos os aspectos da vida, incluindo o pensamento.',33),
('O Pequeno Príncipe','Uma fábula poética sobre amor, amizade e a essência da vida, narrada por um príncipe que viaja por diferentes planetas.',43),
('Cem Anos de Solidão','Uma obra-prima do realismo mágico que conta a saga da família Buendía em Macondo, um lugar cheio de fantasia e destino trágico.',25),
('Harry Potter e a Pedra Filosofal','O início da jornada de Harry Potter, um menino que descobre ser um bruxo e entra no mundo mágico de Hogwarts.',38),
('Orgulho e Preconceito','Um romance clássico sobre Elizabeth Bennet e o orgulhoso Mr. Darcy, explorando questões sociais e amor na Inglaterra do século XIX.',25),
('A Revolução dos Bichos','Uma sátira política em que animais de uma fazenda rebelam-se contra os humanos, mas acabam replicando a opressão que tentaram derrubar',30),
('Crime e Castigo','Um drama psicológico sobre um estudante que comete um assassinato e lida com a culpa e a redenção.',30),
('O Senhor dos Anéis: A Sociedade do Anel','A primeira parte da épica jornada de Frodo para destruir o Um Anel e salvar a Terra Média das trevas.',29),
('A Culpa é das Estrelas','Uma emocionante história de amor entre Hazel e Augustus, dois adolescentes com câncer, que enfrentam a vida e a morte com coragem.',30),
('O Alquimista','Uma jornada espiritual de um pastor andaluz em busca de seu "tesouro pessoal", repleta de simbolismos sobre destino e sonhos.',30),
('A Menina que Roubava Livros','Narrado pela Morte, este livro acompanha Liesel, uma jovem na Alemanha nazista que encontra refúgio nos livros roubados.',30),
('O Hobbit','A aventura de Bilbo Bolseiro, um hobbit que parte em uma missão para recuperar um tesouro guardado pelo dragão Smaug.',30),
('A Metamorfose','A perturbadora história de Gregor Samsa, que acorda transformado em um inseto e reflete sobre alienação e existência.',30),
('O Grande Gatsby','Um retrato do sonho americano e da decadência através do misterioso Jay Gatsby e seu amor por Daisy Buchanan.',30),
('A Biblioteca da Meia-Noite','Uma história sobre arrependimentos e segundas chances, onde Nora Seed explora livros que mostram vidas alternativas que poderia ter vivido.',30),
('O Nome do Vento','A saga de Kvothe, um homem lendário que conta sua história de magia, música e tragédia.',30),
('It: A Coisa','Um grupo de crianças enfrenta um ser maligno que se alimenta de seus medos na cidade de Derry.',30),
('A Paciente Silenciosa','Um thriller psicológico sobre uma mulher que mata o marido e depois para de falar, enquanto um terapeuta tenta desvendar o mistério.',30),
('Sapiens: Uma Breve História da Humanidade','Uma análise fascinante da evolução humana, desde os primórdios até os dias atuais, explorando cultura, religião e tecnologia.',30);

INSERT INTO livros(Nome_do_Livro, descriçao, Quantidade_de_livros)
VALUES
    ('Memórias Póstumas de Brás Cubas', 'Narrado por um defunto autor, este clássico de Machado de Assis satiriza a sociedade brasileira do século XIX com ironia fina.', 35),
    ('A Hora da Estrela', 'A comovente história de Macabéa, uma datilógrafa nordestina na grande cidade, numa narrativa única de Clarice Lispector.', 28),
    ('Capitães da Areia', 'A vida de um grupo de meninos de rua em Salvador, mostrando a dura realidade da infância abandonada no Brasil.', 30),
    ('Grande Sertão: Veredas', 'A épica jornada de Riobaldo pelo sertão brasileiro, numa prosa poética que reinventou a literatura nacional.', 22),
    ('Vidas Secas', 'A saga de uma família de retirantes nordestinos enfrentando a seca e a miséria, em narrativa seca e impactante.', 27),
    ('O Alienista', 'Conto de Machado de Assis sobre o Dr. Simão Bacamarte e seu estudo da loucura, questionando os limites da sanidade.', 40),
    ('Iracema', 'Lenda do Ceará sobre o amor entre a índia Iracema e o colonizador português Martim, por José de Alencar.', 32),
    ('O Cortiço', 'Retrato cru da vida nos cortiços cariocas do século XIX, mostrando a mistura de raças e classes sociais.', 29),
    ('Macunaíma', 'O "herói sem nenhum caráter" em uma aventura folclórica que mistura mitos brasileiros e crítica social.', 31),
    ('Claro Enigma', 'Coletânea poética de Drummond que explora temas existenciais com linguagem precisa e profunda.', 36),
    ('O Quinze', 'Romance sobre a seca de 1915 no Nordeste brasileiro, mostrando a resistência humana frente à adversidade.', 25),
    ('Dom Casmurro (Edição Especial)', 'Versão comentada do clássico, com análise da ambiguidade de Capitu e notas históricas.', 20),
    ('1984 (Edição Definitiva)', 'Inclui posfácio sobre vigilância na era digital e comparações com a sociedade contemporânea.', 30),
    ('O Pequeno Príncipe (Edição Ilustrada)', 'Com as aquarelas originais do autor e texto integral, perfeito para colecionadores.', 45),
    ('Cem Anos de Solidão (Edição Comemorativa)', 'Tradução revisada com glossário de personagens e árvore genealógica da família Buendía.', 28),
    ('Harry Potter e as Relíquias da Morte', 'O épico final da série, onde Harry enfrenta Voldemort numa batalha pelo futuro do mundo bruxo.', 50),
    ('Orgulho e Preconceito (Edição de Luxo)', 'Com extras sobre a era regencial e o feminismo na obra de Jane Austen.', 22),
    ('A Revolução dos Bichos (Graphic Novel)', 'Adaptação em quadrinhos da fábula política de Orwell, com ilustrações impactantes.', 35),
    ('Crime e Castigo (Edição Integral)', 'Tradução direta do russo com notas explicativas sobre o contexto histórico da obra.', 30),
    ('O Senhor dos Anéis: O Retorno do Rei', 'O desfecho da trilogia, com a destruição do Anel e a coroação de Aragorn.', 42);