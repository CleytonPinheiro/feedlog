-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Set-2019 às 03:37
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `logdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `logdb`
--
CREATE DATABASE LOGDB;

CREATE TABLE `logdb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_hora` datetime NOT NULL,
  `tipo` enum('INFO','WARNING','ERROR','DEBUG') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aplicacao` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `logdb`
--

INSERT INTO `logdb` (`id`, `data_hora`, `tipo`, `mensagem`, `aplicacao`, `usuario`, `created_at`, `updated_at`) VALUES
(1, '2019-09-09 08:30:00', 'ERROR', 'ERRO AO SALVAR PEDIDO DE VENDA', 'VENDAS', 'VENDEDOR1', '2019-09-09 00:10:49', '2019-09-09 00:10:49'),
(2, '2019-09-09 08:30:00', 'WARNING', 'DATA CENTER SEM ENERGIA', 'TI', '', '2019-09-09 00:12:17', '2019-09-09 00:12:17'),
(3, '2016-03-08 08:30:00', 'WARNING', 'SEM REDE', 'TI', '', '2019-09-09 00:28:39', '2019-09-09 00:28:39'),
(4, '2015-06-06 08:30:00', 'WARNING', 'SEM REDE', 'TI', 'João', '2019-09-09 01:16:08', '2019-09-09 01:16:08'),
(5, '2015-06-06 08:30:00', 'WARNING', 'SEM REDE', 'TI', 'Maria', '2019-09-09 01:16:34', '2019-09-09 01:16:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_07_205138_create_tabela_log', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `logdb`
--
ALTER TABLE `logdb`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `logdb`
--
ALTER TABLE `logdb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
