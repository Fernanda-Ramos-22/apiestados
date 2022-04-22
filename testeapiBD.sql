-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Abr-2022 às 14:21
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testeapi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `estados_id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `populacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`estados_id`, `nome`, `uf`, `populacao`) VALUES
(1, 'Santa Catarina', 'SC', 7338473),
(2, 'Sao Paulo', 'SP', 46649132),
(3, ' Rio de Janeiro', 'RJ', 16550024),
(4, 'Bahia', 'BA', 15203934),
(5, 'Rio Grande do Sul', 'RS', 11247972),
(6, 'Parana', 'PR', 11163018),
(7, 'Pernambuco', 'PE', 9345173),
(8, 'Ceara', 'CE', 8904459),
(9, 'Para', 'PA', 8175113),
(10, 'Maranhao', 'MA', 6904241),
(11, 'Goias', 'GO', 6610681),
(12, 'Paraiba', 'PB', 3972202),
(13, 'Amazonas', 'AM', 3938336),
(14, 'Espirito Santo', 'ES', 3929911),
(15, 'Rio Grande do Norte', 'RN', 3442175),
(16, 'Alagoas', 'AL', 3340932),
(17, 'Mato Grosso', 'MT', 3270973),
(18, 'Piaui', 'PI', 3204028),
(19, 'Distrito Federal', 'DF', 2914830),
(20, 'Mato Grosso do Sul', 'MS', 2651235),
(21, 'Sergipe', 'SE', 2242937),
(22, 'Rondonia', 'RO', 1768204),
(23, 'Tocantins', 'TO', 1515126),
(24, 'Acre', 'AC', 803513),
(25, 'Amapa', 'AP', 766679),
(26, 'Roraima', 'RR', 505665),
(27, 'Minas Gerais', 'MG', 20869101);

-- --------------------------------------------------------

--
-- Estrutura da tabela `populacao`
--

CREATE TABLE `populacao` (
  `id` int(11) NOT NULL,
  `populacao` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `estados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `populacao`
--

INSERT INTO `populacao` (`id`, `populacao`, `uf`, `estados`) VALUES
(1, '7338473', 'SC', NULL),
(2, '46649132', 'SP', NULL),
(3, '16550024', 'RJ', NULL),
(4, '15203934', 'BA', NULL),
(5, '11247972', 'RS', NULL),
(6, '11163018', 'PR', NULL),
(7, '9345173', 'PE', NULL),
(8, '8904459', 'CE', NULL),
(9, '8175113', 'PA', NULL),
(10, '6904241', 'MA', NULL),
(11, '6610681', 'GO', NULL),
(12, '3972202', 'PB', NULL),
(13, '3938336', 'AM', NULL),
(14, '3929911', 'ES', NULL),
(15, '3442175', 'RN', NULL),
(16, '3340932', 'AL', NULL),
(17, '3270973', 'MT', NULL),
(18, '3204028', 'PI', NULL),
(19, '2914830', 'DF', NULL),
(20, '2651235', 'MS', NULL),
(21, '2242937', 'SE', NULL),
(22, '1768204', 'RO', NULL),
(23, '1515126', 'TO', NULL),
(24, '803513', 'AC', NULL),
(25, '766679', 'AP', NULL),
(26, '505665', 'RR', NULL),
(27, '20869101', 'MG', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`estados_id`),
  ADD KEY `FK4cyqdmk7xot3xy9ldcylhf06o` (`populacao`);

--
-- Índices para tabela `populacao`
--
ALTER TABLE `populacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK68l64gtnbrag4iprnfyujh5yo` (`estados`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `estados_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `populacao`
--
ALTER TABLE `populacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `populacao`
--
ALTER TABLE `populacao`
  ADD CONSTRAINT `FK68l64gtnbrag4iprnfyujh5yo` FOREIGN KEY (`estados`) REFERENCES `estados` (`estados_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
