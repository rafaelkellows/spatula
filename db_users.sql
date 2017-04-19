-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 10.129.76.12
-- Tempo de geração: 26/03/2017 às 20:03
-- Versão do servidor: 5.6.26-log
-- Versão do PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `db_users`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `cod_estados` int(11) DEFAULT NULL,
  `sigla` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(72) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `estados`
--

INSERT INTO `estados` (`cod_estados`, `sigla`, `nome`) VALUES
(1, 'AC', 'ACRE'),
(2, 'AL', 'ALAGOAS'),
(3, 'AP', 'AMAPÁ'),
(4, 'AM', 'AMAZONAS'),
(5, 'BA', 'BAHIA'),
(6, 'CE', 'CEARÁ'),
(7, 'DF', 'DISTRITO FEDERAL'),
(8, 'ES', 'ESPÍRITO SANTO'),
(9, 'RR', 'RORAIMA'),
(10, 'GO', 'GOIÁS'),
(11, 'MA', 'MARANHÃO'),
(12, 'MT', 'MATO GROSSO'),
(13, 'MS', 'MATO GROSSO DO SUL'),
(14, 'MG', 'MINAS GERAIS'),
(15, 'PA', 'PARÁ'),
(16, 'PB', 'PARAÍBA'),
(17, 'PR', 'PARANÁ'),
(18, 'PE', 'PERNAMBUCO'),
(19, 'PI', 'PIAUÍ'),
(20, 'RJ', 'RIO DE JANEIRO'),
(21, 'RN', 'RIO GRANDE DO NORTE'),
(22, 'RS', 'RIO GRANDE DO SUL'),
(23, 'RO', 'RONDÔNIA'),
(24, 'TO', 'TOCANTINS'),
(25, 'SC', 'SANTA CATARINA'),
(26, 'SP', 'SÃO PAULO'),
(27, 'SE', 'SERGIPE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_accounts`
--

CREATE TABLE IF NOT EXISTS `tbl_accounts` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `neightborhood` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `status` int(100) NOT NULL,
  `key_token` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `visited` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Fazendo dump de dados para tabela `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `name`, `email`, `login`, `password`, `phone`, `cellphone`, `cpf`, `address`, `number`, `complement`, `neightborhood`, `postal_code`, `state`, `city`, `status`, `key_token`, `created`, `modified`, `visited`) VALUES
(31, 'Jhonatan Dourado Araujo', 'jhonimetal.69@gmail.com', 'Jhonimetal.69', 'Pl4ckC0rp', '(11)3777-7777', '(11)94995-3918', '397.165.078-36', 'Av: João Ventura dos santos', '334', 'Fundos', 'Baronesa', '06260-170', 'SP', 'Osasco', 0, '439d88b515e2c646f3daafc6eae616b9', '2016-10-20 17:57:14', '2016-10-20 17:57:14', '2016-10-20 17:57:14'),
(39, 'Rafael Silva do Nascimento', 'rafaelkellows86@gmail.com', 'rafaelkellows', '123123', '', '(11)95362-7750', '347.666.798-73', 'Rua Itapanhaú', '856', '', 'Paraisópolis', '05665-060', 'SP', 'São Paulo', 1, '4b4b7ffbd362c107d55baa15179db57d', '2016-10-23 14:05:41', '2016-10-23 20:05:31', '2017-03-08 23:35:30'),
(40, 'Renan Silva do Nascimento', 'renankellows@hotmail.com', 'Renan Silva', 'Re02021999', '', '(11)99759-1231', '488.089.908-93', 'Rua Jeremy Bentham', '68', 'Casa / Rodrigues sports', 'Jardim Morumbi', '05662-040', 'SP', 'São Paulo', 1, '5f34a9ee3498344cdf41ef432e476112', '2016-10-23 15:09:07', '2016-10-23 15:09:30', '2016-10-23 15:11:03'),
(41, 'Jhonatan Dourado Araujo ', 'Jhonatan.d.araujo@gmail.com', 'Jhonimetal', '254680', '(11)0536-3333', '(11)94995-3918', '397.165.078-36', 'João Ventura dos Santos', '1234', '1 cs', 'Baronesa', '06260-170', 'CE', 'Acaraú', 1, 'd6c2ee192175fda378a9b3aaacc7b9fb', '2016-10-23 22:26:17', '2016-10-23 22:27:08', '2016-10-23 22:26:17'),
(42, 'Ruston', 'rustoncm@gmailo.com', 'rustoncm', 'gsm010506', '(11)3864-7368', '(11)97139-4071', '059.398.688-19', 'Rua Doutor Augusto de Miranda', '1107', 'apto 132', 'Vila Pompeia', '05026-001', 'SP', 'São Paulo', 0, '47099b1dc9d233470fc39e96f1831394', '2016-10-24 14:22:52', '2016-10-24 14:22:52', '2016-10-24 14:22:52'),
(43, 'Luciano Corrêa Andrade', 'lcandrad@gmail.com', 'lcandrade', 'querocomprar', '', '(11)99462-7474', '190.358.318-70', 'Rua João Moura', '680', 'apto.12', 'Pinheiros', '05412-001', 'SP', 'São Paulo', 1, '96782353a186dd634974e83d7b46ad5c', '2016-10-24 15:19:42', '2016-10-24 15:21:39', '2016-10-24 15:19:42'),
(44, 'Rejania', 'louizy.silva13@gmail.com', '__loouizy', 'Carajas@2016', '', '(94)99147-6379', '733.697.722-72', 'Rua 4', '122', 'Escola Bom Pastor', 'Primavera', '68515-000', 'PA', 'Parauapebas', 0, 'b9454d7983c01f07bcbc5786408d86b1', '2017-01-16 00:54:48', '2017-01-16 00:54:48', '2017-01-16 00:54:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_requests`
--

CREATE TABLE IF NOT EXISTS `tbl_requests` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `trans_code` varchar(255) NOT NULL,
  `file_logo_marca` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Fazendo dump de dados para tabela `tbl_requests`
--

INSERT INTO `tbl_requests` (`id`, `id_user`, `trans_code`, `file_logo_marca`, `created`) VALUES
(1, 25, '92FC1AE6-AFE1-4817-BF42-919D826BDB69', '', '2016-10-18 00:00:00.000000'),
(3, 25, '6E5D3F8A-9BC9-427D-8553-E614383D6454', '', '2016-10-18 22:07:38.000000'),
(4, 25, 'E0C878E5-E61F-4ACE-A209-44E82609C164', '', '2016-10-18 23:01:42.000000'),
(5, 25, '6308F57A-0B43-4118-A48F-A4689ED2F754', '', '2016-10-18 23:57:31.000000'),
(6, 25, '6308F57A-0B43-4118-A48F-A4689ED2F754', '', '2016-10-18 23:57:45.000000'),
(7, 25, '6308F57A-0B43-4118-A48F-A4689ED2F754', '', '2016-10-18 23:58:22.000000'),
(8, 25, '', '', '2016-10-19 00:00:08.000000'),
(9, 25, '89B64539-FE00-4138-90CB-9A673128351D', '', '2016-10-19 00:02:03.000000'),
(10, 25, '242A852D-CC3F-4D19-95A2-A81AA2EF81E2', '', '2016-10-19 00:06:10.000000'),
(11, 25, '6D233A55-70EF-4321-AD6E-3FCA3BC9CF0B', '', '2016-10-19 00:18:37.000000'),
(12, 28, 'D44261AD-5381-4C1D-A814-531ACEC3A864', '', '2016-10-19 13:51:35.000000'),
(13, 1, 'F415E629-83EF-4DDC-9027-8C81A1716B22', '', '2016-10-20 18:01:47.000000'),
(14, 1, '678BFE0A-42E5-41C6-A985-AE27E33F9D22', '', '2016-10-20 18:13:07.000000'),
(15, 1, '7086111F-3D3A-4AD0-861E-F76DF90A8F22', '', '2016-10-20 18:15:14.000000'),
(19, 39, '05027D70-AEA8-4EF0-BF85-9CDF70A8C348', 'upload/1239272268_11_11_2016_18_02_14.png', '2016-11-11 18:04:52.000000'),
(20, 39, 'F317520C-4D1B-4C0E-BE49-81D9C01B1D5E', '<br /><b>Notice</b>:  Undefined index: tcode in <b>C:UsersRafaelDocumentsProjetosLIVSpatulasiteajax_php_file.php</b> on line <b>4</b><br />1', '2016-11-15 08:32:28.000000'),
(21, 39, 'AAEF2E92-3B1F-4057-A830-16574B1CB0E0', '<br /><b>Notice</b>:  Undefined index: reference in <b>C:UsersRafaelDocumentsProjetosLIVSpatulasiteajax_php_file.php</b> on line <b>4</b><br />1', '2016-11-15 08:36:13.000000'),
(22, 39, '079EBBE5-13D8-4800-937B-4C5988C0F064', 'upload/233834699_16_11_2016_23_47_51.png2', '2016-11-16 23:47:52.000000'),
(23, 39, 'DA1B600F-7C67-4C2A-8798-98F3E82F39BA', 'v2/upload/1146753938_17_11_2016_00_05_32.jpg2', '2016-11-17 00:05:34.000000'),
(24, 39, '84A267C8-C113-4F73-A7B6-DD8C8A929AEF', 'v2/upload/1010085001_17_11_2016_01_22_56.jpg', '2016-11-17 01:22:58.000000'),
(25, 39, '48FC11B1-9CA4-4E75-82C3-E353ABD8FDBB', 'upload/1281099159_17_11_2016_01_30_38.jpg', '2016-11-17 01:30:39.000000'),
(26, 39, '456B79CA-B4CB-41BA-90C8-D1597DB392E3', 'upload/64117354_17_11_2016_01_42_51.jpg', '2016-11-17 01:42:53.000000');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
 ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbl_requests`
--
ALTER TABLE `tbl_requests`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de tabela `tbl_requests`
--
ALTER TABLE `tbl_requests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
