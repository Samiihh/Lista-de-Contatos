-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Set-2023 às 12:51
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

DROP TABLE IF EXISTS `contatos`;
CREATE TABLE IF NOT EXISTS `contatos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  `APELIDO` varchar(50) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `DATAALTERACAO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DATACADASTRO` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`ID`, `NOME`, `APELIDO`, `CPF`, `EMAIL`, `TELEFONE`, `DATAALTERACAO`, `DATACADASTRO`) VALUES
(1, 'Joao da Silva', 'Joao', '12345678901', 'joao@email.com', '1112345678', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(2, 'Maria Santos', 'Maria', '98765432109', 'maria@email.com', '2198765432', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(3, 'Pedro Oliveira', 'Pedro', '45678912345', 'pedro@email.com', '3155555555', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(4, 'Ana Pereira', 'Ana', '78912345678', 'ana@email.com', '4133333333', '2023-08-31 09:50:53', '2023-09-01 09:50:53'),
(5, 'Lucas Ferreira', 'Lucas', '65432198765', 'lucas@email.com', '5144444444', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(6, 'Laura Rodrigues', 'Laura', '32165498732', 'laura@email.com', '1299999999', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(7, 'Gustavo Souza', 'Gustavo', '55588877799', 'gustavo@email.com', '8177777777', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(8, 'Camila Alves', 'Camila', '22233344455', 'camila@email.com', '6266666666', '2023-08-28 09:50:53', '2023-09-01 09:50:53'),
(9, 'Fernando Lima', 'Fernando', '77788899900', 'fernando@email.com', '1433333333', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(10, 'Mariana Costa', 'Mariana', '88877766611', 'mariana@email.com', '4822222222', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(11, 'Rafael Sousa', 'Rafael', '33322211100', 'rafael@email.com', '7188888888', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(12, 'Isabella Carvalho', 'Isabella', '11199955577', 'isabella@email.com', '3277777777', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(13, 'Thiago Santos', 'Thiago', '44455566688', 'thiago@email.com', '6211111111', '2023-08-31 09:50:53', '2023-09-01 09:50:53'),
(14, 'Carolina Lima', 'Carolina', '99955566611', 'carolina@email.com', '5133333333', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(15, 'Gabriel Oliveira', 'Gabriel', '55566644499', 'gabriel@email.com', '1144444444', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(16, 'Juliana Rodrigues', 'Juliana', '44455588822', 'juliana@email.com', '8199999999', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(17, 'Matheus Pereira', 'Matheus', '77799911133', 'matheus@email.com', '9166666666', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(18, 'Larissa Alves', 'Larissa', '11122233344', 'larissa@email.com', '4111111111', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(19, 'Felipe Sousa', 'Felipe', '33322211188', 'felipe@email.com', '3155555555', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(20, 'Amanda Carvalho', 'Amanda', '88877766611', 'amanda@email.com', '4888888888', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(21, 'Rodrigo Costa', 'Rodrigo', '66655544400', 'rodrigo@email.com', '1222222222', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(22, 'Sofia Lima', 'Sofia', '44433322211', 'sofia@email.com', '9244444444', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(23, 'Lucas Oliveira', 'Lucas', '11122233355', 'lucas@email.com', '6199999999', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(24, 'Ana Clara Pereira', 'Ana Clara', '99988877700', 'anaclara@email.com', '1177777777', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(25, 'Gabriela Sousa', 'Gabriela', '55544433388', 'gabriela@email.com', '2111111111', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(26, 'Daniel Carvalho', 'Daniel', '44466677711', 'daniel@email.com', '8133333333', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(27, 'Beatriz Lima', 'Beatriz', '77766655500', 'beatriz@email.com', '3122222222', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(28, 'Rafaela Rodrigues', 'Rafaela', '33344455588', 'rafaela@email.com', '1288888888', '2023-09-01 09:50:53', '2023-09-01 09:50:53'),
(29, 'Juliana Rodrigues', 'Juliana', '44455588822', 'juliana@email.com', '8199999999', '2023-08-28 09:50:53', '2023-09-01 09:50:53'),
(30, 'Rodrigo Costa', 'Rodrigo', '66655544400', 'rodrigo@email.com', '1222222222', '2023-08-31 09:50:53', '2023-09-01 09:50:53'),
(31, 'Camila Alves', 'Camila', '22233344455', 'camila@email.com', '6266666666', '2023-08-28 09:50:53', '2023-09-01 09:50:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
