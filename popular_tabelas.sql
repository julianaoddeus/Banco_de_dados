-- 1) Students
INSERT INTO students (first_name, last_name, email, phone_number, address, membership_start, membership_end)
VALUES
('Ana', 'Silva', 'ana.silva@email.com', '11988887777', 'Rua A, São Paulo', '2024-01-01', '2025-01-01'),
('Bruno', 'Santos', 'bruno.santos@email.com', '21999998888', 'Av B, Rio de Janeiro', '2024-02-10', '2025-02-10'),
('Carla', 'Oliveira', 'carla.oliveira@email.com', '31911112222', 'Rua C, BH', '2024-03-05', '2025-03-05'),
('Diego', 'Costa', 'diego.costa@email.com', '41922223333', 'Av D, Curitiba', '2024-01-20', '2025-01-20'),
('Elisa', 'Ferreira', 'elisa.ferreira@email.com', '51933334444', 'Rua E, Porto Alegre', '2024-05-01', '2025-05-01'),
('Felipe', 'Lima', 'felipe.lima@email.com', '61944445555', 'Av F, Brasília', '2024-02-14', '2025-02-14'),
('Gabriela', 'Mendes', 'gabriela.mendes@email.com', '71955556666', 'Rua G, Salvador', '2024-07-07', '2025-07-07'),
('Henrique', 'Souza', 'henrique.souza@email.com', '81966667777', 'Av H, Recife', '2024-08-08', '2025-08-08'),
('Isabela', 'Pereira', 'isabela.pereira@email.com', '91977778888', 'Rua I, Belém', '2024-09-01', '2025-09-01'),
('João', 'Alves', 'joao.alves@email.com', '11900001111', 'Rua J, SP', '2024-10-15', '2025-10-15'),
('Karina', 'Martins', 'karina.martins@email.com', '21912121212', 'Av K, RJ', '2024-11-11', '2025-11-11'),
('Lucas', 'Araújo', 'lucas.araujo@email.com', '31923232323', 'Rua L, BH', '2024-06-06', '2025-06-06'),
('Mariana', 'Ramos', 'mariana.ramos@email.com', '41934343434', 'Av M, Curitiba', '2024-04-04', '2025-04-04'),
('Natália', 'Gonçalves', 'natalia.goncalves@email.com', '51945454545', 'Rua N, Porto Alegre', '2024-12-12', '2025-12-12'),
('Otávio', 'Carvalho', 'otavio.carvalho@email.com', '61956565656', 'Av O, Brasília', '2024-03-03', '2025-03-03');

-- 2) Authors
INSERT INTO authors (first_name, last_name, biography)
VALUES
('José', 'de Alencar', 'Autor clássico brasileiro.'),
('Machado', 'de Assis', 'Um dos maiores escritores do Brasil.'),
('Clarice', 'Lispector', 'Reconhecida pela escrita profunda.'),
('Jorge', 'Amado', 'Romancista baiano de renome internacional.'),
('Cecília', 'Meireles', 'Poetisa e escritora.'),
('Monteiro', 'Lobato', 'Criador do Sítio do Picapau Amarelo.'),
('Paulo', 'Coelho', 'Autor de O Alquimista.'),
('Graciliano', 'Ramos', 'Autor de Vidas Secas.'),
('Rubem', 'Fonseca', 'Contista e romancista brasileiro.'),
('Lygia', 'Fagundes Telles', 'Escritora e imortal da ABL.'),
('George', 'Orwell', 'Autor de 1984 e Revolução dos Bichos.'),
('J.K.', 'Rowling', 'Autora da série Harry Potter.'),
('J.R.R.', 'Tolkien', 'Autor de O Senhor dos Anéis.'),
('Agatha', 'Christie', 'Rainha do romance policial.'),
('Stephen', 'King', 'Mestre do suspense e terror.');

-- 3) Publishers
INSERT INTO publishers (full_name, address, phone_number)
VALUES
('Companhia das Letras', 'Rua Haddock Lobo, SP', '1130303030'),
('Rocco', 'Av Paulista, SP', '1140404040'),
('Record', 'Rua Voluntários da Pátria, RJ', '2131313131'),
('Saraiva', 'Av Rio Branco, RJ', '2141414141'),
('Leya', 'Rua Augusta, SP', '1151515151'),
('Nova Fronteira', 'Av Atlântica, RJ', '2161616161'),
('Globo Livros', 'Rua Bela Cintra, SP', '1171717171'),
('Intrínseca', 'Av Faria Lima, SP', '1181818181'),
('HarperCollins Brasil', 'Rua do Ouvidor, RJ', '2191919191'),
('Editora 34', 'Rua Vergueiro, SP', '1110101010'),
('Martins Fontes', 'Av Paulista, SP', '1120202020'),
('Zahar', 'Rua da Quitanda, RJ', '2130303030'),
('DarkSide Books', 'Rua do Arpoador, RJ', '2140404040'),
('Panda Books', 'Rua Frei Caneca, SP', '1152525252'),
('Autêntica', 'Rua Carijós, BH', '3135353535');

-- 4) Categories
INSERT INTO categories (name)
VALUES
('Romance'),
('Poesia'),
('Infantil'),
('Fantasia'),
('Suspense'),
('Terror'),
('Ficção Científica'),
('Policial'),
('Clássico'),
('Biografia'),
('Drama'),
('Aventura'),
('História'),
('Filosofia'),
('Autoajuda');

