-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 08:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `core`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` varchar(40) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`) VALUES
('cat-18eeacd2-af9a-446a-b272-1595522a2db4', 'arcade'),
('cat-83104197-1222-4f62-bd67-c09d35296d1f', 'casino'),
('cat-c491afdb-9c1f-4de8-be7d-15dc15c35fba', 'sports'),
('cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44', 'slot');

-- --------------------------------------------------------

--
-- Table structure for table `god`
--

CREATE TABLE `god` (
  `id` varchar(40) NOT NULL,
  `god_name` varchar(35) NOT NULL,
  `god_username` varchar(20) NOT NULL,
  `god_secret` text NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `parent_id` varchar(40) DEFAULT NULL,
  `post_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `god`
--

INSERT INTO `god` (`id`, `god_name`, `god_username`, `god_secret`, `status`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `post_id`) VALUES
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'ROOT USER', 'root', '$2b$10$alO.spWboHRjG.n93gZ/Ne7t3/pHwXoT4nMrxwVi2RcSSoWqYLl0u', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL, NULL, 'pos-51bb4186-69f6-4fdd-be26-768ca8c7961d'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'Astanization', 'Astan', '$2b$10$nOth4S9ZlQhEgdOQRX32bek9EtE8OZTGaJNXULz/0QKR.5zL3uTN.', 1, '2023-08-20 01:01:59', '2023-08-20 01:01:59', NULL, 'god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'pos-6c4b86ef-1a92-48c2-8996-05ac3ef0fd99');

-- --------------------------------------------------------

--
-- Table structure for table `god__class`
--

CREATE TABLE `god__class` (
  `god_id` varchar(40) NOT NULL,
  `class_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `god__class`
--

INSERT INTO `god__class` (`god_id`, `class_id`) VALUES
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'cat-18eeacd2-af9a-446a-b272-1595522a2db4'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'cat-83104197-1222-4f62-bd67-c09d35296d1f'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'cat-c491afdb-9c1f-4de8-be7d-15dc15c35fba'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'cat-18eeacd2-af9a-446a-b272-1595522a2db4'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'cat-83104197-1222-4f62-bd67-c09d35296d1f'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'cat-c491afdb-9c1f-4de8-be7d-15dc15c35fba'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44');

-- --------------------------------------------------------

--
-- Table structure for table `god__merchant`
--

CREATE TABLE `god__merchant` (
  `god_id` varchar(40) NOT NULL,
  `merchant_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `god__merchant`
--

INSERT INTO `god__merchant` (`god_id`, `merchant_id`) VALUES
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'mer-90007751-db87-402e-a01d-08478959216f'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('god-5709b586-deab-4b8b-ab74-d9c983b5743b', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'mer-90007751-db87-402e-a01d-08478959216f'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('god-bbf84d7c-b510-43f1-a240-742a0fc63d00', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5');

-- --------------------------------------------------------

--
-- Table structure for table `god__sign`
--

CREATE TABLE `god__sign` (
  `id` varchar(40) NOT NULL,
  `access_sign` text DEFAULT NULL,
  `refresh_sign` text DEFAULT NULL,
  `api_sign` text DEFAULT NULL,
  `public_sign` text DEFAULT NULL,
  `god_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `god__sign`
--

INSERT INTO `god__sign` (`id`, `access_sign`, `refresh_sign`, `api_sign`, `public_sign`, `god_id`) VALUES
('gsg-7d511062-96bb-4e65-a6f9-70b2e2920eb4', '74b0a0c799a619c21394b11ad3490022', 'c0b28bcaf4c56713a21c9b9db523bda2', NULL, NULL, 'god-bbf84d7c-b510-43f1-a240-742a0fc63d00'),
('gsg-9b4688d4-39dc-4ef2-9e0c-d236569f8908', '85c6c8fa0c3053ca6357884bd536ddcb', 'f5cc329c03f044d9dde218eee7bc25f5', 'd2369365332fc8038195af6ab0062343', 'a53045f18f8b3ce5a5f1de5f4e17104b', 'god-5709b586-deab-4b8b-ab74-d9c983b5743b');

-- --------------------------------------------------------

--
-- Table structure for table `journal__historical`
--

CREATE TABLE `journal__historical` (
  `id` varchar(40) NOT NULL,
  `primary_id` varchar(100) NOT NULL,
  `secondary_id` varchar(100) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `type` varchar(20) NOT NULL,
  `endpoint` varchar(59) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `merchant_id` varchar(40) NOT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `user_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journal__live`
--

CREATE TABLE `journal__live` (
  `id` varchar(40) NOT NULL,
  `primary_id` varchar(100) NOT NULL,
  `secondary_id` varchar(100) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `type` varchar(20) NOT NULL,
  `endpoint` varchar(59) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(30,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `merchant_id` varchar(40) NOT NULL,
  `product_id` varchar(40) DEFAULT NULL,
  `user_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `name`, `alias`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('mer-90007751-db87-402e-a01d-08478959216f', 'PGSoft', 'pgsoft', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38', 'Joker', 'joker', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93', 'Spade Gaming', 'spade', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6', 'Pragmatic Play', 'pragma', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'Habanero', 'habanero', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchant__class`
--

CREATE TABLE `merchant__class` (
  `id` varchar(40) NOT NULL,
  `merchant_class_id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `merchant_id` varchar(40) NOT NULL,
  `class_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant__class`
--

INSERT INTO `merchant__class` (`id`, `merchant_class_id`, `name`, `merchant_id`, `class_id`) VALUES
('mcl-122f2e37-cca3-4a3b-845c-6cb7994edcc9', 'RNG', 'Slot Games', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-13fc4a51-b961-4622-bbfa-1b0e708df16c', '16', 'War', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-30fe0335-e801-4e3b-87c9-5af929300bd3', '1', 'Slot Games', 'mer-90007751-db87-402e-a01d-08478959216f', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-36fe0e2a-5986-4761-b8ec-eeef012e0d9a', '17', 'Dragon Tiger', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-3d109649-d068-4c8d-a1cd-18ad4f754bcf', '20', 'Shooting Games', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-3dec090a-5d28-42c0-b46a-8ad2de67ea48', '5', 'Roulette', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-5be6cd1e-150f-461c-9bf9-0b3691e504a8', 'Bingo', 'Bingo Games', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-752022c7-c101-4657-9c82-659b1518cea8', '15', 'Sic Bo', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-75f3b023-9fdb-4711-b334-57fa65876b9b', '2', 'Casino Games', 'mer-90007751-db87-402e-a01d-08478959216f', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-95fa6b25-cfb4-435d-9151-67a9a3b990d0', 'Slot', 'Slot Games', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-9663a3b3-14b8-4f5e-bf29-1ad4493dc42c', 'R2', 'Fishing Games', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6', 'cat-18eeacd2-af9a-446a-b272-1595522a2db4'),
('mcl-a0841380-6bfb-4266-9f9a-4fcbc95d5ced', '11', 'Video Slots', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-a7772b81-e058-4f71-86c5-cc9d3800df10', '6', 'Video Poker Games', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-b63c5fd9-3b3a-40c4-b403-e4f23732d28d', '4', 'Blackjack', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-c2c081dd-f0d8-48bf-b8bd-52179caa2439', 'ECasino', 'Electric Casino Games', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-d1de7696-51f5-4390-ad22-8d6226e20efe', '8', 'Casino Poker', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-db7c1c8f-8ad3-496b-a20a-cf9aeda7e485', 'Fishing', 'Fishing Games', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38', 'cat-18eeacd2-af9a-446a-b272-1595522a2db4'),
('mcl-e151187b-c2df-4d37-9db0-5e31cb400784', 'slots', 'Slots', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-e39c4b1f-e029-443a-9240-f5e0d6423d7e', '2', 'Baccarat', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-fc9663bc-92c3-4e63-8fe3-381758313ff8', '18', 'Other Table Games', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5', 'cat-d5c5189c-f90e-412b-9d55-e46e9a43fb44'),
('mcl-fdb40140-6a6f-45e8-a8f1-4b58fa0965b4', 'VSB', 'Visual Sports Book', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6', 'cat-c491afdb-9c1f-4de8-be7d-15dc15c35fba');

-- --------------------------------------------------------

--
-- Table structure for table `merchant__config`
--

CREATE TABLE `merchant__config` (
  `id` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `merchant_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant__config`
--

INSERT INTO `merchant__config` (`id`, `name`, `value`, `merchant_id`) VALUES
('con-0285b02d-ae0b-4282-81b9-22762271dcc9', 'ApiUrl', 'https://api-sg12.ppslot001.net/IntegrationService/v3/http/CasinoGameAPI', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-0ab8187b-2a2a-4bac-8519-8ad898cfc561', 'secretKey', 'fe42edb01a57eb607f53982cda029591', 'mer-90007751-db87-402e-a01d-08478959216f'),
('con-2304fe46-d390-42ac-934c-2609635a1851', 'OperatorToken', 'cfc3185c71a0f9f2cdc3e8ca81b097f9', 'mer-90007751-db87-402e-a01d-08478959216f'),
('con-265c9162-1fc7-4c02-876c-6cf93ebf4c80', 'salt', 'a887efe4d234bed042b0c94e9e6b4339', 'mer-90007751-db87-402e-a01d-08478959216f'),
('con-381d2f75-82eb-41f0-a2f3-aafdd54df696', 'secretKey', 'B302BdF6E4074081', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-3d745092-7cbc-434c-b55d-364bf243d103', 'ApiKey', 'F67C135E-1531-4CD5-95D9-CCBD8080A15D', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-41543caf-2152-44c0-a7db-56cf10cdb2b2', 'providerId', 'jokerPlay', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('con-42c47d17-d8bc-4f48-affb-4b8e315b93e6', 'AppId', 'TG2T', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('con-62d5418e-56a3-4c81-ba1d-4f2ba086ced5', 'passKey', 'fb865qN476JRFeU', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-78d6d0b4-e3b5-42b6-a1ec-bbe0d6ec108e', 'providerId', 'habanero', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-7c1063bd-6389-4743-96e6-4d77d74c1539', 'ApiUrl', 'https://ws-test.insvr.com/jsonapi', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-816e1b2a-5937-449d-bf4a-acd94fb0af83', 'providerId', 'PragmaticPlay', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-88717973-1df2-4d49-927e-9a12c148d1d7', 'BrandId', '5cb3c1b4-84f1-ed11-907c-000d3a80622d', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-8bbe9472-3a9c-4c4d-95d3-0e1907c0c5b7', 'ApiUrl', 'https://api.pg-bo.me/external', 'mer-90007751-db87-402e-a01d-08478959216f'),
('con-991f8e5c-f20d-4ed2-ba79-956fa06400f8', 'ApiUrl', 'http://demoapi.egame.spadegaming.com/api', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-a488f628-4682-4c56-bc3b-6a491f5e6ecc', 'gameUrl', 'http://www.gwc688.net', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('con-a4c2884e-eeb1-4479-9c90-32b7c6dd4a44', 'gameUrl', 'https://m.pg-redirect.net', 'mer-90007751-db87-402e-a01d-08478959216f'),
('con-a501bc38-d343-409d-9392-9a86ef91c6d5', 'screenshotUrl', 'http://demoapi.egame.spadegaming.com/screenshot', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-a6b1647c-dc55-4e36-a75a-53036286f87f', 'ApiUrl', 'http://api688.net/seamless', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('con-ae88b8cf-153e-43da-a079-4b3211ec11a6', 'secretKey', 'g3gz6e38r34ok', 'mer-a4d3961d-6d86-4ff8-9a1d-380b76babb38'),
('con-b28f7fb0-2949-4300-950f-a2a580898e0c', 'providerId', 'SpadeGaming', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-b65b2171-7864-4d90-87f6-0a40ed4edd2d', 'gameUrl', 'https://app-test.insvr.com/go.ashx', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-c61d518d-4578-4b62-8ad4-c2ca2071db12', 'MerchantCode', 'SPADE', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-cb07a068-7214-4fc9-843c-9511d698835e', 'hashKey', 'Q1w2e3r4t5y6', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-d0cae21d-f768-47ed-89b4-5008a58ce1d5', 'SecureLogin', 'skgmng_skygaming', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-d4068416-e176-4277-9ce6-977d2ca59e4e', 'gameUrl', 'http://portal.e-games.com/auth/', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-dc4a535c-9134-443b-8110-e384debd327f', 'imageUrl', 'https://app-test.insvr.com/img', 'mer-e65cb8b4-cf3a-4c43-93f7-1948c781f2f5'),
('con-deace6ef-7086-4b7d-8dfa-5efa1ac3b62c', 'imageUrl', 'https://api-sg12.ppslot001.net', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-e05da6a2-89c5-4a86-b829-01a5ffe92d10', 'gameUrl', 'https://api-sg12.ppslot001.net/gs2c/playGame.do', 'mer-e607c937-b3fc-4ffa-87d6-3e609d8e2ed6'),
('con-ee4a71b3-86e9-4749-b7e4-8f33ed468b56', 'thumbnailUrl', 'http://demoapi.egame.spadegaming.com/thumbnail', 'mer-c630091a-94ba-4f7d-aa4e-2ebd55a15c93'),
('con-fee2c3e0-7bff-464e-96a5-8fe6b99b24bd', 'imageUrl', 'https://public.pg-demo.com/pages/static/image/en/WebCover/%s/game_thumbnail_260_380.png', 'mer-90007751-db87-402e-a01d-08478959216f');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` varchar(40) NOT NULL,
  `order_name` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ord-1b6e930b-712f-4d84-a4a3-63a88e7c9063', 'ROOT', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('ord-515ad645-68f2-4da6-bb06-1ecc12123ad4', 'MASTER', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('ord-7bc3d196-b5f9-4ed2-b4d1-9443e9926738', 'SUPERMASTER', 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` varchar(40) NOT NULL,
  `post_name` varchar(50) NOT NULL,
  `level` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_name`, `level`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('pos-51bb4186-69f6-4fdd-be26-768ca8c7961d', 'ROOT', 1, 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('pos-63f72a0d-5285-4a33-af0b-1fd088ca989a', 'MASTER', 3, 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL),
('pos-6c4b86ef-1a92-48c2-8996-05ac3ef0fd99', 'SUPERMASTER', 2, 1, '2023-08-19 23:32:45', '2023-08-19 23:32:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post__order`
--

CREATE TABLE `post__order` (
  `post_id` varchar(40) NOT NULL,
  `order_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post__order`
--

INSERT INTO `post__order` (`post_id`, `order_id`) VALUES
('pos-51bb4186-69f6-4fdd-be26-768ca8c7961d', 'ord-1b6e930b-712f-4d84-a4a3-63a88e7c9063'),
('pos-63f72a0d-5285-4a33-af0b-1fd088ca989a', 'ord-515ad645-68f2-4da6-bb06-1ecc12123ad4'),
('pos-6c4b86ef-1a92-48c2-8996-05ac3ef0fd99', 'ord-7bc3d196-b5f9-4ed2-b4d1-9443e9926738');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(40) NOT NULL,
  `primary_id` text NOT NULL,
  `secondary_id` text DEFAULT NULL,
  `primary_status` smallint(6) NOT NULL,
  `secondary_status` smallint(6) DEFAULT NULL,
  `product_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `merchant_id` varchar(40) NOT NULL,
  `class_id` varchar(40) NOT NULL,
  `mclass_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(40) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `user_alias` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `balance` decimal(30,2) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `token_status` smallint(6) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `god`
--
ALTER TABLE `god`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `god__class`
--
ALTER TABLE `god__class`
  ADD PRIMARY KEY (`god_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `god__merchant`
--
ALTER TABLE `god__merchant`
  ADD PRIMARY KEY (`god_id`,`merchant_id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `god__sign`
--
ALTER TABLE `god__sign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `god_id` (`god_id`);

--
-- Indexes for table `journal__historical`
--
ALTER TABLE `journal__historical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `journal__live`
--
ALTER TABLE `journal__live`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant__class`
--
ALTER TABLE `merchant__class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `merchant__config`
--
ALTER TABLE `merchant__config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post__order`
--
ALTER TABLE `post__order`
  ADD PRIMARY KEY (`post_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `mclass_id` (`mclass_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `god`
--
ALTER TABLE `god`
  ADD CONSTRAINT `god_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `god` (`id`),
  ADD CONSTRAINT `god_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `god__class`
--
ALTER TABLE `god__class`
  ADD CONSTRAINT `god__class_ibfk_1` FOREIGN KEY (`god_id`) REFERENCES `god` (`id`),
  ADD CONSTRAINT `god__class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Constraints for table `god__merchant`
--
ALTER TABLE `god__merchant`
  ADD CONSTRAINT `god__merchant_ibfk_1` FOREIGN KEY (`god_id`) REFERENCES `god` (`id`),
  ADD CONSTRAINT `god__merchant_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`);

--
-- Constraints for table `god__sign`
--
ALTER TABLE `god__sign`
  ADD CONSTRAINT `god__sign_ibfk_1` FOREIGN KEY (`god_id`) REFERENCES `god` (`id`);

--
-- Constraints for table `journal__historical`
--
ALTER TABLE `journal__historical`
  ADD CONSTRAINT `journal__historical_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `journal__historical_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `journal__historical_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `journal__live`
--
ALTER TABLE `journal__live`
  ADD CONSTRAINT `journal__live_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `journal__live_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `journal__live_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `merchant__class`
--
ALTER TABLE `merchant__class`
  ADD CONSTRAINT `merchant__class_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `merchant__class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Constraints for table `merchant__config`
--
ALTER TABLE `merchant__config`
  ADD CONSTRAINT `merchant__config_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`);

--
-- Constraints for table `post__order`
--
ALTER TABLE `post__order`
  ADD CONSTRAINT `post__order_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `post__order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`mclass_id`) REFERENCES `merchant__class` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
