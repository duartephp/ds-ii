-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 24-Jun-2019 às 00:02
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `bd_restaurante`
--
CREATE DATABASE IF NOT EXISTS `bd_restaurante` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_restaurante`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido`
--

CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `nome` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `endereco` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bairro` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prato` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bebida` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tamanho` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `tb_pedido`
--

INSERT INTO `tb_pedido` (`nome`, `endereco`, `bairro`, `telefone`, `prato`, `bebida`, `tamanho`, `id`) VALUES
('Gabi Duarte', 'Isaltina Matoso de Oliveira', 'Jardim AnÃ©sia', '(19) 99275-8635', 'MACARRONADA', 'COCA COLA', '2L', 4),
('Gabi Duarte', 'Isaltina Matoso de Oliveira', 'Jardim AnÃ©sia', '(19) 99275-8635', 'MACARRONADA', 'COCA COLA', '2L', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
