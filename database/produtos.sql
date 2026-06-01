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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `produtos_ibf_2` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibf_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_c`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id_u`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
