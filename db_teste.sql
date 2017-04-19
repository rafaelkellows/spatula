-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 10.129.76.12
-- Tempo de geração: 26/03/2017 às 20:18
-- Versão do servidor: 5.6.26-log
-- Versão do PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `db_teste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
`id` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `link` varchar(255) NOT NULL,
  `align` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Fazendo dump de dados para tabela `banners`
--

INSERT INTO `banners` (`id`, `pos`, `src`, `alt`, `title`, `description`, `link`, `align`, `target`, `status`, `created`, `modified`) VALUES
(1, 0, 'images/banners/banners_498394090_07_05_2016_13_55_02.jpg', 'A sua marca sempre na memória de seus clientes.', 'A sua marca sempre na memória de seus clientes.', '<p></p><div>Canecas lindas e criativas com o seu logo!</div><div>De R$13,00 a R$19,00**<br></div><div>Faça seu orçamento.</div><p></p>', 'produtos.php?cat=1', 'right', '_self', 1, '2016-05-07 13:56:03', '2016-06-23 18:55:26'),
(2, 0, 'images/banners/banners_965245885_07_05_2016_13_56_39.jpg', 'O presente é a forma de congelar um momento especial e levá-lo para sempre na memória.', 'O presente é a forma de congelar um momento especial e levá-lo para sempre na memória.', '', '', 'right', '_self', 0, '2016-05-07 13:57:02', '2017-02-27 19:41:14'),
(3, 0, 'images/banners/banners_850178902_07_05_2016_13_58_39.jpg', 'Leve a sua memória nos seus passos.', 'Leve a sua memória nos seus passos.', '<p>Agora, você pode levar quem você quiser em sua trajetória. Por R$25 você customiza chinelos, na cor que desejar, com imagem que quiser. Uma ótima sugestão de presente! Peça o seu agora ou faça sua cotação para seu evento.</p>', './produto.php?id_prod=10', 'right', '_self', 1, '2016-05-07 13:59:06', '2016-06-23 18:55:10'),
(4, 0, 'images/banners/banners_1045241966_23_06_2016_18_53_09.jpg', 'Coleção Valentines', 'Coleção Valentines', '<p></p><div><b>O Amor sempre está no ar!</b>&nbsp;</div><div><br></div><div>Que tal fazer uma declaração com alguma de nossas sugestões de presentes?<br></div><p></p>', './produto.php?id_prod=15', 'right', '_self', 1, '2016-06-23 18:52:41', '2016-06-23 18:58:13'),
(5, 0, 'images/banners/banners_189641059_15_09_2016_18_40_57.jpg', 'Linha Olho Grego', 'Linha Olho Grego', 'para espantar inveja, mau olhado, energia negativa e ainda assim deixar nossa casa ou escritório mais lindos!', '/produtos.php?cat=5', 'right', '_self', 1, '2016-09-15 18:42:56', '2016-09-15 18:42:56'),
(6, 0, 'images/banners/banners_83094369_11_11_2016_12_37_31.jpg', '', 'UniLove Sandals, nova coleção da Spatula', '<p></p><div><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div>Leve este amor de sandália para você ou para presente!</div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo. Todos os tamanhos.</div></div><p></p>', '/produtos.php?cat=6', 'left', '_self', 1, '2016-11-11 12:38:27', '2016-11-18 10:49:17'),
(8, 0, 'images/banners/banners_103448402_16_11_2016_15_58_36.jpg', 'Sua compra protegida com PagSeguro', 'Sua compra protegida com PagSeguro', '<p><b>Sua compra protegida com PagSeguro.<br><br></b>Parcele suas compras em até <b>18x </b>no cartão de crédito.</p>', 'http://www.spatula.com.br/produtos.php', 'right', '_self', 0, '2016-11-16 15:58:43', '2016-11-16 16:01:24'),
(9, 0, 'images/banners/banners_1054493799_16_11_2016_16_10_45.jpg', 'UniLove Sandals, nova coleção da Spatula', 'UniLove Sandals, nova coleção da Spatula', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div>Leve este amor de sandália para você ou para presente!</div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo. Todos os tamanhos.</div><p></p>', '/produtos.php?cat=6', 'right', '_self', 0, '2016-11-16 16:11:15', '2017-02-27 19:40:14'),
(10, 0, 'images/banners/banners_1400899638_16_11_2016_16_21_11.jpg', 'UniLove Sandals, nova coleção da Spatula', 'UniLove Sandals, nova coleção da Spatula', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div>Leve este amor de sandália para você ou para presente!</div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo. Todos os tamanhos.</div><p></p>', '/produtos.php?cat=6', 'right', '_self', 0, '2016-11-16 16:21:52', '2017-02-27 19:40:24'),
(11, 0, 'images/banners/banners_766740278_16_11_2016_16_22_43.jpg', 'UniLove Sandals, nova coleção da Spatula', 'UniLove Sandals, nova coleção da Spatula', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div>Leve este amor de sandália para você ou para presente!</div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo. Todos os tamanhos.</div><p></p>', '/produtos.php?cat=6', 'left', '_self', 0, '2016-11-16 16:22:56', '2017-02-27 19:40:53'),
(12, 0, 'images/banners/banners_1323055146_16_11_2016_22_49_12.jpg', 'SOLUÇÕES CORPORTATIVAS', 'SOLUÇÕES CORPORTATIVAS', '<b>Presentes Exclusivos</b> para qualquer ocasião!<div><br></div><div>Aniversário de funcionário, diretores, promoção de cargo, datas especiais e muto mais.</div>', '', 'center', '_self', 0, '2016-11-16 22:50:27', '2016-11-16 22:50:27'),
(14, 0, 'images/banners/banners_47808308_27_02_2017_19_36_04.jpg', 'Caneca This Could be Wine', 'Caneca This Could be Wine', '<p>Caneca cilíndrica com 325ml de capacidade, com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.</p><p>Disponível em várias cores. Veja disponibilidade antes da compra.</p>', './produto.php?id_prod=49', 'right', '_self', 1, '2017-02-27 19:38:30', '2017-02-27 19:39:41'),
(15, 0, 'images/banners/banners_853922667_08_03_2017_13_49_34.jpg', 'Canecas Mulher com M!', 'Canecas Mulher com M!', 'São <b>3</b> opções para você escolher: <br><b>- Primeiro EU, depois EU e depois EU de novo!</b><br><b>- Minha Vida Minhas Regras</b> ou<div>-&nbsp;<b>I am the Beauty and the Be(a)st!</b></div>', '/produtos.php?cat=9', 'right', '_self', 1, '2017-03-08 13:49:15', '2017-03-08 13:49:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `link`, `description`, `created`, `modified`) VALUES
(1, 'Canecas', 'javascript:void(0);', 'sss', '2016-05-06 00:05:04', '2016-05-06 00:05:26'),
(2, 'Utilidades', 'aaa', 'sss', '2016-05-06 00:05:36', '2016-05-06 00:05:36'),
(3, 'Garrafas', 'aaa', 'sss', '2016-05-06 00:05:44', '2016-05-06 00:05:44'),
(4, 'Coleção Valentines', 'aaa', 'sss', '2016-06-23 11:06:37', '2016-06-23 11:06:37'),
(5, 'Linha Olho Grego', 'javascript:void(0);', 'sss', '2016-09-15 18:32:59', '2016-11-12 11:54:33'),
(6, 'UniLove Sandals', 'aaa', 'sss', '2016-11-18 10:30:09', '2016-11-18 10:30:09'),
(7, 'Chinelos', 'aaa', 'sss', '2017-01-27 09:29:40', '2017-01-27 09:29:40'),
(8, 'Linha Unicórnio', 'aaa', 'sss', '2017-02-27 16:59:21', '2017-02-27 16:59:21'),
(9, 'Canecas Mulher com M!', 'aaa', 'sss', '2017-03-08 12:22:10', '2017-03-08 12:22:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `inserted` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Fazendo dump de dados para tabela `colors`
--

INSERT INTO `colors` (`id`, `pid`, `color`, `label`, `inserted`) VALUES
(1, 1, '000000', NULL, '2016-05-12 22:36:44'),
(2, 3, '8c8c8c', NULL, '2016-06-21 11:30:16'),
(3, 5, 'ffffff', NULL, '2016-06-21 11:41:15'),
(4, 6, 'e7e7e7', NULL, '2016-06-21 11:46:59'),
(5, 7, 'ffffff', NULL, '2016-06-21 11:50:31'),
(6, 7, 'd14d67', NULL, '2016-06-21 11:50:31'),
(7, 8, 'ffffff', NULL, '2016-06-21 11:55:52'),
(8, 8, 'b8b8b8', NULL, '2016-06-21 11:55:52'),
(9, 9, '858585', NULL, '2016-06-21 14:45:12'),
(10, 10, 'ffffff', NULL, '2016-06-21 15:11:16'),
(12, 10, 'd181d1', NULL, '2016-06-21 15:11:16'),
(14, 10, '000000', NULL, '2016-06-21 15:11:16'),
(15, 10, 'ff00cc', NULL, '2016-06-21 15:11:16'),
(16, 10, '258f3a', NULL, '2016-06-21 15:11:17'),
(17, 10, 'f02424', NULL, '2016-06-21 15:11:17'),
(18, 11, 'ffffff', NULL, '2016-06-21 16:52:39'),
(19, 11, 'fa96b7', NULL, '2016-06-21 16:52:39'),
(20, 12, 'a8a8a8', NULL, '2016-06-21 17:08:04'),
(21, 13, 'ffffff', NULL, '2016-06-21 17:11:58'),
(22, 14, 'ffffff', NULL, '2016-06-21 17:15:17'),
(23, 16, 'ffffff', NULL, '2016-09-15 18:32:39'),
(24, 17, 'ffffff', NULL, '2016-09-15 18:34:50'),
(25, 18, 'ffffff', NULL, '2016-09-15 18:37:10'),
(26, 19, '4260d8', NULL, '2016-09-15 18:39:45'),
(27, 19, 'ffffff', NULL, '2016-09-15 18:39:45'),
(28, 19, '', NULL, '2016-11-12 08:58:08'),
(29, 19, '', NULL, '2016-11-16 17:18:05'),
(30, 35, '', NULL, '2017-01-24 11:22:00'),
(31, 36, 'ffffff', NULL, '2017-02-27 17:08:32'),
(32, 40, 'ffffff', NULL, '2017-02-27 18:06:50'),
(33, 40, '998399', NULL, '2017-02-27 18:06:50'),
(34, 41, '919191', NULL, '2017-02-27 18:15:39'),
(35, 43, 'ffffff', NULL, '2017-02-27 18:37:00'),
(36, 44, 'ffffff', NULL, '2017-02-27 18:40:25'),
(37, 47, 'ffffff', NULL, '2017-02-27 18:51:17'),
(38, 48, 'ffffff', NULL, '2017-02-27 18:53:26'),
(39, 49, 'ab0000', NULL, '2017-02-27 18:57:06'),
(40, 49, 'f0f04d', NULL, '2017-02-27 18:57:06'),
(41, 49, '16c4f0', NULL, '2017-02-27 18:57:07'),
(42, 49, '1d35cf', NULL, '2017-02-27 18:57:07'),
(43, 49, '5cff5c', NULL, '2017-02-27 18:57:07'),
(44, 49, '1ba13f', NULL, '2017-02-27 18:57:07'),
(45, 49, 'ff61cd', NULL, '2017-02-27 18:57:07'),
(46, 49, 'ffa200', NULL, '2017-02-27 18:57:07'),
(47, 49, '000000', NULL, '2017-02-27 18:57:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `galeria`
--

CREATE TABLE IF NOT EXISTS `galeria` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `inserted` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Fazendo dump de dados para tabela `galeria`
--

INSERT INTO `galeria` (`id`, `pid`, `src`, `inserted`) VALUES
(1, 1, 'images/produtos/produto_86192657_12_05_2016_22_38_31.jpg?0.7692155737722925', '2016-05-12 22:41:35'),
(2, 1, 'images/produtos/produto_363145201_12_05_2016_22_48_22.jpg?0.365944176760292', '2016-05-12 22:50:31'),
(3, 1, 'images/produtos/produto_1359287906_12_05_2016_22_48_37.jpg?0.23849626024478954', '2016-05-12 22:50:31'),
(4, 2, 'images/produtos/produto_50992660_21_06_2016_11_14_52.jpg?0.9372379118737002', '2016-06-21 11:17:09'),
(5, 2, 'images/produtos/produto_925441487_21_06_2016_11_15_23.jpg?0.5774430985577526', '2016-06-21 11:17:09'),
(6, 2, 'images/produtos/produto_819411178_21_06_2016_11_21_06.jpg?0.14925343173168182', '2016-06-21 11:21:17'),
(7, 3, 'images/produtos/produto_542716825_21_06_2016_11_29_31.jpg?0.05328923128853247', '2016-06-21 11:30:15'),
(8, 3, 'images/produtos/produto_191190204_21_06_2016_11_29_46.jpg?0.7071931022814408', '2016-06-21 11:30:15'),
(9, 3, 'images/produtos/produto_700299208_21_06_2016_11_29_58.jpg?0.6580541236312663', '2016-06-21 11:30:15'),
(13, 5, 'images/produtos/produto_673189185_21_06_2016_11_40_46.jpg?0.36998592115674955', '2016-06-21 11:41:14'),
(14, 5, 'images/produtos/produto_1261218476_21_06_2016_11_40_58.jpg?0.5013733729823933', '2016-06-21 11:41:15'),
(15, 6, 'images/produtos/produto_1030309938_21_06_2016_11_45_31.jpg?0.269332576394955', '2016-06-21 11:46:59'),
(16, 6, 'images/produtos/produto_962018501_21_06_2016_11_45_53.jpg?0.47195900048381656', '2016-06-21 11:46:59'),
(17, 6, 'images/produtos/produto_1100107487_21_06_2016_11_46_09.jpg?0.7600469016517579', '2016-06-21 11:46:59'),
(18, 7, 'images/produtos/produto_180604385_21_06_2016_11_49_03.jpg?0.04555297126484992', '2016-06-21 11:50:31'),
(19, 7, 'images/produtos/produto_226734455_21_06_2016_11_49_31.jpg?0.899636852984135', '2016-06-21 11:50:31'),
(20, 8, 'images/produtos/produto_463753506_21_06_2016_11_53_21.jpg?0.6070492327355597', '2016-06-21 11:55:51'),
(21, 8, 'images/produtos/produto_55080680_21_06_2016_11_53_38.jpg?0.07069423895370042', '2016-06-21 11:55:51'),
(22, 8, 'images/produtos/produto_1023381821_21_06_2016_11_53_56.jpg?0.5814966102187473', '2016-06-21 11:55:51'),
(26, 9, 'images/produtos/produto_897040511_21_06_2016_14_48_25.jpg?0.8437909571146447', '2016-06-21 14:59:07'),
(27, 9, 'images/produtos/produto_1038141722_21_06_2016_14_53_27.jpg?0.6974825301839542', '2016-06-21 14:59:07'),
(28, 9, 'images/produtos/produto_229617584_21_06_2016_14_56_32.jpg?0.901427040984919', '2016-06-21 14:59:07'),
(29, 9, 'images/produtos/produto_392535908_21_06_2016_14_56_51.jpg?0.602460787333692', '2016-06-21 14:59:07'),
(30, 9, 'images/produtos/produto_731282090_21_06_2016_14_58_50.jpg?0.42490806834215067', '2016-06-21 14:59:07'),
(31, 10, 'images/produtos/produto_211716363_21_06_2016_15_17_36.jpg?0.28022867411854135', '2016-06-21 15:39:38'),
(32, 10, 'images/produtos/produto_1399479589_21_06_2016_16_39_06.jpg?0.7343305862087295', '2016-06-21 16:39:16'),
(34, 10, 'images/produtos/produto_536391153_21_06_2016_16_42_35.jpg?0.5970088159619604', '2016-06-21 16:42:46'),
(35, 10, 'images/produtos/produto_427865000_21_06_2016_16_43_05.jpg?0.36862356806606633', '2016-06-21 16:43:58'),
(36, 10, 'images/produtos/produto_31671391_21_06_2016_16_43_47.jpg?0.6184269968659226', '2016-06-21 16:43:58'),
(37, 11, 'images/produtos/produto_187360375_21_06_2016_16_51_18.jpg?0.36466214451006973', '2016-06-21 16:52:05'),
(38, 11, 'images/produtos/produto_427821969_21_06_2016_16_51_44.jpg?0.41166062123119884', '2016-06-21 16:52:05'),
(39, 12, 'images/produtos/produto_28917357_21_06_2016_17_06_59.jpg?0.5333232962196544', '2016-06-21 17:08:03'),
(40, 12, 'images/produtos/produto_912445889_21_06_2016_17_07_31.jpg?0.5932769870653383', '2016-06-21 17:08:04'),
(41, 13, 'images/produtos/produto_347567697_21_06_2016_17_11_24.jpg?0.6443427968364175', '2016-06-21 17:11:58'),
(42, 13, 'images/produtos/produto_782877196_21_06_2016_17_11_47.jpg?0.4752245161192157', '2016-06-21 17:11:58'),
(43, 14, 'images/produtos/produto_246916360_21_06_2016_17_13_25.jpg?0.13798874633062108', '2016-06-21 17:15:17'),
(44, 14, 'images/produtos/produto_813989174_21_06_2016_17_15_44.jpg?0.5408001388797559', '2016-06-21 17:16:15'),
(45, 14, 'images/produtos/produto_23710511_21_06_2016_17_16_33.jpg?0.5360739328624247', '2016-06-21 17:16:41'),
(46, 15, 'images/produtos/produto_785243944_23_06_2016_11_08_00.jpg?0.7287253692378237', '2016-06-23 11:08:43'),
(47, 15, 'images/produtos/produto_1409592058_23_06_2016_11_08_19.jpg?0.4222172700914322', '2016-06-23 11:08:43'),
(48, 15, 'images/produtos/produto_145963802_23_06_2016_18_27_08.jpg?0.12644156783051974', '2016-06-23 18:27:51'),
(49, 15, 'images/produtos/produto_1323141209_23_06_2016_18_27_23.jpg?0.6778184582241846', '2016-06-23 18:27:51'),
(50, 15, 'images/produtos/produto_147168691_23_06_2016_18_27_37.jpg?0.1568217721129781', '2016-06-23 18:27:51'),
(51, 15, 'images/produtos/produto_1028072285_23_06_2016_18_28_03.jpg?0.09414849058944208', '2016-06-23 18:29:58'),
(52, 15, 'images/produtos/produto_59642048_23_06_2016_18_29_43.jpg?0.8425077730942949', '2016-06-23 18:29:58'),
(53, 15, 'images/produtos/produto_668283562_23_06_2016_18_30_42.jpg?0.5817203244307123', '2016-06-23 18:31:44'),
(54, 15, 'images/produtos/produto_892263984_23_06_2016_18_30_58.jpg?0.2935490166523613', '2016-06-23 18:31:44'),
(55, 15, 'images/produtos/produto_1307994022_23_06_2016_18_31_13.jpg?0.3048170625960167', '2016-06-23 18:31:44'),
(56, 15, 'images/produtos/produto_1263327033_23_06_2016_18_31_29.jpg?0.8853314051910741', '2016-06-23 18:31:44'),
(57, 16, 'images/produtos/produto_1323399400_15_09_2016_18_31_26.jpg?0.3798654417944505', '2016-09-15 18:32:39'),
(58, 17, 'images/produtos/produto_1025791601_15_09_2016_18_34_27.jpg?0.7919788363572029', '2016-09-15 18:34:50'),
(59, 18, 'images/produtos/produto_1241165666_15_09_2016_18_36_51.jpg?0.5446030043036676', '2016-09-15 18:37:10'),
(60, 19, 'images/produtos/produto_555798486_15_09_2016_18_38_12.jpg?0.1126622863948421', '2016-09-15 18:39:45'),
(61, 19, 'images/produtos/produto_1189570560_15_09_2016_18_38_25.jpg?0.805663591027254', '2016-09-15 18:39:45'),
(66, 10, 'images/produtos/produto_1085950031_10_11_2016_16_15_58.jpg?0.8353996792496761', '2016-11-10 16:17:38'),
(67, 10, 'images/produtos/produto_944590630_10_11_2016_16_16_26.jpg?0.49880823457927215', '2016-11-10 16:17:38'),
(68, 10, 'images/produtos/produto_950916302_10_11_2016_16_16_58.jpg?0.057531546520285914', '2016-11-10 16:17:38'),
(71, 10, 'images/produtos/produto_1056301134_11_11_2016_06_23_48.jpg?0.13901330029871284', '2016-11-11 06:24:07'),
(76, 19, 'images/produtos/produto_435266467_16_11_2016_16_52_42.jpg?0.5157368407779193', '2016-11-16 16:54:11'),
(77, 19, 'images/produtos/produto_111409281_16_11_2016_19_56_39.jpg?0.8809917444011082', '2016-11-16 17:00:10'),
(78, 19, 'images/produtos/produto_290550587_16_11_2016_20_14_52.jpg?0.05265898270134883', '2016-11-16 17:18:05'),
(79, 20, 'images/produtos/produto_1183417016_16_11_2016_17_56_48.jpg?0.5251085643098405', '2016-11-16 17:57:01'),
(80, 22, 'images/produtos/produto_835031715_16_11_2016_18_21_51.jpg?0.41174113372926224', '2016-11-16 18:29:55'),
(81, 23, 'images/produtos/produto_856203351_16_11_2016_18_33_21.jpg?0.9926740349326542', '2016-11-16 18:33:44'),
(82, 24, 'images/produtos/produto_1375683014_16_11_2016_18_49_58.jpg?0.18517212563532537', '2016-11-16 18:50:20'),
(83, 25, 'images/produtos/produto_1367722135_16_11_2016_18_54_17.jpg?0.4338988374286519', '2016-11-16 18:55:04'),
(84, 26, 'images/produtos/produto_156377493_16_11_2016_23_14_59.jpg?0.4114675400878318', '2016-11-16 23:15:44'),
(85, 27, 'images/produtos/produto_536434185_17_11_2016_02_14_24.jpg?0.04883302321924754', '2016-11-16 23:19:17'),
(86, 28, 'images/produtos/produto_205691914_16_11_2016_23_21_29.jpg?0.1719127946327994', '2016-11-16 23:22:18'),
(87, 29, 'images/produtos/produto_1295557838_16_11_2016_23_22_52.jpg?0.24980125893931193', '2016-11-16 23:23:39'),
(88, 30, 'images/produtos/produto_841701641_16_11_2016_23_24_03.jpg?0.31849792384290354', '2016-11-16 23:25:42'),
(89, 31, 'images/produtos/produto_813946142_16_11_2016_23_26_49.jpg?0.27417547527713015', '2016-11-16 23:27:35'),
(90, 32, 'images/produtos/produto_612342247_18_11_2016_10_38_00.jpg?0.24692562117206496', '2016-11-18 10:38:52'),
(91, 33, 'images/produtos/produto_684936862_18_11_2016_10_41_27.jpg?0.7602211151228673', '2016-11-18 10:42:05'),
(92, 34, 'images/produtos/produto_888348092_18_11_2016_10_45_11.jpg?0.015929466067451825', '2016-11-18 10:45:30'),
(93, 35, 'images/produtos/produto_1112328513_18_11_2016_10_46_47.jpg?0.9146710016813842', '2016-11-18 10:47:03'),
(94, 36, 'images/produtos/produto_275790686_27_02_2017_17_04_15.jpg?0.5607988933674648', '2017-02-27 17:08:32'),
(95, 36, 'images/produtos/produto_430016590_27_02_2017_17_04_38.jpg?0.2919526546408162', '2017-02-27 17:08:32'),
(96, 36, 'images/produtos/produto_545255700_27_02_2017_17_04_54.jpg?0.9175803422950719', '2017-02-27 17:08:32'),
(97, 36, 'images/produtos/produto_1133672277_27_02_2017_17_05_06.jpg?0.42448874371418865', '2017-02-27 17:08:32'),
(98, 37, 'images/produtos/produto_611739802_27_02_2017_17_43_51.jpg?0.06102567123924896', '2017-02-27 17:47:50'),
(99, 37, 'images/produtos/produto_519135409_27_02_2017_17_44_25.jpg?0.3904257161875089', '2017-02-27 17:47:50'),
(100, 37, 'images/produtos/produto_1206826305_27_02_2017_17_45_27.jpg?0.6918066000573264', '2017-02-27 17:47:50'),
(101, 37, 'images/produtos/produto_1328477150_27_02_2017_17_46_31.jpg?0.8536583900772197', '2017-02-27 17:47:51'),
(102, 37, 'images/produtos/produto_382208281_27_02_2017_17_47_01.jpg?0.6612383718242516', '2017-02-27 17:47:51'),
(103, 38, 'images/produtos/produto_442237615_27_02_2017_17_53_26.jpg?0.18223228548193404', '2017-02-27 17:55:55'),
(104, 38, 'images/produtos/produto_310990683_27_02_2017_17_53_42.jpg?0.5072685243922663', '2017-02-27 17:55:56'),
(105, 38, 'images/produtos/produto_744664974_27_02_2017_17_53_58.jpg?0.5144399004293105', '2017-02-27 17:55:56'),
(106, 38, 'images/produtos/produto_879010195_27_02_2017_17_54_13.jpg?0.2386167938737569', '2017-02-27 17:55:56'),
(107, 38, 'images/produtos/produto_669445420_27_02_2017_17_54_24.jpg?0.7458612875975483', '2017-02-27 17:55:56'),
(108, 39, 'images/produtos/produto_615397503_27_02_2017_18_03_31.jpg?0.6877429014061429', '2017-02-27 18:04:20'),
(109, 40, 'images/produtos/produto_1018347103_27_02_2017_18_05_46.jpg?0.5524309147224797', '2017-02-27 18:06:50'),
(110, 40, 'images/produtos/produto_983749551_27_02_2017_18_06_15.jpg?0.8864211655289591', '2017-02-27 18:06:50'),
(111, 41, 'images/produtos/produto_1039733898_27_02_2017_18_14_08.jpg?0.7335827153681509', '2017-02-27 18:15:39'),
(112, 41, 'images/produtos/produto_1166161271_27_02_2017_18_15_11.jpg?0.4145636055289812', '2017-02-27 18:15:39'),
(113, 38, 'images/produtos/produto_156420524_27_02_2017_18_17_51.jpg?0.16141775927800484', '2017-02-27 18:18:18'),
(114, 42, 'images/produtos/produto_232371618_27_02_2017_18_33_46.jpg?0.26028394478104433', '2017-02-27 18:33:57'),
(115, 43, 'images/produtos/produto_477007295_27_02_2017_18_34_55.jpg?0.5319391593683775', '2017-02-27 18:37:00'),
(116, 44, 'images/produtos/produto_754734411_27_02_2017_18_39_49.jpg?0.06926597050955308', '2017-02-27 18:40:25'),
(117, 44, 'images/produtos/produto_562253253_27_02_2017_18_40_03.jpg?0.7753362460083775', '2017-02-27 18:40:25'),
(118, 45, 'images/produtos/produto_175354508_27_02_2017_18_44_03.jpg?0.6409626645106687', '2017-02-27 18:44:22'),
(119, 46, 'images/produtos/produto_651027818_27_02_2017_18_45_52.jpg?0.9844998872551418', '2017-02-27 18:46:20'),
(120, 47, 'images/produtos/produto_28142784_27_02_2017_18_51_04.jpg?0.10087251083442306', '2017-02-27 18:51:17'),
(121, 48, 'images/produtos/produto_1122527045_27_02_2017_18_52_38.jpg?0.5990149702451464', '2017-02-27 18:53:25'),
(122, 48, 'images/produtos/produto_183401451_27_02_2017_18_52_48.jpg?0.06563295325179763', '2017-02-27 18:53:25'),
(123, 49, 'images/produtos/produto_839765211_27_02_2017_18_54_46.jpg?0.3012674918690115', '2017-02-27 18:57:06'),
(124, 49, 'images/produtos/produto_1315610648_27_02_2017_18_54_59.jpg?0.09060492444978063', '2017-02-27 18:57:06'),
(125, 49, 'images/produtos/produto_1142665919_27_02_2017_18_57_59.jpg?0.2952483232125189', '2017-02-27 18:58:10'),
(126, 50, 'images/produtos/produto_1036678642_27_02_2017_18_59_09.jpg?0.6415494556685375', '2017-02-27 18:59:42'),
(127, 50, 'images/produtos/produto_157625414_27_02_2017_19_00_06.jpg?0.36174012757275387', '2017-02-27 19:00:17'),
(128, 51, 'images/produtos/produto_486345191_08_03_2017_12_16_52.jpg?0.0018523422218803542', '2017-03-08 12:21:21'),
(129, 51, 'images/produtos/produto_1081689885_08_03_2017_12_17_24.jpg?0.30881077096915477', '2017-03-08 12:21:21'),
(130, 51, 'images/produtos/produto_1041498201_08_03_2017_12_17_38.jpg?0.5249997593899711', '2017-03-08 12:21:21'),
(131, 52, 'images/produtos/produto_178840082_08_03_2017_12_23_09.jpg?0.676907554897338', '2017-03-08 12:25:20'),
(132, 52, 'images/produtos/produto_708862532_08_03_2017_12_23_53.jpg?0.011459795766429748', '2017-03-08 12:25:20'),
(133, 52, 'images/produtos/produto_1279205761_08_03_2017_12_24_09.jpg?0.2802133605844379', '2017-03-08 12:25:20'),
(134, 53, 'images/produtos/produto_191792649_08_03_2017_12_27_35.jpg?0.9969502327197755', '2017-03-08 12:29:13'),
(135, 53, 'images/produtos/produto_715145172_08_03_2017_12_27_46.jpg?0.6286673339052238', '2017-03-08 12:29:13'),
(136, 53, 'images/produtos/produto_800950544_08_03_2017_12_28_02.jpg?0.6311208002594406', '2017-03-08 12:29:13'),
(137, 53, 'images/produtos/produto_452737370_08_03_2017_12_28_16.jpg?0.4398421728657351', '2017-03-08 12:29:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `capa` varchar(255) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `width` varchar(100) DEFAULT NULL,
  `depth` varchar(100) DEFAULT NULL,
  `radius` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `min_price` varchar(10) DEFAULT NULL,
  `max_price` varchar(10) DEFAULT NULL,
  `prod_code` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `highlight` int(11) DEFAULT NULL,
  `combine` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `cid`, `sid`, `title`, `resume`, `description`, `capa`, `size`, `length`, `width`, `depth`, `radius`, `height`, `weight`, `min_price`, `max_price`, `prod_code`, `created`, `modified`, `highlight`, `combine`, `status`) VALUES
(1, 2, 0, 'Porta Retrato de Pedra', 'Pedra resinada, ideal para porta retratos, festas de aniversários, datas comemorativas, etc.', '<p>Pedra resinada, ideal para porta retrato, festas de aniversários, datas comemorativas, etc. Tamanhos variados: 15CM X 15CM, 20CM X 20CM, 30CM X 30CM, etc.</p>', '1', '', '15', '15', '', '', '', '400', '0,00', '60,00', '', '2016-05-12 22:36:44', '2017-01-27 09:26:59', 0, 0, 0),
(2, 1, 0, 'Caneca Chopp de Vidro', 'Ideal para curtir um jogo com os amigos ou presentear seus amigos.', '<p>Caneca chopp de vidro, capacidade 500ml, tamanho 15cm X 8,5cm, ideal para curtir um jogo com os amigos ou presentear seus amigos.</p>', '5', '500ml', '8,5', '15', '', '', '', '450', '0,00', '55,00', '', '2016-06-21 11:05:45', '2016-12-02 00:38:44', 0, 0, 1),
(3, 1, 0, 'Caneca de Chopp de Alumínio', 'Excelente acabamento para ser personalizada por Sublimação.', '<p>Caneca de Chopp de Alumínio 500ml, com excelente acabamento, ideal para deixar suas bebidas fresquinhas. Um ótimo presente para seus amigos e familiares.</p>', '9', '500ml', '', '', '', '', '', '100', '0,00', '25,00', '', '2016-06-21 11:30:15', '2016-12-02 00:46:36', 0, 1, 1),
(5, 1, 0, 'Caneca de Cerâmica resinada', 'Ideal para o dia a dia, dia das mães, dia dos professores ou datas comemorativas.', '<p>Caneca de Cerâmica resinada, Considerada a Caneca tamanho Padrão (350ml), Área para sublimação Aproximadamente 8,5cm (A) x 20cm (L). Cor Branca, ideal para dia das mães, dia dos professores, e datas comemorativas.</p>', '14', '350ml', '', '', '', '9,5', '23', '1', '0,00', '25,00', '', '2016-06-21 11:41:14', '2016-12-01 23:45:26', 0, 1, 1),
(6, 1, 0, 'Caneca de Vidro Transparente com faixa branca', 'Ótima para chá de cozinha ou bar, linda e super charmosa.', '<p>Caneca de Vidro Transparente com faixa branca, 350ml, ótima para chá de cozinha ou bar. Linda e super charmosa por ser transparente.</p>', '16', '350ml', '', '', '', '', '', '345', '0,00', '30,00', '', '2016-06-21 11:46:59', '2016-12-02 00:52:18', 0, 0, 1),
(7, 1, 0, 'Caneca de Cerâmica com interior colorido', 'Parte interna em diversas cores, um charme para presentear em datas especiais.', '<p>Caneca de Cerâmica com interior colorido, capacidade 325ml, tamanho 10cm X 8,5cm, interior e alça colorida, dupla camada de resina, disponível nas cores: laranja, amarelo, vermelho, rosa, azul claro, azul escuro, verde e bordô. Linda, se destaca por ter a parte interna de outra cor, fica um charme para presentear em datas especiais.</p>', '19', 'ffffff', '', '', '', '10', '8,5', '345', '0,00', '30,00', '', '2016-06-21 11:50:31', '2016-12-02 00:53:00', 0, 1, 1),
(8, 1, 0, 'Caneca Térmica de Inox', 'Ideal para ter em casa, carro ou no trabalho.', '<p>Caneca Térmica de Inox para sublimação, em alumínio, tampa poliuretano, alça poliuretano, medidas: 15,5cm X 8,5cm, ideal para ter em casa, no carro ou no trabalho. Nos dias frios, mantém seu café, chá ou chocolate quentinho.</p>', '22', '', '', '', '', '8,5', '15', '200', '0,00', '55,00', '', '2016-06-21 11:55:51', '2016-12-02 00:58:59', 0, 0, 1),
(9, 2, 0, 'Chaveiro de Metal', 'Ótimo pra lembrancinhas.', '<p>Chaveiro de metal para sublimação, na cor prata, tamanho 2,5cm X 3,5cm, ótimo pra lembrancinhas de aniversários com a foto do aniversariante.</p>', '30', '', '3,5', '2,5', '', '', '', '1', '10,00', '14,00', '', '2016-06-21 14:45:12', '2016-10-28 14:29:05', 0, 1, 1),
(10, 7, 0, 'Chinelo para sublimação', 'Ideal para brindes para seus clientes', '<p>Chinelo 80% borracha virgem, 100% natural, 20% E.V.A, cores disponíveis: branco, azul, lilás, preto, rosa, verde, vermelho, amarelo, etc, &nbsp;ideal para brindes para seus clientes, levam a sua logomarca para acompanhá-los no dia a dia, divulgando a sua marca, expressando bom atendimento e atenção com o cliente. Acima de 20 pares, trabalhamos com valores diferenciados. Para grandes quantidades ou clientes corporativos, entre em contato e solicite um orçamento.</p>', '67', '32, 34, 36, 38, 40, 42, 44', '', '', '', '', '', '1', '0,00', '25,00', '', '2016-06-21 15:06:49', '2017-01-27 09:30:38', 0, 0, 1),
(11, 2, 0, 'Mouse Pad', 'Ideal para brindes para seus clientes', '<p>Mouse Pad, material Tipo EVA, tamanho 19x19 cm, ideal para brindes para seus clientes, divulga &nbsp;a sua marca, expressa o &nbsp;bom atendimento e atenção com o cliente.</p>', '38', '', '19', '19', '', '', '', '1', '0,00', '20,00', '', '2016-06-21 16:52:05', '2016-12-02 00:39:53', 0, 1, 1),
(12, 3, 0, 'Porta lata de inox', 'Ideal para ser usado na praia,clube e passeios nos dias quentes.', '<p>Porta lata de inox,ideal para ser usado na praia,clube e passeios nos dias quentes, medida 8cm, capacidade 450ml.</p>', '40', '450ml', '', '', '', '', '', '310', '0,19', '0,49', '', '2016-06-21 17:08:03', '2017-01-27 09:28:04', 1, 1, 1),
(13, 3, 0, 'Squeeze Alumínio Branco', 'Um belo brinde para facilitar seu dia a dia.', '<p>Squeeze Alumínio branco, um belo brinde para facilitar seu dia a dia, Garrafa de Alumínio 500ml, Resinada e pronta para personalização.</p>', '41', '500ml', '', '', '', '7', '21', '350', '0,00', '35,00', '', '2016-06-21 17:11:58', '2016-12-02 00:37:57', 1, 0, 1),
(14, 1, 0, 'Caneca Chopp de Cerâmica', 'Caneca Chopp de Cerâmica', '<p>Caneca Chopp de Cerâmica</p>', '44', '500ml', '', '', '', '', '', '360', '0,00', '55,00', '', '2016-06-21 17:15:17', '2017-01-27 09:31:07', 0, 0, 1),
(15, 4, 0, 'Coleção Valentines', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da Coleção Valentines!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '56', '340', '', '', '', '', '', '1', '0,00', '0,00', '', '2016-06-23 11:08:42', '2016-12-02 00:29:15', 0, 0, 1),
(16, 5, 0, 'Almochaveiro Olho Grego', 'Almochaveiro Olho Grego, para espantar inveja, mau olhado e energia negativa.', '<p>Almochaveiro Olho Grego, para espantar inveja, mau olhado e energia negativa.</p>', '57', '', '', '', '', '', '', '75', '', '', '', '2016-09-15 18:32:39', '2016-09-15 18:35:32', 1, 0, 1),
(17, 5, 0, 'Mouse Pad Olho Grego', 'Mouse Pad Olho Grego, para espantar inveja, mau olhado e energia negativa.', '<p>Mouse Pad Olho Grego, para espantar inveja, mau olhado e energia negativa.</p>', '58', '', '', '', '', '', '', '60', '0,00', '20,00', '', '2016-09-15 18:34:50', '2016-12-02 00:27:37', 1, 0, 1),
(18, 5, 0, 'Porta Bolsa Olho Grego', 'Porta Bolsa Olho Grego, para espantar inveja, mau olhado e energia negativa.', '<p>Porta Bolsa Olho Grego, para espantar inveja, mau olhado e energia negativa.</p>', '59', '', '', '', '', '', '', '100', '0,00', '25,00', '', '2016-09-15 18:37:10', '2016-12-02 00:40:55', 1, 0, 0),
(19, 5, 0, 'Caneca Olho Grego', 'Caneca Olho Grego, para espantar inveja, mau olhado e energia negativa.', '<p>Caneca Olho Grego, para espantar inveja, mau olhado e energia negativa.</p>', '61', '', '', '', '', '', '', '345', '0,00', '25,00', '', '2016-09-15 18:39:45', '2016-12-02 00:11:55', 0, 1, 1),
(20, 4, 0, 'Almofada Bemy Valentine', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da Coleção Valentines!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '79', '', '', '', '', '', '', '50', '17,00', '25,00', '', '2016-11-16 17:23:16', '2016-11-16 17:57:01', 1, 0, 1),
(22, 4, 0, 'Almofada I LOVE YOU', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da <b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '80', '', '', '', '', '', '', '50', '17,00', '17,00', '', '2016-11-16 18:29:55', '2016-11-16 18:57:26', 0, 0, 1),
(23, 4, 0, 'Almofada Sweety Love', 'Seu amor expressado por presentes que marcam.', '<div>Presentes da Coleção Valentines!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div>', '81', '', '', '', '', '', '', '50', '17,00', '17,00', '', '2016-11-16 18:33:44', '2016-11-16 18:33:44', 0, 0, 1),
(24, 4, 0, 'Almofada My True Love', 'Seu amor expressado por presentes que marcam.', '<div>Presentes da <b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div>', '82', '', '', '', '', '', '', '50', '17,00', '17,00', '', '2016-11-16 18:50:20', '2016-11-16 18:50:20', 0, 0, 1),
(25, 4, 0, 'Almofada With Love', 'Seu amor expressado por presentes que marcam.', '<div>Presentes da <b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div>', '83', '', '', '', '', '', '', '50', '17,00', '17,00', '', '2016-11-16 18:55:03', '2016-11-16 18:55:03', 0, 0, 1),
(26, 4, 0, 'Almofada You Are My Treasure', 'Seu amor expressado por presentes que marcam.', '<div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div>', '84', '', '', '', '', '', '', '50', '17,00', '17,00', '', '2016-11-16 23:15:44', '2016-11-16 23:15:44', 0, 0, 1),
(27, 4, 0, 'Caneca All You Need is Love', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '85', '', '', '', '', '', '', '345', '0,00', '25,00', '', '2016-11-16 23:19:17', '2016-12-02 00:35:37', 0, 0, 1),
(28, 4, 0, 'Caneca Our Love Builds Our Wolrd', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '86', '', '', '', '', '', '', '345', '0,00', '25,00', '', '2016-11-16 23:22:18', '2016-12-02 00:10:37', 0, 0, 1),
(29, 4, 0, 'Caneca PS: I Love You =)', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '87', '', '', '', '', '', '', '345', '0,00', '25,00', '', '2016-11-16 23:23:39', '2016-12-02 00:10:02', 0, 0, 1),
(30, 4, 0, 'Canecas Coração Bigodes', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '88', '', '', '', '', '', '', '690', '0,00', '50,00', '', '2016-11-16 23:25:42', '2016-12-02 00:07:36', 0, 0, 0),
(31, 4, 0, 'Canecas Coração Passarinhos', 'Seu amor expressado por presentes que marcam.', '<p></p><div>Presentes da&nbsp;<b>Coleção Valentines</b>!&nbsp;</div><div><br></div><div>Seu amor expressado por presentes que marcam.</div><div><br></div><div>O Amor sempre está no ar! Que tal fazer uma declaração com alguma de nossas sugestões de presentes?&nbsp;</div><p></p>', '89', '', '', '', '', '', '', '690', '0,00', '50,00', '', '2016-11-16 23:27:35', '2016-12-02 00:08:07', 0, 0, 1),
(32, 6, 0, 'Chinelo Unicórnio 001', 'Leve este amor de sandália para você ou para presente!', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div><br></div><div>Leve este amor de sandália para você ou para presente!</div><div><br></div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo.&nbsp;</div><div><br></div><div>Todos os tamanhos.</div><p></p>', '90', 'Todos', '', '', '', '', '', '50', '0,00', '25,00', '', '2016-11-18 10:38:52', '2016-12-02 00:03:00', 1, 0, 1),
(33, 6, 0, 'Chinelo Unicórnio 002', 'Leve este amor de sandália para você ou para presente!', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div><br></div><div>Leve este amor de sandália para você ou para presente!</div><div><br></div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo.&nbsp;</div><div><br></div><div>Todos os tamanhos.</div><p></p>', '91', 'Todos', '', '', '', '', '', '50', '0,00', '25,00', '', '2016-11-18 10:42:05', '2016-12-02 00:04:04', 1, 0, 1),
(34, 6, 0, 'Chinelo Unicórnio 003', 'Leve este amor de sandália para você ou para presente!', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div><br></div><div>Leve este amor de sandália para você ou para presente!</div><div><br></div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo.&nbsp;</div><div><br></div><div>Todos os tamanhos.</div><p></p>', '92', 'Todos', '', '', '', '', '', '50', '0,00', '25,00', '', '2016-11-18 10:45:30', '2016-12-02 00:03:45', 1, 0, 1),
(35, 6, 0, 'Chinelo Unicórnio 004', 'Leve este amor de sandália para você ou para presente!', '<p></p><div>Sim! Nós acreditamos em Unicórnios! &lt;3</div><div><br></div><div>Leve este amor de sandália para você ou para presente!</div><div><br></div><div>R$25, a unidade, compre com PagSeguro (frete não incluso). Em quantidade, descontos de até 40%, fale com a gente para orçamentos para atacado e corporativo.&nbsp;</div><div><br></div><div>Todos os tamanhos.</div><p></p>', '93', 'Todos', '', '', '', '', '', '50', '0,00', '25,00', '', '2016-11-18 10:47:03', '2017-01-24 11:22:00', 1, 0, 1),
(36, 8, 0, 'Camisas Unicórnio ', '- Belive in Miracles \r\n- Belive in Yourself \r\n- Não crie expectativas, crie unicórnios \r\n- I am a SEXY', '<p>Camisas Unicórnio&nbsp;</p><div>- Belive in Miracles&nbsp;</div><div>- Belive in Yourself&nbsp;</div><div>- Não crie expectativas, crie unicórnios&nbsp;</div><div>- I am a SEXY unicorn and I KNOW it!</div><p></p>', '94', 'P, M', '', '', '', '', '', '', '0', '0', '', '2017-02-27 17:08:31', '2017-03-07 22:44:30', 0, 0, 1),
(37, 8, 0, 'Canecas Unicórnio', '- Believe in Miracles\r\n- Believe in Yourself\r\n- Não crie expectativas, crie unicórnios\r\n- Poção Unicor', '<p><b>Canecas Unicórnio</b></p><div>- Believe in Miracles</div><div>- Believe in Yourself</div><div>- Não crie expectativas, crie unicórnios<br>- Poção Unicornizadora<br>- I am a SEXY unicorn and I KNOW it!</div><p></p>', '98', '', '', '', '', '', '', '', '', '', '', '2017-02-27 17:47:50', '2017-02-27 17:50:10', 0, 0, 1),
(38, 8, 0, 'Squeezes branco de alumínio Unicórnio', 'Ótimas para sua bebida gelada e presentear seus amigos.', '<p><b>Squeezes branco de alumínio Unicórnio<br></b>Ótima para sua bebida gelada e presentear seus amigos.</p><div>- Believe in Miracles</div><div>- Believe in Yourself</div><div>- Não crie expectativas, crie unicórnios<br>- Poção Unicornizadora<br>- I am a SEXY unicorn and I KNOW it!</div>', '103', '500ml', '', '', '', '', '', '', '', '', '', '2017-02-27 17:55:55', '2017-02-27 18:18:18', 0, 0, 1),
(39, 8, 0, 'Chaveiro Unicórnio', 'Ótimo produto para divulgar sua marca em festas, eventos, etc.', '<b>Chaveiro Unicórnio</b><div><br></div><div>&nbsp;- Believe in Miracles</div>', '108', '', '', '', '', '', '', '', '', '', '', '2017-02-27 18:04:20', '2017-02-27 18:04:20', 0, 0, 1),
(40, 8, 0, 'Mouse Pad Unicórnio', 'Retangular ou redondo, feito em borracha antiderrapante e poliéster, ideal para divulgar sua marca.', 'Retangular ou redondo, feito em borracha antiderrapante e poliéster, ideal para divulgar sua marca.', '109', '', '', '', '', '', '', '', '', '', '', '2017-02-27 18:06:50', '2017-02-27 18:06:50', 0, 0, 1),
(41, 8, 0, 'Squeeze prata de alumínio Unicórnio', 'Ótima para sua bebida gelada e presentear seus amigos.', '<p>Ótima para sua bebida gelada e presentear seus amigos.</p>', '112', '500ml', '', '', '', '', '', '', '', '', '', '2017-02-27 18:15:38', '2017-02-27 18:16:17', 0, 0, 1),
(42, 1, 0, 'Caneca branca de cerâmica com alça coração ', 'Caneca cilíndrica com excelente brilho. Ótima para divulgar sua empresa ou registrar seus momentos.', '<p>Caneca cilíndrica com excelente brilho. Ótima para divulgar sua empresa ou registrar seus momentos.</p>', '114', '325ml', '', '', '', '', '', '', '20,00', '30,00', '', '2017-02-27 18:33:18', '2017-02-27 18:33:57', 0, 0, 1),
(43, 0, 0, 'Xícara branca de porcelana com pires e colher', 'Ideal para café ou chá.', 'Xícara branca de porcelana com pires e colher ideal para café ou chá.', '115', '150ml', '', '', '', '', '', '', '29,00', '40,00', '', '2017-02-27 18:37:00', '2017-02-27 18:37:00', 0, 0, 1),
(44, 1, 0, 'Caneca branca térmica em aço inox', 'Caneca excelente para conservar seu café, no carro ou trabalho. ', 'Caneca excelente para conservar seu café, no carro ou trabalho.&nbsp;', '116', '500ml', '', '', '', '', '', '', '50,00', '65,00', '', '2017-02-27 18:40:25', '2017-02-27 18:40:25', 0, 0, 1),
(45, 1, 0, 'Caneca fosca de vidro para Chopp', 'Excelente para registrar seus momentos ou presentar quem você gosta.', '<p>Excelente para registrar seus momentos ou presentar quem você gosta.</p>', '118', '475ml', '', '', '', '', '', '', '39,00', '55,00', '', '2017-02-27 18:43:52', '2017-02-27 18:44:42', 0, 0, 1),
(46, 1, 0, 'Caneca transparente de vidro para Chopp', 'Ótima para registrar seus momentos ou presentar quem você gosta.', 'Ótima para registrar seus momentos ou presentar quem você gosta.', '119', '500ml', '', '', '', '', '', '', '39,00', '55,00', '', '2017-02-27 18:46:20', '2017-02-27 18:46:20', 0, 0, 1),
(47, 1, 0, 'Caneca branca de cerâmica para Chopp', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', '120', '475ml', '', '', '', '', '', '', '39,00', '55,00', '', '2017-02-27 18:51:17', '2017-02-27 18:51:17', 0, 0, 1),
(48, 1, 0, 'Caneca branca de cerâmica ', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos. ', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.&nbsp;', '121', '325ml', '', '', '', '', '', '', '15,00', '25,00', '', '2017-02-27 18:53:25', '2017-02-27 18:53:25', 0, 0, 1),
(49, 1, 0, 'Caneca branca de cerâmica com alça e interior coloridas', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', '<p>Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.</p>', '123', '325ml', '', '', '', '', '', '', '20,00', '28,00', '', '2017-02-27 18:57:06', '2017-02-27 18:58:10', 0, 0, 1),
(50, 1, 0, 'Caneca branca de cerâmica com alça e borda coloridas ', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', 'Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', '126', '325ml', '', '', '', '', '', '', '20,00', '28,00', '', '2017-02-27 18:59:42', '2017-02-27 19:00:42', 0, 0, 1),
(51, 9, 0, 'Caneca Mulher com M!', 'Primeiro EU, depois EU e depois EU de novo!', '<p>Caneca <b>Mulher com M!<br></b>Primeiro EU, depois EU e depois EU de novo!\r\n<br>Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.</p>', '128', '325ml', '', '', '', '', '', '', '', '', '', '2017-03-08 12:21:20', '2017-03-08 12:22:34', 1, 0, 1),
(52, 9, 0, 'Caneca Mulher com M!', 'Minha Vida Minhas Regras', '<p>Caneca&nbsp;<b>Mulher com M!<br></b>Minha Vida Minhas Regras<br>Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.</p>', '131', '325ml', '', '', '', '', '', '', '', '', '', '2017-03-08 12:25:20', '2017-03-08 12:25:42', 1, 0, 1),
(53, 9, 0, 'Caneca Mulher com M!', 'I am the Beauty and the Be(a)st!', 'Caneca&nbsp;<b>Mulher com M!<br></b>I am the Beauty and the Be(a)st!<br>Com excelente brilho, ótima para divulgar sua empresa, ou registrar seus momentos.', '134', '325ml', '', '', '', '', '', '', '', '', '', '2017-03-08 12:29:13', '2017-03-08 12:29:13', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `visited` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `login`, `password`, `type`, `status`, `created`, `modified`, `visited`) VALUES
(1, 'Rafael Kellows', 'rafaelkellows@hotmail.com', 'rafaelkellows', '123mudar', 1, 1, '2016-05-05 00:00:00', '2016-05-05 00:00:00', '2017-03-22 21:16:13'),
(2, 'Ana Paula', 'anapaula@spatula.com.br', 'anapaula', '123mudar', 0, 0, '2016-05-05 23:38:55', '2016-05-07 13:53:19', '2016-05-05 23:38:55'),
(3, 'Liv Soban', 'livsoban@gmail.com', 'livsoban', '123mudar', 1, 1, '2016-05-06 20:24:33', '2016-05-06 20:24:33', '2017-01-27 09:24:53'),
(4, 'Spatula Usuário', 'spatula@spatula.com.br', 'spatula', '123mudar', 1, 1, '2016-05-07 13:54:18', '2016-05-07 13:54:18', '2016-05-07 13:54:18');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `colors`
--
ALTER TABLE `colors`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `galeria`
--
ALTER TABLE `galeria`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `subcategories`
--
ALTER TABLE `subcategories`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `colors`
--
ALTER TABLE `colors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de tabela `galeria`
--
ALTER TABLE `galeria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de tabela `subcategories`
--
ALTER TABLE `subcategories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
