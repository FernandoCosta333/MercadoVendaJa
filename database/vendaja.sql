-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jun-2026 às 21:08
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendaja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_c` int(11) NOT NULL,
  `nome_c` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_c`, `nome_c`) VALUES
(3, ' ROUPAS'),
(1, 'CALÇADOS'),
(5, 'CARROS'),
(4, 'CASA'),
(2, 'ELECTRONICOS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_comprador` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `preco_fechado` decimal(10,2) NOT NULL,
  `status` enum('pendente','confirmado','cancelado','concluido') COLLATE utf8mb4_unicode_ci DEFAULT 'pendente',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_p` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `cor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `status` enum('disponível','indisponível','pausado') COLLATE utf8mb4_unicode_ci DEFAULT 'disponível',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_p`, `id_vendedor`, `id_categoria`, `titulo`, `descricao`, `cor`, `preco`, `status`, `criado_em`) VALUES
(1, 1, 1, 'TÉNIS DA NIKE AIR MAX', 'TÉNIS DESPORTIVO MASCULINO,COR PRETO, tamanho 42', 'preto', '23455.74', '', '2026-05-27 01:50:11'),
(2, 1, 4, 'NOTBOOK DELL INSPIRATION', 'Intel core I5 11ª geração,8 Gb de RAM,SSD 256Gb', 'cinza', '150755.20', '', '2026-05-27 01:50:11'),
(3, 1, 5, 'SOFÁ RETRÁTIL 3 LUGARES', 'Sofá retrátil tecido,estrutura em madeira', 'amarelo', '74000.23', '', '2026-05-27 01:50:11'),
(4, 1, 3, 'FONE BLUETOOTH', 'Teste API', 'vermelho', '10345.12', '', '2026-05-31 14:10:37'),
(5, 1, 3, 'MOCHILA ADIDAS', 'Mochila adidas impermiável 30l preta', 'verde', '15700.23', '', '2026-05-31 17:13:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(11) NOT NULL,
  `nome_u` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `nome_u`, `email`, `senha_hash`, `telefone`, `criado_em`) VALUES
(1, 'FranciscoKanuelaJoaquim', 'kanuelafranciscojoaquim@gmail.com', 'kanuela.1234', '939757986', '2026-05-27 01:10:45'),
(2, 'Augusto Soluga', 'augustodalles@gmail.com', 'Augusto.2345', '923456789', '2026-05-27 01:10:45'),
(3, 'Dogma Kenn,o reap', 'fernandocosta33@gamil.com', 'Dogma.2345', '954321234', '2026-05-27 01:10:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_c`),
  ADD UNIQUE KEY `nome_c` (`nome_c`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`),
  ADD KEY `id_comprador` (`id_comprador`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `produtos_ibf_2` (`id_categoria`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_p`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_comprador`) REFERENCES `usuarios` (`id_u`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id_u`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibf_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_c`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id_u`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