-- 5) Books
INSERT INTO books (title, isbn, publication_year, quantity_available, total_quantity, publisher_id, category_id, author_id)
VALUES
('Dom Casmurro', '9788573261234', 1899, 5, 5, 1, 9, 2),
('Memórias Póstumas de Brás Cubas', '9788573265678', 1881, 4, 4, 1, 9, 2),
('Capitães da Areia', '9788520932345', 1937, 6, 6, 3, 1, 4),
('O Alquimista', '9780061122415', 1988, 8, 10, 5, 15, 7),
('Harry Potter e a Pedra Filosofal', '9780747532743', 1997, 12, 15, 2, 4, 12),
('O Senhor dos Anéis', '9780618640157', 1954, 7, 10, 9, 4, 13),
('1984', '9780451524935', 1949, 10, 12, 9, 7, 11),
('A Revolução dos Bichos', '9780451526342', 1945, 9, 10, 9, 7, 11),
('A Moreninha', '9788573269089', 1844, 3, 3, 10, 9, 1),
('O Sítio do Picapau Amarelo', '9788572321749', 1920, 6, 8, 6, 3, 6),
('A Hora da Estrela', '9788520932121', 1977, 5, 5, 8, 1, 3),
('It - A Coisa', '9781501142970', 1986, 10, 10, 13, 6, 15),
('Assassinato no Expresso Oriente', '9780062693662', 1934, 7, 7, 14, 8, 14),
('Vidas Secas', '9788520921347', 1938, 4, 5, 7, 1, 8),
('Contos de Aprendiz', '9788572328120', 1951, 2, 2, 15, 11, 9);

-- 6) Libraries
INSERT INTO libraries (full_name, address, phone_number)
VALUES
('Biblioteca Central SP', 'Av Paulista, 1000, SP', '1139393939'),
('Biblioteca Nacional RJ', 'Av Rio Branco, 200, RJ', '2138383838'),
('Biblioteca Pública BH', 'Praça Sete, BH', '3137373737'),
('Biblioteca de Curitiba', 'Rua XV de Novembro, Curitiba', '4136363636'),
('Biblioteca de Porto Alegre', 'Av Borges de Medeiros, POA', '5135353535'),
('Biblioteca de Brasília', 'Esplanada, Brasília', '6134343434'),
('Biblioteca de Salvador', 'Av Sete de Setembro, SSA', '7133333333'),
('Biblioteca de Recife', 'Rua Aurora, Recife', '8132323232'),
('Biblioteca de Belém', 'Av Nazaré, Belém', '9131313131'),
('Biblioteca de Fortaleza', 'Av Beira Mar, Fortaleza', '8530303030'),
('Biblioteca de Campinas', 'Av Norte-Sul, Campinas', '1939292929'),
('Biblioteca de Niterói', 'Rua Moreira César, Niterói', '2128282828'),
('Biblioteca de Santos', 'Av Ana Costa, Santos', '1337272727'),
('Biblioteca de Manaus', 'Av Eduardo Ribeiro, Manaus', '9236262626'),
('Biblioteca de Goiânia', 'Av Goiás, Goiânia', '6235252525');

-- 7) Librarians
INSERT INTO librarians (first_name, last_name, employee_id, email, phone_number, library_id)
VALUES
('Alice', 'Rocha', 'EMP001', 'alice.rocha@bibsp.com', '11999990001', 1),
('Bernardo', 'Oliveira', 'EMP002', 'bernardo.oliveira@bibrj.com', '21999990002', 2),
('Camila', 'Souza', 'EMP003', 'camila.souza@bibh.com', '31999990003', 3),
('Daniel', 'Pereira', 'EMP004', 'daniel.pereira@bibcuritiba.com', '41999990004', 4),
('Eduarda', 'Ferreira', 'EMP005', 'eduarda.ferreira@bibpoa.com', '51999990005', 5),
('Fábio', 'Lima', 'EMP006', 'fabio.lima@bibbsb.com', '61999990006', 6),
('Giovana', 'Mendes', 'EMP007', 'giovana.mendes@bibssa.com', '71999990007', 7),
('Heitor', 'Costa', 'EMP008', 'heitor.costa@bibrec.com', '81999990008', 8),
('Isis', 'Almeida', 'EMP009', 'isis.almeida@bibbelem.com', '91999990009', 9),
('João', 'Martins', 'EMP010', 'joao.martins@bibfor.com', '85999990010', 10),
('Karla', 'Gomes', 'EMP011', 'karla.gomes@bibcamp.com', '19999990011', 11),
('Luís', 'Barbosa', 'EMP012', 'luis.barbosa@bibnit.com', '21999990012', 12),
('Marina', 'Carvalho', 'EMP013', 'marina.carvalho@bibsantos.com', '13999990013', 13),
('Nicolas', 'Rodrigues', 'EMP014', 'nicolas.rodrigues@bibmanaus.com', '92999990014', 14),
('Olívia', 'Silva', 'EMP015', 'olivia.silva@bibgo.com', '62999990015', 15);


-- em caso de popular com dados fictícios 
/*
  INSERT INTO students (first_name, last_name, email, phone_number, address, membership_start, membership_end)
  SELECT
      'Aluno' || i,
      'Teste' || i,
      'aluno' || i || '@email.com',
      '1199999' || lpad(i::text, 4, '0'),
      'Rua Exemplo, ' || i,
      -- membership_start entre 2015 e 2024
      DATE '2015-01-01' + (floor(random() * 3650)::int) * INTERVAL '1 day',
      -- membership_end = start + até 2 anos
      (DATE '2015-01-01' + (floor(random() * 3650)::int) * INTERVAL '1 day') 
          + (floor(random() * 730)::int) * INTERVAL '1 day'
  FROM generate_series(1, 20) AS s(i);
*/
