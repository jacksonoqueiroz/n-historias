-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2024 às 23:09
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_historias`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Inventores'),
(2, 'Planetas'),
(3, 'Personagens'),
(4, 'Curiosidades'),
(5, 'Gênios da Música');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_info` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `conteudo` text NOT NULL,
  `referencia` text NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp(),
  `modifeld` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conteudo`
--

INSERT INTO `conteudo` (`id_conteudo`, `id_info`, `titulo`, `conteudo`, `referencia`, `created`, `modifeld`) VALUES
(1, 1, 'O Pai da Aviação', 'Santos Dumont também foi o primeiro a decolar a bordo de um avião impulsionado por um motor a gasolina. Em 23 de outubro de 1906, voou cerca de sessenta metros a uma altura de dois a três metros com o Oiseau de Proie (francês para \"ave de rapina\"), no Campo de Bagatelle, em Paris. Menos de um mês depois, em 12 de novembro, diante de uma multidão de testemunhas, percorreu 220 metros a uma altura de seis metros com o Oiseau de Proie III. Esses voos foram os primeiros homologados pelo Aeroclube da França de um aparelho mais pesado que o ar, e possivelmente a primeira demonstração pública de um veículo levantando voo por seus próprios meios, sem a necessidade de uma rampa para lançamento.', 'https://pt.wikipedia.org/wiki/Santos_Dumont', '2024-07-09', '2024-07-23'),
(2, 17, 'Thomas Edson', 'Na sua vida, Edison recebeu 1 093 patentes. Quando considerados também os registros em outros países, além dos EUA, o total é de 2 332 patentes. O fonógrafo foi uma de suas principais invenções. Outra foi o cinestocópio, a primeira câmera cinematográfica bem-sucedida, com o equipamento para mostrar os filmes que fazia. Edison também aperfeiçoou o telefone, inventado por Antonio Meucci, em um aparelho que funcionava muito melhor. Fez o mesmo com a máquina de escrever. Trabalhou em projetos variados, como alimentos empacotados a vácuo, um aparelho de raios X e um sistema de construções mais baratas feitas de concreto.', 'https://pt.wikipedia.org/wiki/Thomas_Edison', '2024-07-09', NULL),
(3, 7, 'Ano Bissexto', 'A origem do nome bissexto advém da implantação do Calendário Juliano em 45 a.C., que se modificou, evoluindo para o Calendário Gregoriano que hoje é usado em muitos países, a todos os quais ocorrem os anos bissextos.  Dentro de um contexto histórico, a inclusão deste dia extra, dito dia intercalar, ocorreu e é feita em calendários ditos solares em diferentes meses e posições. No Calendário Gregoriano, é acrescentado ao final do mês de fevereiro, sendo seu 29º dia.', 'https://pt.wikipedia.org/wiki/Ano_bissexto', '2024-07-09', NULL),
(4, 2, 'Albert Einstein', 'Nascido em uma família de judeus alemães, mudou-se para a Suíça ainda jovem e iniciou seus estudos na Escola Politécnica de Zurique. Após dois anos procurando emprego, obteve um cargo no escritório de patentes suíço enquanto ingressava no curso de doutorado da Universidade de Zurique. Em 1905, publicou uma série de artigos acadêmicos revolucionários. Uma de suas obras era o desenvolvimento da teoria da relatividade especial. Percebeu, no entanto, que o princípio da relatividade também poderia ser estendido para campos gravitacionais, e com a sua posterior teoria da gravitação, de 1916, publicou um artigo sobre a teoria da relatividade geral. Enquanto acumulava cargos em universidades e instituições, continuou a lidar com problemas da mecânica estatística e teoria quântica, o que levou às suas explicações sobre a teoria das partículas e o movimento browniano. Também investigou as propriedades térmicas da luz, o que lançou as bases da teoria dos fótons. Em 1917, aplicou a teoria da relatividade geral para modelar a estrutura do universo como um todo. Suas obras renderam-lhe o status de celebridade mundial enquanto tornava-se uma nova figura na história da humanidade, recebendo prêmios internacionais e sendo convidado de chefes de estado e autoridades. Foi professor da Academia de Ciências de Berlim.', 'https://pt.wikipedia.org/wiki/Albert_Einstein', '2024-07-09', NULL),
(5, 3, 'Isaac Newton', 'Em Principio, Newton formulou as leis do movimento e da gravitação universal, que criaram o ponto de vista científico dominante até serem substituídas pela teoria da relatividade de Albert Einstein. Usou sua descrição matemática da gravidade para provar as leis de movimento planetário de Kepler, explicar as marés, as trajetórias dos cometas, a precessão dos equinócios e outros fenômenos, erradicando a dúvida sobre a heliocentricidade do Sistema Solar. Demonstrou que o movimento dos objetos na Terra e nos corpos celestes poderia ser explicado pelos mesmos princípios. A inferência de Newton de que a Terra é um esferoide oblato foi posteriormente confirmada pelas medidas geodésicas de Maupertuis, La Condamine e outros, convencendo a maioria dos cientistas europeus da superioridade da mecânica newtoniana em relação aos sistemas anteriores.', 'https://pt.wikipedia.org/wiki/Isaac_Newton', '2024-07-09', NULL),
(6, 5, 'Planeta Marte', 'Marte é um planeta rochoso com uma atmosfera fina, com características de superfície que lembram tanto as crateras de impacto da Lua quanto vulcões, vales, desertos e calotas polares da Terra. O período de rotação e os ciclos sazonais de Marte são também semelhantes aos da Terra, assim como é a inclinação que produz as suas estações do ano. Marte é o lar do Monte Olimpo, a segunda montanha mais alta conhecida no Sistema Solar (a mais alta em um planeta), e do Valles Marineris, um desfiladeiro gigantesco. A suave Bacia Polar Norte, no hemisfério norte marciano, cobre cerca de 40% do planeta e pode ser uma enorme marca de impacto.[2][3] Marte tem duas luas conhecidas, Fobos e Deimos, que são pequenas e de forma irregular. Estas luas podem ser asteroides capturados,[4][5] semelhante ao 5261 Eureka, um asteroide troiano marciano.', 'https://pt.wikipedia.org/wiki/Marte_(planeta)', '2024-07-09', NULL),
(7, 12, 'Amadeus Mozart', 'Mozart mostrou uma habilidade musical prodigiosa desde sua infância. Já competente nos instrumentos de teclado e no violino, começou a compor aos cinco anos de idade, e passou a se apresentar para a realeza europeia, maravilhando a todos com seu talento precoce. Chegando à adolescência, foi contratado como músico da corte em Salzburgo, porém as limitações da vida musical na cidade o impeliram a buscar um novo cargo em outras cortes, mas sem sucesso. Ao visitar Viena em 1781 com seu patrão, desentendeu-se com ele e solicitou demissão, optando por ficar na capital, onde, ao longo do resto de sua vida, conquistou fama, porém pouca estabilidade financeira. Seus últimos anos viram surgir algumas de suas sinfonias, concertos e óperas mais conhecidos, além de seu Requiem. As circunstâncias de sua morte prematura deram origem a diversas lendas. Deixou uma esposa, Constanze, e dois filhos.', 'https://pt.wikipedia.org/wiki/Wolfgang_Amadeus_Mozart', '2024-07-09', NULL),
(8, 16, 'Nikola Tesla', 'Nascido e criado no Império Austríaco, Tesla estudou engenharia e física na década de 1870 sem se formar, e ganhou experiência prática no início da década de 1880 trabalhando em telefonia e na Continental Edison, na nova indústria de energia elétrica. Em 1884, emigrou para os Estados Unidos e se naturalizou cidadão americano. Ele trabalhou por um curto período na Edison Machine Works, em Nova Iorque, antes de começar por conta própria. Com a ajuda de parceiros para financiar e comercializar suas ideias, Tesla montou laboratórios e empresas em Nova Iorque para desenvolver uma variedade de dispositivos elétricos e mecânicos. Seu motor de indução de corrente alternada e patentes relacionadas ao sistema polifásico, licenciadas pela Westinghouse Electric em 1888, lhe renderam uma quantia considerável de dinheiro e se tornaram a pedra angular do sistema polifásico que a empresa acabou comercializando.', 'https://pt.wikipedia.org/wiki/Nikola_Tesla', '2024-07-09', NULL),
(9, 10, 'Rei Pelé', 'Pelé começou a jogar pelo Santos Futebol Clube aos quinze anos de idade, e pela Seleção Brasileira aos dezesseis. Durante sua carreira na Amarelinha, sagrou-se campeão de três edições da Copa do Mundo FIFA: 1958, 1962 e 1970, sendo o único a fazê-lo como jogador. Contando os gols oficiais, Pelé é o segundo maior goleador da história da Seleção Brasileira, com 77 gols em 92 jogos. Em clubes, ele é o maior artilheiro da história do Santos e os levou a várias conquistas, com destaque para duas Copas Libertadores da América e dois Mundiais Interclubes, vencidos em 1962 e 1963. Conhecido por conectar a frase \"jogo bonito\" ao futebol, a \"ação eletrizante e a propensão a objetivos espetaculares\" de Pelé fizeram dele uma estrela rapidamente, e sua equipe fez turnês internacionais, a fim de aproveitar ao máximo sua popularidade. Após se aposentar em 1977, tornou-se embaixador mundial do futebol e fez muitos trabalhos de atuação e comerciais. Em janeiro de 1995, foi nomeado ministro do esporte no governo Fernando Henrique Cardoso. Em 2010, foi nomeado presidente honorário do New York Cosmos.', 'https://pt.wikipedia.org/wiki/Pel%C3%A9', '2024-07-09', NULL),
(10, 11, 'Sebastian Bach', 'Nascido numa família de longa tradição musical, cedo mostrou possuir talento e logo tornou-se um músico completo. Estudante incansável, adquiriu um vasto conhecimento da música europeia de sua época e das gerações anteriores. Desempenhou vários cargos em cortes e igrejas alemãs, mas suas funções mais destacadas foram a de Kantor da Igreja de São Tomás e Diretor Musical da cidade de Leipzig, onde desenvolveu a parte final e mais importante de sua carreira. Absorvendo inicialmente o grande repertório de música contrapontística germânica como base principal de seu estilo, recebeu mais tarde a influência italiana e francesa, através das quais sua obra se enriqueceu e transformou, realizando uma síntese original de uma multiplicidade de tendências. Praticou quase todos os gêneros musicais conhecidos em seu tempo, com a notável exceção da ópera, embora suas cantatas maduras revelem bastante influência desta que foi uma das formas mais populares do período Barroco.', 'https://pt.wikipedia.org/wiki/Johann_Sebastian_Bach', '2024-07-09', NULL),
(11, 9, 'Ayrton Senna', 'Em sua primeira temporada, Senna pontuou em cinco corridas, fechando o ano com treze pontos e a nona posição na classificação geral dos pilotos. No ano seguinte, ingressou na Lotus-Renault, pela qual venceu seis grandes prêmios ao longo de três temporadas.  Em 1988, juntou-se ao francês Alain Prost na McLaren-Honda, com o qual teve grande rivalidade. Senna venceu oito etapas daquela temporada e sagrou-se campeão mundial pela primeira vez. Após a polêmica final de 1989 com Prost que resultou na segunda colocação do torneio, ele retomou o título em 1990, vencendo novamente na temporada seguinte, tornando-se o piloto mais jovem a conquistar um tricampeonato na Fórmula 1 até então. Em 1993, Senna foi vice-campeão, vencendo cinco corridas. Transferiu-se para a Williams em 1994, onde disputou apenas três etapas, a última sendo o Grande Prêmio de San Marino, onde se acidentou e morreu, no Circuito de Ímola. Ao todo, Senna participou de 161 grandes prêmios na Fórmula 1, alcançando 41 vitórias, 80 pódios, 65 pole positions e 19 voltas mais rápidas.', 'https://pt.wikipedia.org/wiki/Ayrton_Senna', '2024-07-09', NULL),
(12, 15, 'As Setes Maravilhas do Mundo', 'A conquista grega de grande parte do mundo ocidental conhecido no século IV a.C. deu aos viajantes helenísticos acesso às civilizações dos egípcios, persas e babilônios. Impressionados e cativados pelos marcos e maravilhas das várias terras, esses viajantes começaram a listar o que viram para se lembrar deles.', 'https://pt.wikipedia.org/wiki/Sete_maravilhas_do_mundo', '2024-07-09', NULL),
(13, 6, 'Astro Sol a Estrela Central', 'Sistema Solar, o Sol possui uma massa 332 900 vezes maior do que a da Terra, e um volume 1 300 000 vezes maior do que o do nosso planeta. A distância da Terra ao Sol é de cerca de 150 milhões de quilômetros ou 1 unidade astronômica (UA). Esta distância varia ao longo do ano, de um mínimo de 147,1 milhões de quilômetros (0,9833 UA), no perélio (ou periélio), a um máximo de 152,1 milhões de quilômetros (1,017 UA), no afélio (que ocorre em torno do dia 4 de julho). A luz solar demora aproximadamente 8 minutos e 18 segundos para chegar à Terra. Energia do Sol na forma de luz solar é armazenada em glicose por organismos vivos através da fotossíntese, processo do qual, direta ou indiretamente, dependem todos os seres vivos que habitam nosso planeta. A energia solar também é responsável pelos fenômenos meteorológicos e o clima na Terra.', 'https://pt.wikipedia.org/wiki/Sol', '2024-07-09', NULL),
(14, 13, 'Antonio Vivaldi', 'Filho de Giovanni Battista Vivaldi e Camilla Calicchio, Antonio Vivaldi era o mais velho de sete irmãos. Seu pai, um barbeiro, mas também um talentoso violinista (alguns chegam a considerá-lo como um virtuoso), depois de iniciá-lo na música, matriculou-o, ainda pequeno, na Capela Ducal de São Marcos, para aperfeiçoar seus conhecimentos musicais, e foi também responsável pela sua admissão na orquestra da Basílica de São Marcos, onde Antonio Vivaldi despontou como o maior violinista do seu tempo.', 'https://pt.wikipedia.org/wiki/Antonio_Vivaldi', '2024-07-09', NULL),
(15, 8, 'Irmão Wright X Santos Dumont', 'Se para os brasileiros Santos Dumont é considerado o pai da aviação, a Fédération Aéronautique Internationale (FAI), que governa e regulariza os esportes aéreos no mundo, consideram os Irmãos Wright, Wilbur e Orville, como os primeiros a realizar um voo controlado, em um veículo motorizado e num aparelho mais pesado que o ar, por suas façanhas feitas em 17 de dezembro de 1903. Ou seja, cerca de três anos antes do 14-Bis.', 'https://aventurasnahistoria.com.br/noticias/reportagem/santos-dumont-x-irmaos-wright-o-debate-pelo-pioneirismo-da-aviacao.phtml', '2024-07-09', NULL),
(16, 14, 'Zumbi dos Palmares', 'O Quilombo dos Palmares, localizado na Capitania de Pernambuco, atual região de União dos Palmares, Alagoas, era uma comunidade, um reino formado por escravos negros que haviam escapado das fazendas, prisões e senzalas brasileiras. Ele ocupava uma área próxima ao tamanho de Portugal. Naquele momento sua população alcançava por volta de trinta mil pessoas', 'https://pt.wikipedia.org/wiki/Zumbi_dos_Palmares', '2024-07-09', NULL),
(17, 4, 'Planeta Terra', 'A Terra interage com outros objetos no espaço, em particular com o Sol e a Lua. No presente, a Terra orbita o Sol uma vez por cada 366,26 rotações sobre o seu próprio eixo, o que equivale a 365,26 dias solares ou um ano sideral. O eixo de rotação da Terra possui uma inclinação de 23,4° em relação à perpendicular ao seu plano orbital, produzindo variações sazonais na superfície do planeta com período igual a um ano tropical (365,24 dias solares). A Lua é o único satélite natural conhecido da Terra, tendo começado a orbitá-la há 4,53 bilhões de anos. É responsável pelas marés, estabiliza a inclinação axial da Terra e abranda gradualmente a rotação do planeta. Entre aproximadamente 4,1 e 3,8 bilhões de anos atrás, durante o intenso bombardeio tardio, impactos de asteroides causaram mudanças significativas na superfície terrestre.', 'https://pt.wikipedia.org/wiki/Terra', '2024-07-09', NULL),
(18, 1, 'Teste', 'Testando para ver como fica. Pra ser inserido varios conteúdos e ver como se comporta. Estou testando e daí pra ver tudo. Loren Ipsom também resolveria, mas estou jogando conversa fora, eu estou testando idiota.', 'Eu fazendo teste', '2024-07-14', '2024-07-23'),
(19, 1, 'Outro Teste', 'Is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'Lorem Ipsum', '2024-07-14', '2024-07-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historia`
--

