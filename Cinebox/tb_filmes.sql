-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/02/2025 às 16:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_cinebox`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_filmes`
--

CREATE TABLE `tb_filmes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `classificacao_indicativa` int(11) DEFAULT NULL,
  `valor_ingresso` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_filmes`
--

INSERT INTO `tb_filmes` (`id`, `nome`, `classificacao_indicativa`, `valor_ingresso`, `descricao`, `poster`) VALUES
(1, 'Avatar: O Caminho da Água', 12, 30.00, 'Jake Sully e Neytiri enfrentam novos desafios, explorando a conexão dos Na\'vi com os oceanos.', 'avatar-o-caminho-da-agua.png'),
(2, 'Bad Boys: Até o Fim', 14, 25.00, 'Mike e Marcus enfrentam um crime organizado que ameaça suas vidas e famílias, testando sua amizade.', 'bad-boys-ate-o-fim.png'),
(3, 'Coringa 2', 16, 28.00, 'Arthur Fleck luta com sua identidade e novas figuras que moldam seu destino em uma jornada sombria.', 'coringa-2.png'),
(4, 'Coringa', 16, 16.00, 'Arthur, um comediante fracassado, se transforma no vilão Coringa em uma Gotham decadente.', 'coringa.png'),
(5, 'Desafio Tokyo', 12, 20.00, 'Jovens pilotos competem em Tóquio, enfrentando adversários e suas inseguranças em uma corrida clandestina.', 'desafio-tokyo.png'),
(6, 'Gente Grande 2', 10, 18.00, 'Amigos de infância se reúnem para um fim de semana divertido, lidando com responsabilidades de adultos.', 'gente-grande-2.png'),
(7, 'Pulp Fiction', 18, 22.00, 'Obra-prima que entrelaça histórias de crime em LA, explorando temas de redenção e moralidade.', 'pulp-fiction.png'),
(8, 'Sem Tempo Para Morrer', 12, 35.00, 'James Bond enfrenta um novo desafio com tecnologia perigosa nas mãos erradas, lutando por proteção.', 'sem-tempo-para-morrer.png'),
(9, 'Star Wars: The Last Jedi', 10, 30.00, 'Rey busca entender seu poder enquanto Kylo Ren lida com suas decisões, explorando esperança e sacrifício.', 'star-wars-the-last-jedi.png'),
(10, 'The Batman', 14, 28.00, 'Bruce Wayne investiga crimes em Gotham, enfrentando vilões e questionando o que significa ser um herói.', 'the-batman.png'),
(11, 'Duna', 12, 32.00, 'Uma épica adaptação do clássico da ficção científica, \"Duna\" explora a luta pelo controle do planeta desértico Arrakis. Paul Atreides deve enfrentar inimigos e descobrir seu destino em uma batalha interplanetária por recursos vitais.', 'duna.png'),
(12, 'Spider-Man: Sem Volta Para Casa', 12, 30.00, 'Peter Parker lida com as consequências de sua identidade secreta revelada. Em uma tentativa de recuperar sua vida normal, ele busca a ajuda do Doutor Estranho, o que resulta em consequências inesperadas.', 'spider-man-sem-volta-para-casa.png'),
(13, 'Os Incríveis 2', 10, 20.00, 'A família de super-heróis está de volta! Helen sai para salvar o mundo enquanto Bob fica em casa cuidando das crianças. Uma aventura cheia de ação e humor que explora temas de família e heroísmo.', 'os-incriveis-2.png'),
(14, 'Tenet', 14, 28.00, 'Um agente secreto é armado com apenas uma palavra - Tenet - e está lutando por sua sobrevivência em um mundo de espionagem. Através do tempo e de uma realidade invertida, ele tenta impedir a Terceira Guerra Mundial.', 'tenet.png'),
(15, 'Matrix Resurrections', 14, 35.00, 'Neo e Trinity estão de volta em uma nova realidade onde devem redescobrir seus passados e lutar contra novas ameaças. A sequência traz novas camadas à filosofia da Matrix e à luta pela liberdade.', 'matrix-resurrections.png'),
(16, 'Vingadores: Ultimato', 12, 12.00, 'Os Vingadores se reúnem para reverter os danos causados por Thanos e restaurar a ordem no universo. Uma épica conclusão de uma saga que definiu gerações.', 'vingadores-ultimato.png'),
(17, 'A Forma da Água', 14, 25.00, 'Uma história de amor entre uma mulher muda e uma criatura aquática em um laboratório secreto. Uma fábula visualmente impressionante que explora temas de amor, solidão e aceitação.', 'a-forma-da-agua.png'),
(18, 'Jojo Rabbit', 10, 20.00, 'Um jovem garoto na Alemanha nazista descobre que sua mãe está escondendo uma jovem judia em sua casa. Com a ajuda de seu amigo imaginário, Adolf Hitler, ele deve confrontar suas crenças e preconceitos.', 'jojo-rabbit.png'),
(19, 'A Guerra do Amanhã', 12, 25.00, 'Um grupo de soldados é enviado ao futuro para lutar contra alienígenas. Enquanto a batalha se intensifica, eles devem descobrir o que realmente significa lutar pela sobrevivência.', 'a-guerra-do-amanha.png'),
(20, 'Cruella', 12, 30.00, 'A origem da famosa vilã de \"101 Dálmatas\". A história segue Estella, uma jovem criativa que se torna a famosa Cruella de Vil, enquanto luta por sua identidade em um mundo dominado pela moda.', 'cruella.png'),
(21, 'Shang-Chi e a Lenda dos Dez Anéis', 12, 28.00, 'Um jovem mestre das artes marciais deve confrontar seu passado e os dez anéis misteriosos de sua família. Uma aventura de ação que combina cultura e fantasia.', 'shang-chi.png'),
(22, 'Free Guy', 10, 22.00, 'Um funcionário de banco descobre que é, na verdade, um personagem em um videogame. Ele decide se tornar o herói de sua própria história em uma comédia divertida e cheia de ação.', 'free-guy.png'),
(23, 'Candlelight', 10, 18.00, 'Um drama introspectivo sobre um artista lutando para encontrar seu lugar no mundo enquanto lida com as consequências de suas escolhas e a busca pela autenticidade.', 'candlelight.png'),
(24, 'A Mulher na Janela', 16, 28.00, 'Uma psicóloga agorafóbica acredita ter testemunhado um crime do outro lado da rua. Combinando suspense psicológico e mistério, o filme mergulha em temas de percepção e realidade.', 'a-mulher-na-janela.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_filmes`
--
ALTER TABLE `tb_filmes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_filmes`
--
ALTER TABLE `tb_filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
