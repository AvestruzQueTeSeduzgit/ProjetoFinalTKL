-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.23
-- Tempo de geração: 25/11/2024 às 18:16
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
-- Estrutura para tabela `Plano`
--

CREATE TABLE `Plano` (
  `Plano_ID` int(11) NOT NULL,
  `Tipo` text NOT NULL,
  `Valor` int(11) DEFAULT NULL,
  `Pagamento` text NOT NULL,
  `Data_Vencimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Plano`
--

INSERT INTO `Plano` (`Plano_ID`, `Tipo`, `Valor`, `Pagamento`, `Data_Vencimento`) VALUES
(1, 'Plano Simples', 99, 'Fatura Paga', '2024-11-28'),
(2, 'Plano Compensator', 160, 'Fatura Parcelada', '2024-11-29'),
(3, 'Plano Modest', 120, 'Fatura em Aberto', '2024-11-30'),
(4, 'Plano Modest', 120, 'Fatura Atrasada', '2024-11-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Usuário`
--

CREATE TABLE `Usuário` (
  `Usuario_ID` int(11) NOT NULL,
  `Nome` text NOT NULL,
  `Email` text NOT NULL,
  `Telefone` int(11) NOT NULL,
  `Endereço` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Usuário`
--

INSERT INTO `Usuário` (`Usuario_ID`, `Nome`, `Email`, `Telefone`, `Endereço`) VALUES
(1, 'Alice Souza', 'alice.souza@gmail.com', 6195415, 'Casa do Cara Alho 123'),
(2, 'Bruno Lima', 'bruno.lima@gmail.com', 6198512, 'Rua da Amargura 321'),
(3, 'Carla Dias', 'carla.dias@gmail.com', 6191090, 'Quinto dos Infernos 456'),
(4, 'Keven Silva', 'keven@gmail.com', 6198819, 'Onde Judas bateu as botas 654');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Plano`
--
ALTER TABLE `Plano`
  ADD PRIMARY KEY (`Plano_ID`);

--
-- Índices de tabela `Usuário`
--
ALTER TABLE `Usuário`
  ADD PRIMARY KEY (`Usuario_ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Plano`
--
ALTER TABLE `Plano`
  MODIFY `Plano_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `Usuário`
--
ALTER TABLE `Usuário`
  MODIFY `Usuario_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
