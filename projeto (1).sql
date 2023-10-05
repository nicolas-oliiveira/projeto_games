-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2022 às 13:06
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
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `nome` varchar(55) NOT NULL,
  `cpf` varchar(55) NOT NULL,
  `dta_emp` varchar(55) NOT NULL,
  `dta_devo` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_eletro`
--

CREATE TABLE `tbl_eletro` (
  `cod` int(5) NOT NULL,
  `modelo` varchar(55) NOT NULL,
  `preco` varchar(10) NOT NULL,
  `fabricante` varchar(55) NOT NULL,
  `categoria` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_eletro`
--

INSERT INTO `tbl_eletro` (`cod`, `modelo`, `preco`, `fabricante`, `categoria`) VALUES
(1, 'Tablet Samsung S6', 'R$ 250,00', 'Samsung', 'Tablet e Celulares'),
(2, 'iphone xr', 'R$ 259,00', 'Apple', 'Celulares'),
(3, 'Playstation 4', 'R$ 450,00', 'Playstation', 'Videogame'),
(4, 'Xbox One X', 'R$ 350,00', 'Microsoft', 'Videogame'),
(5, 'Playstation 5', 'R$ 450,00', 'Playstation', 'Videogame');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_funcio`
--

CREATE TABLE `tbl_funcio` (
  `nome` text NOT NULL,
  `email` varchar(55) NOT NULL,
  `usuario` varchar(55) NOT NULL,
  `senha` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_funcio`
--

INSERT INTO `tbl_funcio` (`nome`, `email`, `usuario`, `senha`) VALUES
('nicolas lopes', 'nicolas@hotmail.com', 'nicolas', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_games`
--

CREATE TABLE `tbl_games` (
  `cod` int(11) NOT NULL,
  `nome` varchar(55) NOT NULL,
  `preco` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_games`
--

INSERT INTO `tbl_games` (`cod`, `nome`, `preco`) VALUES
(1, 'minecraft', 'R$ 29,90'),
(2, 'FIFA 23', 'R$ 45,90'),
(3, 'The Last Of Us', 'R$ 49,90'),
(4, 'fifa 20', 'R$ 35,00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_eletro`
--
ALTER TABLE `tbl_eletro`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `tbl_games`
--
ALTER TABLE `tbl_games`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_eletro`
--
ALTER TABLE `tbl_eletro`
  MODIFY `cod` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbl_games`
--
ALTER TABLE `tbl_games`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