CREATE TABLE `historia` (
  `id_historia` int(11) NOT NULL,
  `id_info` int(11) NOT NULL,
  `titulo_hist` varchar(220) NOT NULL,
  `data_hist` varchar(220) NOT NULL,
  `desc_hist` text NOT NULL,
  `ref_hist` varchar(220) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifeld` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `historia`
--

INSERT INTO `historia` (`id_historia`, `id_info`, `titulo_hist`, `data_hist`, `desc_hist`, `ref_hist`, `created`, `modifeld`) VALUES
(1, 1, 'Nascimento', '20 de julho de 1873', 'No interior de Minas Gerais, em um sítio localizado em Cabungu, atual cidade de Santos Dumont.', 'https://mundoeducacao.uol.com.br/biografias/alberto-santos-dumont.htm', '2024-07-24 20:52:15', '2024-07-24'),
(2, 1, 'Morte', '23 de julho de 1932', 'Chegou a ser instalado em casas de repouso, mas sucumbiu à depressão. Enquanto estava em um hotel no Guarujá, Santos Dumont cometeu suicídio.', 'https://mundoeducacao.uol.com.br/biografias/alberto-santos-dumont.htm', '2024-07-24 20:55:49', '2024-07-24'),
(3, 3, 'Nascimento', '04 de janeiro de 1643', 'Woolsthorpe-by-Colsterworth, Lincolnshire, Inglaterra', 'https://pt.wikipedia.org/wiki/Isaac_Newton', '2024-07-19 21:41:39', NULL),
(4, 3, 'Morte', '20 de Março de 1727', 'Newton morreu dormindo em Londres em 20 de março de 1727. Seu corpo foi enterrado na Abadia de Westminster.Solteirão, ele havia cedido grande parte de seus bens a parentes durante seus últimos anos e morreu sem testamento.', 'https://pt.wikipedia.org/wiki/Isaac_Newton', '2024-07-19 21:48:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `nome_imagem` varchar(220) NOT NULL,
  `id_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imagens`
--

INSERT INTO `imagens` (`id`, `nome_imagem`, `id_info`) VALUES
(1, 'capa.png', 1),
(2, 'thumb-santos-dumont.png', 1),
(3, 'thumb-einstein.jpg', 2),
(4, 'thumbs-einstein.png', 2),
(5, 'capa-isaac.jpeg', 3),
(6, 'thumb-isaac.png', 3),
(7, 'thumb-terra.jpg', 4),
(8, 'thum-terra.png', 4),
(9, 'capa-marte.jpg', 5),
(10, 'thumb-marte.png', 5),
(11, 'capa-sol.jpg', 6),
(12, 'thumb-sol.png', 6),
(13, 'capa-ano-bissexto.png', 7),
(14, 'thumb-ano-bissexto.png', 7),
(15, 'capa-santos-wright.png', 8),
(16, 'thumb-santos-wright.png', 8),
(17, 'capa-senna.png', 9),
(18, 'thumb-senna.png', 9),
(19, 'capa-pele.png', 10),
(20, 'thumb-pele.png', 10),
(21, 'capa-johann-sebastian-bach.png', 11),
(22, 'thumb-johann-sebastian-bach.png', 11),
(23, 'capa-mozart.png', 12),
(24, 'thumb-mozart.png', 12),
(25, 'capa-vivaldi.png', 13),
(26, 'thumb-vivaldi.png', 13),
(27, 'capa-zumbi-dos-palmares.png', 14),
(28, 'thumb-zumbi-dos-palmares.png', 14),
(29, 'capa-sete-maravilhas.png', 15),
(30, 'thumb-sete-maravilhas.png', 15),
(31, 'capa-nikola-tesla.png', 16),
(32, 'thumb-nikola-tesla.png', 16),
(33, 'capa-thomas-edson.jpg', 17),
(34, 'thumb-thomas-edson.png', 17),
(35, 'obra-teoria-relatividade.png', 2),
(36, 'obra-teoria-relatividade.png', 2),
(37, 'obra-teoria-relatividade.png', 2),
(38, 'obra-teoria-da-relatividade.png', 2),
(39, 'obra-teoria-das-cores.png', 3),
(40, 'obra-formula-ford-1600.png', 9),
(41, 'obra-primeiro-titulo-formula-1.png', 9),
(42, 'sem-foto.png', 18),
(43, 'sem-foto.png', 18),
(44, 'capa-beethoven.png', 18),
(45, 'logo-beethoven.png', 18),
(46, 'thumb-beethoven.png', 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `infograficos`
--

CREATE TABLE `infograficos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `id_categorias` int(11) NOT NULL,
  `thumb` varchar(220) NOT NULL,
  `capa` varchar(220) NOT NULL,
  `logo` varchar(220) NOT NULL,
  `link` varchar(110) NOT NULL,
  `modifeld` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `infograficos`
--

INSERT INTO `infograficos` (`id`, `titulo`, `nome`, `descricao`, `id_categorias`, `thumb`, `capa`, `logo`, `link`, `modifeld`) VALUES
(1, 'O Pai da Aviação', 'Santos Dumont', 'Alberto Santos Dumont foi um aeronauta, esportista, autodidata e inventor brasileiro. Santos Dumont projetou, construiu e voou os primeiros balões dirigíveis com motor a gasolina.', 1, 'thumb-santos-dumont.png', 'capa-santos-dumont.png', 'logo-santos-dumont.png', 'santos-dumont', '2024-07-26'),
(2, 'Albert Einstein', 'EINSTEIN', 'Albert Einstein foi um físico teórico alemão, que desenvolveu a teoria da relatividade geral, um dos pilares da física moderna ao lado da mecânica quântica.', 1, 'thumb-einstein.png', 'capa-einstein.png', 'logo-einstein.png', 'albert-einstein', NULL),
(3, 'Isaac Newton', 'ISAAC NEWTON', 'Sir Isaac Newton PRS foi um matemático, físico, astrônomo, teólogo e autor inglês amplamente reconhecido como um dos cientistas mais influentes de todos os tempos e como uma figura-chave na Revolução Científica.', 1, 'thumb-isaac-newton.png', 'capa-isaac-newton.png', 'logo-isaac-newton.png', 'isaac-newton', NULL),
(4, 'Planeta Terra', 'TERRA', 'A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar.', 2, 'thumb-terra.png', 'capa-terra.png', 'logo-terra.png', 'terra', NULL),
(5, 'Planeta Marte', 'MARTE', 'Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar, atrás apenas de Mercúrio.', 2, 'thumb-marte.png', 'capa-marte.png', 'logo-marte.png', 'marte', NULL),
(6, 'Astro Sol', 'SOL', 'O Sol é a estrela do sistema solar. Todos os corpos celestes desse sistema, inclusive a Terra, giram em torno dele.', 2, 'thumb-sol.png', 'capa-sol.png', 'logo-sol.png', 'sol', NULL),
(7, 'Ano Bissexto', 'ANO BISSEXTO', 'O ano bissexto acontece a cada quatro anos e tem duração de 366 dias, diferentemente dos demais que têm 365 dias.', 4, 'thumb-ano-bissexto.png', 'capa-ano-bissexto.png', 'logo-ano-bissexto.png', 'ano-bissexto', NULL),
(8, 'Quem é ? O Pai da Aviação', 'WRIGHT X SANTOS DUMONT', 'Para quem é adepto da tese que foram os Irmãos Wright, o primeiro voo motorizado da história aconteceu no dia 17 de dezembro de 1903, na cidade de Kitty Hawk.', 4, 'thumb-santos-wright.png', 'capa-santos-wright.png', 'logo-santos-wright.png', 'wright-ou-santos-dumont', NULL),
(9, 'Airton Senna', 'SENNA', 'Ayrton Senna da Silva foi um piloto de Fórmula 1, empresário e filantropo brasileiro. Senna foi campeão da categoria de piloto três vezes, em 1988, 1990 e 1991.', 3, 'thumb-senna.png', 'capa-senna.png', 'logo-senna.png', 'ayrton-senna', NULL),
(10, 'Rei Pelé', 'REI PELÉ', 'Edson Arantes do Nascimento, mais conhecido como Pelé, foi um futebolista brasileiro que atuou como atacante. Descrito como o \"Rei do Futebol\", é amplamente considerado como o maior atleta de todos os tempos', 3, 'thumb-pele.png', 'capa-pele.png', 'logo-pele.png', 'rei-pele', NULL),
(11, 'Sebastian Bach', 'SEBASTIAN BACH', 'Johann Sebastian Bach foi um compositor, cravista, mestre de capela, regente, organista, professor, violinista e violista oriundo do Sacro Império Romano-Germânico, atual Alemanha.', 5, 'thumb-sebastian-bach.png', 'capa-sebastian-bach.png', 'logo-bach.png', 'sebastian-bach', NULL),
(12, 'Amadeus Mozart', 'MOZART', 'Wolfgang Amadeus Mozart; batizado Johannes Chrysostomus Wolfgangus Theophilus Mozart; Salzburgo, 27 de janeiro de 1756 – Viena, 5 de dezembro de 1791 foi um prolífico e influente compositor austríaco do período clássico. Mozart mostrou uma habilidade musical prodigiosa desde sua infância.', 5, 'thumb-mozart.png', 'capa-mozart.png', 'logo-mozart.png', 'mozart', NULL),
(13, 'Antoni Vivaldi', 'VIVALDI', 'Antonio Lucio Vivaldi foi um compositor e músico do estilo barroco tardio oriundo da República de Veneza, atual Itália. Tinha a alcunha de il Prete Rosso por ser um sacerdote católico de cabelos ruivos. Compôs 770 obras, entre as quais 477 concertos e 46 óperas.', 5, 'thumb-vivaldi.png', 'capa-vivaldi.png', 'log0-vivaldi.png', 'vivaldi', NULL),
(14, 'Zumbi dos Palmares', 'ZUMBI DOS PALMARES', 'Zumbi, também conhecido como Zumbi dos Palmares, foi um líder quilombola brasileiro, o último dos líderes do Quilombo dos Palmares, o maior dos quilombos do período colonial.', 3, 'thumb-zumbi-dos-palmares.png', 'capa-zumbi-dos-palmares.png', 'logo-zumbi-dos-palmares.png', 'zumbi-dos-palmares', NULL),
(15, 'As Sete Maravilhas', 'SETE MARAVILHAS', 'As sete maravilhas do mundo antigo são uma famosa lista de majestosas obras artísticas e arquitetônicas erguidas durante a Antiguidade Clássica, cuja origem atribui-se a um pequeno poema do poeta grego Antípatro de Sídon.', 4, 'thumb-sete-maravilhas.png', 'capa-sete-maravilhas.png', 'logo-sete-maravilhas.png', 'sete-maravilhas', NULL),
(16, 'Nikola Tesla', 'NIKOLA TESLA', 'Nikola Tesla foi um inventor, engenheiro eletrotécnico e engenheiro mecânico sérvio, mais conhecido por suas contribuições ao projeto do moderno sistema de fornecimento de eletricidade em corrente alternada.', 1, 'thumb-nikola-tesla.png', 'capa-nikola-tesla.png', 'logo-nikola-tesla.png', 'nikola-tesla', NULL),
(17, 'Thomas Edson', 'THOMAS EDSON', 'Thomas Alva Edison foi um empresário dos Estados Unidos que patenteou e financiou o desenvolvimento de muitos dispositivos importantes de grande interesse industrial.', 1, 'thumb-thomas-edson.png', 'capa-thomas-edson.png', 'logo-thomas-edson.png', 'tomas-edson', NULL),
(18, 'Beethoven', 'Beethoven', 'Beethoven é uma das figuras mais reverenciadas na história da música ocidental, suas obras estão entre as mais executadas do repertório da música clássica e abrangem a transição do período clássico para a era romântica neste gênero musical.', 5, 'thumb-beethoven.png', 'capa-beethoven.png', 'logo-beethoven.png', 'beethoven', '2024-07-26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `obra`
--

CREATE TABLE `obra` (
  `id_obra` int(11) NOT NULL,
  `id_info` int(11) NOT NULL,
  `titulo_obra` varchar(220) NOT NULL,
  `desc_obra` varchar(220) NOT NULL,
  `img_obra` varchar(220) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifield` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `obra`
--

INSERT INTO `obra` (`id_obra`, `id_info`, `titulo_obra`, `desc_obra`, `img_obra`, `created`, `modifield`) VALUES
(1, 1, 'Biplano n°  14 bis', 'O 14bis era um avião do tipo conhecido como “cannard” (pato, em francês), que tem as asas maiores na parte traseira. Realizou o voo histórico, o primeiro homologado, em 12 de novembro de 1906. Caiu em 1907.', 'obra-14-bis.png', '2024-07-10 22:34:25', '2024-07-26 22:11:25'),
(2, 1, 'Demoiselle 1909', 'Demoiselle foi o melhor modelo criado por Alberto Santos-Dumont. Primeiro ultraleve da história da aviação, ela surgiu como o número 19 do aviador e foi depois aperfeiçoada no número 20.', 'obra-demosille.png', '2024-07-10 22:42:46', '2024-07-24 19:23:15'),
(3, 1, 'Dirigíveis', 'Os célebres voos em Paris fizeram do brasileiro Alberto Santos Dumont uma personalidade conhecida em todo o mundo no início do século 20.', 'obra-dirigivel.png', '2024-07-10 23:35:39', '2024-07-26 22:21:09'),
(7, 2, 'Teoria da Relatividade', 'Num teste da teoria da relatividade geral de Einstein perto do buraco negro supermassivo no centro da nossa galáxia Via Láctea, um grupo internacional de astrofísicos demonstrou que a teoria se sustenta.', 'obra-teoria-da-relatividade.png', '2024-07-11 22:28:14', '2024-07-11 19:28:14'),
(8, 3, 'Teoria das Cores', 'A teoria mais aceita naquele momento era a de que a luz do Sol, de cor branca, era manchada pelas outras cores quando objetos causavam interferências.', 'obra-teoria-das-cores.png', '2024-07-11 22:36:51', '2024-07-11 19:36:51'),
(9, 9, 'Formula Ford 1600', '\"Apesar do sucesso na Fórmula Ford 1600, Senna teve que voltar para o Brasil porque não conseguiu patrocínio para correr no ano seguinte. Ele trabalhava na empresa do pai quando recebeu uma ligação da Inglaterra: era Ral', 'obra-formula-ford-1600.png', '2024-07-11 23:08:29', '2024-07-11 20:08:29'),
(10, 9, 'Primeiro Titulo Formula 1', 'O primeiro título de Ayrton Senna na Fórmula 1 , em 1988, marcou o início da idolatria ao piloto da McLaren.', 'obra-primeiro-titulo-formula-1.png', '2024-07-11 23:16:00', '2024-07-11 20:16:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha_usuario` varchar(220) NOT NULL,
  `imagem` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha_usuario`, `imagem`) VALUES
(1, 'Jackson Queiroz', 'jackson.oqueiroz@gmail.com', '$2y$10$f.LrBA08y8t9.ZpVVJVSZOGYWwflwYVBFZ94m5o3DuW/FzAWE9Mle', 'semfoto.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`);

--
-- Índices de tabela `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id_historia`);

--
-- Índices de tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `infograficos`
--
ALTER TABLE `infograficos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`id_obra`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `historia`
--
ALTER TABLE `historia`
  MODIFY `id_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `infograficos`
--
ALTER TABLE `infograficos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `obra`
--
ALTER TABLE `obra`
  MODIFY `id_obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
