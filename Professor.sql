-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.23
-- Tempo de geração: 25/11/2024 às 19:39
-- Versão do servidor: 8.0.18
-- Versão do PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Academia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Professor`
--

CREATE TABLE `Professor` (
  `Professor_ID` int(11) NOT NULL,
  `Nome` text NOT NULL,
  `Email` text NOT NULL,
  `Telefone` int(11) NOT NULL,
  `Endereço` text,
  `ChavePix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Professor`
--

INSERT INTO `Professor` (`Professor_ID`, `Nome`, `Email`, `Telefone`, `Endereço`, `ChavePix`) VALUES
(1, 'Wallace Borges', 'wallace.borges@gmail.com', 6192989, 'Pura que partiu 789', '345.678.123-09'),
(2, 'Bruno Richard', 'bruno.richard@gmail.com', 6196514, 'Nos Cafundé dos Judas 987', '6199994-3480'),
(3, 'Jurandir Nascimento', 'jurandir.nascimento@gmail.com', 6196467, 'Na baixa da Égua 098', 'jurandir.nascimento@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Professor`
--
ALTER TABLE `Professor`
  ADD PRIMARY KEY (`Professor_ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Professor`
--
ALTER TABLE `Professor`
  MODIFY `Professor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
