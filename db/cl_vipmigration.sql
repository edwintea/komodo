-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cl_vipmigration`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id_access` varchar(34) NOT NULL,
  `token_access` varchar(32) NOT NULL,
  `rtoken_access` varchar(32) NOT NULL,
  `date_access` datetime NOT NULL,
  `id_account` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id_access`, `token_access`, `rtoken_access`, `date_access`, `id_account`) VALUES
('acest04yovx217mm7yl6v6720kj8r3ak9w', 'f1nwkbmu1nwaob4krl2t3hu77isz0cua', '829231qnndljyr0jf2lyam27hfiu49m9', '2023-08-12 15:35:55', 'accooy8og8outoqsfz8mq8dq64ehs7mdls');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` varchar(34) NOT NULL,
  `alias_account` varchar(5) NOT NULL,
  `name_account` varchar(50) NOT NULL,
  `email_account` varchar(50) NOT NULL,
  `uname_account` varchar(35) NOT NULL,
  `pass_account` text NOT NULL,
  `pin_account` text NOT NULL,
  `status_account` tinyint(1) NOT NULL,
  `id_tenant` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `alias_account`, `name_account`, `email_account`, `uname_account`, `pass_account`, `pin_account`, `status_account`, `id_tenant`) VALUES
('accooy8og8outoqsfz8mq8dq64ehs7mdls', '6esfb', 'Kembang Genteng', 'kembangpasir@gmail.com', 'meow', 'e3e037ac33b0ad8708bf553c907cb3ef1nIL04$T4NUgaST+tB5Z5kg3bqLxHc8w==', '', 1, 'tnangfy9e0707i5j7jrwa46hiuwnhdrydd'),
('accopu7okto1k84z1alnyo7pjegmxd0axr', 'j3d77', 'Pak Jugernut', 'jugerboy@gmail.com', 'ikanteri', '4b4cfa4bd2746a6c7810a06e5271ee4d1nIL04$T4NO7FC3VuKWXkVNwYc+cl6nQ==', '', 1, 'tnangfy9e0707i5j7jrwa46hiuwnhdrydd');

-- --------------------------------------------------------

--
-- Table structure for table `apply_promo`
--

CREATE TABLE `apply_promo` (
  `id_apromo` varchar(34) NOT NULL,
  `target_apromo` varchar(34) NOT NULL,
  `date_apromo` datetime NOT NULL,
  `status_apromo` tinyint(1) NOT NULL,
  `id_promo` varchar(34) NOT NULL,
  `id_account` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id_article` varchar(34) NOT NULL,
  `name_article` varchar(50) NOT NULL,
  `value_article` text NOT NULL,
  `tag_article` text NOT NULL,
  `cdate_article` datetime NOT NULL,
  `udate_article` datetime NOT NULL,
  `status_article` tinyint(1) NOT NULL,
  `id_chief` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` varchar(34) NOT NULL,
  `code_bank` varchar(10) NOT NULL,
  `alias_bank` varchar(30) NOT NULL,
  `name_bank` varchar(50) NOT NULL,
  `open_bank` time NOT NULL,
  `close_bank` time NOT NULL,
  `offday_bank` text NOT NULL,
  `logo_bank` text NOT NULL,
  `status_bank` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `code_bank`, `alias_bank`, `name_bank`, `open_bank`, `close_bank`, `offday_bank`, `logo_bank`, `status_bank`) VALUES
('bank0hbyi8f4oo9l0xtmgi3l0zt6k5ip0n', 'PU01', 'Telkomsel', 'Telekomunikasi Selular', '00:00:00', '00:00:00', '', '', 1),
('bank29r6ontb7grgb7ziauzn3d52tehjko', '046', 'DBS', 'Bank DBS Indonesia', '00:00:00', '00:00:00', '', '', 1),
('bank4zpb0801jpfvl98534u9z20x4n7lv4', '023', 'UOB', 'Bank UOB Indonesia', '00:00:00', '00:00:00', '', '', 1),
('bank6ypxluy1ewd00ixnbga9tvvlzc1pfl', 'PU02', 'XL', 'XL Axiata', '00:00:00', '00:00:00', '', '', 1),
('bank7q7wb48r39cbahlen0p7rg4jyh39rs', 'EW04', 'LinkAja', 'LinkAja', '00:00:00', '00:00:00', '', '', 1),
('bank831y1ok3z410yisctyrmaldbpmr9p8', '022', 'CIMB Niaga', 'Bank CIMB Niaga', '00:00:00', '00:00:00', '', '', 1),
('bank869sgk07tttxlcpmn0xyr5tu0fvyg9', '008', 'Mandiri', 'Bank Mandiri', '00:00:00', '00:00:00', '', '', 1),
('bankbplwudiee9ajxyh255us2z6mux66qp', '426', 'Mega', 'Bank Mega', '00:00:00', '00:00:00', '', '', 1),
('bankccf9jwxmxksn4d53xd6bd0u5esvavd', '014', 'BCA', 'Bank Central Asia', '00:00:00', '00:00:00', '', '', 1),
('bankcsbhvrmhh5dvrj84el1evs3x2hovil', '011', 'Danamon', 'Bank Danamon', '00:00:00', '00:00:00', '', '', 1),
('banketibbb078ttyn2dk7ry2yvrbc11ch5', '016', 'Maybank', 'Bank BII Maybank', '00:00:00', '00:00:00', '', '', 1),
('bankfnmbvldg91hnik40m5fcdv0geajofg', '009', 'BNI', 'Bank Negara Indonesia', '00:00:00', '00:00:00', '', '', 1),
('banklp9ww4ldgpy8ievbllwhzc31ju1c7e', 'EW01', 'DANA', 'DANA', '00:00:00', '00:00:00', '', '', 1),
('bankmyqcaqw3x0sonvf3zhi6r9gqpkaven', '451', 'BSI', 'Bank Syariah Indonesia Eks Mandiri Syariah', '00:00:00', '00:00:00', '', '', 1),
('banknapbv1my7ajyqb43u86l9bq43s9jc0', 'EW03', 'Gopay', 'Gopay', '00:00:00', '00:00:00', '', '', 1),
('banko9w0mz66hy8fkradwf4worgwxj6576', 'EW02', 'OVO', 'OVO', '00:00:00', '00:00:00', '', '', 1),
('bankp29tnpv73pwngub3botnmnx7v30bh0', '002', 'BRI', 'Bank Rakyat Indonesia', '00:00:00', '00:00:00', '', '', 1),
('bankq5z022rvbx8hd0v7krfqqw0v74breo', '200', 'BTN', 'Bank Tabungan Negara', '00:00:00', '00:00:00', '', '', 1),
('bankweozfce81ad9mhyv5r17bnpyql11ie', '213', 'BTPN', 'Bank Tabungan Pensiunan Nasional', '00:00:00', '00:00:00', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_target_promo`
--

CREATE TABLE `bank_target_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_bank` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bucket`
--

CREATE TABLE `bucket` (
  `id_bucket` varchar(34) NOT NULL,
  `name_bucket` varchar(50) NOT NULL,
  `info_bucket` text NOT NULL,
  `status_bucket` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bucket`
--

INSERT INTO `bucket` (`id_bucket`, `name_bucket`, `info_bucket`, `status_bucket`) VALUES
('BUC0001', 'Platinum', 'Highest Tier Membership', 1),
('BUC0002', 'Gold', 'Middle Tier Membership', 1),
('BUC0003', 'Silver', 'Middle Tier Membership', 1),
('BUC0004', 'Bronze', 'Low Tier Membership', 1),
('BUC0005', 'Basic', 'Newest Membership', 1);

-- --------------------------------------------------------

--
-- Table structure for table `camber`
--

CREATE TABLE `camber` (
  `id_camber` varchar(34) NOT NULL,
  `name_camber` varchar(50) NOT NULL,
  `value_camber` varchar(75) NOT NULL,
  `status_camber` tinyint(1) NOT NULL,
  `id_bank` varchar(34) NOT NULL,
  `id_chief` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_game`
--

CREATE TABLE `category_game` (
  `id_cgame` varchar(34) NOT NULL,
  `name_cgame` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_target_promo`
--

CREATE TABLE `category_target_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_cgame` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chief`
--

CREATE TABLE `chief` (
  `id_chief` varchar(34) NOT NULL,
  `name_chief` varchar(35) NOT NULL,
  `uname_chief` varchar(35) NOT NULL,
  `password_chief` text NOT NULL,
  `pin_chief` varchar(10) NOT NULL,
  `status_chief` tinyint(1) NOT NULL,
  `id_tenant` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chief`
--

INSERT INTO `chief` (`id_chief`, `name_chief`, `uname_chief`, `password_chief`, `pin_chief`, `status_chief`, `id_tenant`) VALUES
('chif6vkd409cw8qcwmg68tz6j57fxvbb6a', 'Bang Admin', 'superadmin', '33a67ddf2d0a48c0e8ae1abeddb9e94f1nIL04$T4NCGGslEd/S7puCm0qT59mXQ==', '1234', 1, 'tnangfy9e0707i5j7jrwa46hiuwnhdrydd');

-- --------------------------------------------------------

--
-- Table structure for table `chiefman`
--

CREATE TABLE `chiefman` (
  `id_chiefman` varchar(34) NOT NULL,
  `token_chiefman` varchar(32) NOT NULL,
  `rtoken_chiefman` varchar(32) NOT NULL,
  `date_chiefman` datetime NOT NULL,
  `id_chief` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chiefman`
--

INSERT INTO `chiefman` (`id_chiefman`, `token_chiefman`, `rtoken_chiefman`, `date_chiefman`, `id_chief`) VALUES
('cmanyqtiua814qyh2mq6iqycfu60cu3zzm', 'x1j0rtr60r3ayu9fewlgkco2q5e6jqta', '10m0fgmt20qxqjcei46r7pt8r8e80ltf', '2023-08-13 06:34:49', 'chif6vkd409cw8qcwmg68tz6j57fxvbb6a');

-- --------------------------------------------------------

--
-- Table structure for table `coin`
--

CREATE TABLE `coin` (
  `id_coin` varchar(34) NOT NULL,
  `value_coin` bigint(20) NOT NULL,
  `status_coin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coin`
--

INSERT INTO `coin` (`id_coin`, `value_coin`, `status_coin`) VALUES
('coin8zd5a964eh68megeq0j7zig4xl3rj6', 0, 1),
('coinbsq4ypyw1t0t7az4wtdhg34rty4p6j', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config_promo`
--

CREATE TABLE `config_promo` (
  `id_cpromo` varchar(34) NOT NULL,
  `name_cpromo` varchar(50) NOT NULL,
  `new_cpromo` tinyint(1) NOT NULL,
  `type_cpromo` enum('deposit','freebet') NOT NULL,
  `category_cpromo` enum('extra bonus','reload bonus','welcome bonus','welcome cashback') NOT NULL,
  `exp_cpromo` int(3) NOT NULL,
  `budget_cpromo` bigint(20) NOT NULL,
  `frequency_cpromo` enum('everyday','everyweek','everymonth') NOT NULL,
  `condition_type_cpromo` enum('to','wl') NOT NULL,
  `multiplier_condtion_cpromo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` varchar(34) NOT NULL,
  `value_deposit` bigint(20) NOT NULL,
  `info_deposit` text NOT NULL,
  `date_deposit` datetime NOT NULL,
  `status_deposit` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_bank`
--

CREATE TABLE `detail_bank` (
  `id_bank` varchar(34) NOT NULL,
  `id_tbank` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_bank`
--

INSERT INTO `detail_bank` (`id_bank`, `id_tbank`) VALUES
('bankp29tnpv73pwngub3botnmnx7v30bh0', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bank869sgk07tttxlcpmn0xyr5tu0fvyg9', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankq5z022rvbx8hd0v7krfqqw0v74breo', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankfnmbvldg91hnik40m5fcdv0geajofg', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankcsbhvrmhh5dvrj84el1evs3x2hovil', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bank831y1ok3z410yisctyrmaldbpmr9p8', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('banketibbb078ttyn2dk7ry2yvrbc11ch5', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankbplwudiee9ajxyh255us2z6mux66qp', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankccf9jwxmxksn4d53xd6bd0u5esvavd', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankmyqcaqw3x0sonvf3zhi6r9gqpkaven', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bankweozfce81ad9mhyv5r17bnpyql11ie', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bank29r6ontb7grgb7ziauzn3d52tehjko', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('bank4zpb0801jpfvl98534u9z20x4n7lv4', 'tbakwm0fmvwyffndfurd0041k3lkvabuvu'),
('banklp9ww4ldgpy8ievbllwhzc31ju1c7e', 'tbakjkerbi9zg3k3x3ap1yssucua3o4kih'),
('banko9w0mz66hy8fkradwf4worgwxj6576', 'tbakjkerbi9zg3k3x3ap1yssucua3o4kih'),
('banknapbv1my7ajyqb43u86l9bq43s9jc0', 'tbakjkerbi9zg3k3x3ap1yssucua3o4kih'),
('bank7q7wb48r39cbahlen0p7rg4jyh39rs', 'tbakjkerbi9zg3k3x3ap1yssucua3o4kih'),
('bank0hbyi8f4oo9l0xtmgi3l0zt6k5ip0n', 'tbaknrio87xhv87my2r14scbkt4ul4oi9n'),
('bank6ypxluy1ewd00ixnbga9tvvlzc1pfl', 'tbaknrio87xhv87my2r14scbkt4ul4oi9n');

-- --------------------------------------------------------

--
-- Table structure for table `detail_chief`
--

CREATE TABLE `detail_chief` (
  `id_chief` varchar(34) NOT NULL,
  `id_role` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_coin`
--

CREATE TABLE `detail_coin` (
  `id_account` varchar(34) NOT NULL,
  `id_coin` varchar(34) NOT NULL,
  `id_lcoin` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_coin`
--

INSERT INTO `detail_coin` (`id_account`, `id_coin`, `id_lcoin`) VALUES
('accooy8og8outoqsfz8mq8dq64ehs7mdls', 'coin8zd5a964eh68megeq0j7zig4xl3rj6', 'loinmqhodc028coehdy9yzqqfvtpisu0g1'),
('accopu7okto1k84z1alnyo7pjegmxd0axr', 'coinbsq4ypyw1t0t7az4wtdhg34rty4p6j', 'loinmgbeud7nh7cds57yyaxiddcyq3wr7p');

-- --------------------------------------------------------

--
-- Table structure for table `detail_deposit`
--

CREATE TABLE `detail_deposit` (
  `id_deposit` varchar(34) NOT NULL,
  `id_pit` varchar(34) NOT NULL,
  `id_camber` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_game`
--

CREATE TABLE `detail_game` (
  `id_dgame` varchar(34) NOT NULL,
  `id_game` varchar(34) NOT NULL,
  `id_provider` varchar(34) NOT NULL,
  `id_cgame` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_promo`
--

CREATE TABLE `detail_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_cpromo` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_role`
--

CREATE TABLE `detail_role` (
  `id_role` varchar(34) NOT NULL,
  `id_rules` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_withdraw`
--

CREATE TABLE `detail_withdraw` (
  `id_withdraw` varchar(34) NOT NULL,
  `id_pit` varchar(34) NOT NULL,
  `id_camber` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` varchar(34) NOT NULL,
  `key_game` varchar(50) NOT NULL,
  `name_game` varchar(50) NOT NULL,
  `img_game` text NOT NULL,
  `status_game` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `game_target_promo`
--

CREATE TABLE `game_target_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_game` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `garden`
--

CREATE TABLE `garden` (
  `id_lbucket` varchar(34) NOT NULL,
  `id_lpot` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `list_bucket`
--

CREATE TABLE `list_bucket` (
  `id_lbucket` varchar(34) NOT NULL,
  `id_bucket` varchar(34) NOT NULL,
  `id_camber` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `list_pot`
--

CREATE TABLE `list_pot` (
  `id_lpot` varchar(34) NOT NULL,
  `id_pot` varchar(34) NOT NULL,
  `id_account` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lock_coin`
--

CREATE TABLE `lock_coin` (
  `id_lcoin` varchar(34) NOT NULL,
  `value_lcoin` int(11) NOT NULL,
  `date_lcoin` datetime NOT NULL,
  `status_lcoin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lock_coin`
--

INSERT INTO `lock_coin` (`id_lcoin`, `value_lcoin`, `date_lcoin`, `status_lcoin`) VALUES
('loinmgbeud7nh7cds57yyaxiddcyq3wr7p', 0, '2023-08-12 15:41:26', 0),
('loinmqhodc028coehdy9yzqqfvtpisu0g1', 0, '2023-08-12 15:11:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pit`
--

CREATE TABLE `pit` (
  `id_pit` varchar(34) NOT NULL,
  `name_pit` varchar(50) NOT NULL,
  `value_pit` varchar(75) NOT NULL,
  `status_pit` tinyint(1) NOT NULL,
  `id_bank` varchar(34) NOT NULL,
  `id_account` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playtime`
--

CREATE TABLE `playtime` (
  `id_playtime` int(11) NOT NULL,
  `date_playtime` datetime NOT NULL,
  `id_account` varchar(34) NOT NULL,
  `id_dgame` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pot`
--

CREATE TABLE `pot` (
  `id_pot` varchar(34) NOT NULL,
  `name_pot` varchar(50) NOT NULL,
  `info_pot` text NOT NULL,
  `status_pot` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pot`
--

INSERT INTO `pot` (`id_pot`, `name_pot`, `info_pot`, `status_pot`) VALUES
('POT0001', 'Platinum', 'Highest Tier Membership', 1),
('POT0002', 'Gold', 'Middle Tier Membership', 1),
('POT0003', 'Silver', 'Middle Tier Membership', 1),
('POT0004', 'Bronze', 'Low Tier Membership', 1),
('POT0005', 'Basic', 'Newest Membership', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pot_target_promo`
--

CREATE TABLE `pot_target_promo` (
  `id_pot` varchar(34) NOT NULL,
  `id_promo` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id_promo` varchar(34) NOT NULL,
  `alias_promo` varchar(7) NOT NULL,
  `name_promo` varchar(50) NOT NULL,
  `target_promo` enum('all','game','category','provider','bank') NOT NULL,
  `tier_promo` tinyint(1) NOT NULL,
  `bank_promo` tinyint(1) NOT NULL,
  `img_promo` text NOT NULL,
  `info_promo` text NOT NULL,
  `start_promo` datetime NOT NULL,
  `end_promo` datetime NOT NULL,
  `status_promo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id_provider` varchar(34) NOT NULL,
  `key_provider` text NOT NULL,
  `name_provider` varchar(50) NOT NULL,
  `available_category_provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `provider_target_promo`
--

CREATE TABLE `provider_target_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_provider` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` varchar(34) NOT NULL,
  `name_role` varchar(50) NOT NULL,
  `value_role` text NOT NULL,
  `status_role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id_rules` varchar(34) NOT NULL,
  `name_rules` varchar(50) NOT NULL,
  `param_rules` varchar(50) NOT NULL,
  `uri_rules` text NOT NULL,
  `status_rules` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` varchar(34) NOT NULL,
  `alias_setting` varchar(50) NOT NULL,
  `name_setting` varchar(50) NOT NULL,
  `value_setting` text NOT NULL,
  `extra_setting` text NOT NULL,
  `other_setting` text NOT NULL,
  `group_setting` varchar(35) NOT NULL,
  `status_setting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `id_tenant` varchar(34) NOT NULL,
  `alias_tenant` varchar(7) NOT NULL,
  `name_tenant` varchar(50) NOT NULL,
  `description_tenant` text NOT NULL,
  `license_tenant` varchar(35) NOT NULL,
  `date_tenant` datetime NOT NULL,
  `status_tenant` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id_tenant`, `alias_tenant`, `name_tenant`, `description_tenant`, `license_tenant`, `date_tenant`, `status_tenant`) VALUES
('tnangfy9e0707i5j7jrwa46hiuwnhdrydd', 'zeroflw', 'Zero Flow', '', '2f9tkt648f0k2fn5efkbnh4idingz53zuv9', '2023-08-10 02:41:40', 1),
('tnanw2br1w7x1up143fv79c53k7wc4gq2m', 'n4w4l4', 'Nawala', '', 'j4y6vejwz5jw2407kge0vc1t67yjgpydzgb', '2023-08-10 02:41:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_bank`
--

CREATE TABLE `type_bank` (
  `id_tbank` varchar(34) NOT NULL,
  `code_tbank` varchar(20) NOT NULL,
  `name_tbank` varchar(50) NOT NULL,
  `info_tbank` text NOT NULL,
  `status_tbank` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_bank`
--

INSERT INTO `type_bank` (`id_tbank`, `code_tbank`, `name_tbank`, `info_tbank`, `status_tbank`) VALUES
('tbakjkerbi9zg3k3x3ap1yssucua3o4kih', 'digital', 'E-Payment', 'Payment Method Using Digital Transaction Between Two Parties, Like Gopay, Ovo Etc.', 1),
('tbaknrio87xhv87my2r14scbkt4ul4oi9n', 'pulse', 'Pay-Cell', 'Payment Method Using Pulse(Cellular Balance) With Phone Number. Like Telkomsel, XL Etc.', 1),
('tbakwm0fmvwyffndfurd0041k3lkvabuvu', 'bank', 'Bank Payment', 'Payment Method Using Bank Transafer, Like BCA, BRI Etc.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_bank_target_promo`
--

CREATE TABLE `type_bank_target_promo` (
  `id_promo` varchar(34) NOT NULL,
  `id_tbank` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id_withdraw` varchar(34) NOT NULL,
  `value_withdraw` bigint(20) NOT NULL,
  `info_withdraw` text NOT NULL,
  `date_withdraw` datetime NOT NULL,
  `status_withdraw` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id_access`),
  ADD KEY `access_id_account` (`id_account`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `account_id_tenant` (`id_tenant`);

--
-- Indexes for table `apply_promo`
--
ALTER TABLE `apply_promo`
  ADD PRIMARY KEY (`id_apromo`),
  ADD KEY `apply_promo_id_promo` (`id_promo`),
  ADD KEY `apply_promo_id_account` (`id_account`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD KEY `article_id_chief` (`id_chief`) USING BTREE;

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `bank_target_promo`
--
ALTER TABLE `bank_target_promo`
  ADD KEY `bank_target_promo_id_promo` (`id_promo`),
  ADD KEY `bank_target_promo_id_bank` (`id_bank`);

--
-- Indexes for table `bucket`
--
ALTER TABLE `bucket`
  ADD PRIMARY KEY (`id_bucket`);

--
-- Indexes for table `camber`
--
ALTER TABLE `camber`
  ADD PRIMARY KEY (`id_camber`) USING BTREE,
  ADD KEY `camber_id_bank` (`id_bank`),
  ADD KEY `camber_id_chief` (`id_chief`);

--
-- Indexes for table `category_game`
--
ALTER TABLE `category_game`
  ADD PRIMARY KEY (`id_cgame`);

--
-- Indexes for table `category_target_promo`
--
ALTER TABLE `category_target_promo`
  ADD KEY `category_target_promo_id_promo` (`id_promo`),
  ADD KEY `category_target_promo_id_cgame` (`id_cgame`);

--
-- Indexes for table `chief`
--
ALTER TABLE `chief`
  ADD PRIMARY KEY (`id_chief`),
  ADD KEY `chief_id_tenant` (`id_tenant`);

--
-- Indexes for table `chiefman`
--
ALTER TABLE `chiefman`
  ADD PRIMARY KEY (`id_chiefman`),
  ADD KEY `chiefman_id_chief` (`id_chief`);

--
-- Indexes for table `coin`
--
ALTER TABLE `coin`
  ADD PRIMARY KEY (`id_coin`);

--
-- Indexes for table `config_promo`
--
ALTER TABLE `config_promo`
  ADD PRIMARY KEY (`id_cpromo`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `detail_bank`
--
ALTER TABLE `detail_bank`
  ADD KEY `detail_bank_id_bank` (`id_bank`),
  ADD KEY `detail_bank_id_tbank` (`id_tbank`);

--
-- Indexes for table `detail_chief`
--
ALTER TABLE `detail_chief`
  ADD KEY `detail_chieft_id_chief` (`id_chief`),
  ADD KEY `detail_chief_id_role` (`id_role`);

--
-- Indexes for table `detail_coin`
--
ALTER TABLE `detail_coin`
  ADD KEY `detail_coint_id_account` (`id_account`),
  ADD KEY `detail_coin_id_coint` (`id_coin`),
  ADD KEY `detail_coin_id_lcoint` (`id_lcoin`),
  ADD KEY `id_coin` (`id_coin`);

--
-- Indexes for table `detail_deposit`
--
ALTER TABLE `detail_deposit`
  ADD KEY `detail_deposit_id_deposit` (`id_deposit`),
  ADD KEY `detail_deposit_id_pit` (`id_pit`),
  ADD KEY `detail_deposit_id_camber` (`id_camber`);

--
-- Indexes for table `detail_game`
--
ALTER TABLE `detail_game`
  ADD PRIMARY KEY (`id_dgame`),
  ADD KEY `detail_game_id_game` (`id_game`),
  ADD KEY `detail_game_id_provider` (`id_provider`),
  ADD KEY `detail_game_id_cgame` (`id_cgame`);

--
-- Indexes for table `detail_promo`
--
ALTER TABLE `detail_promo`
  ADD KEY `detail_promo_id_promo` (`id_promo`),
  ADD KEY `detail_promo_id_cpromo` (`id_cpromo`);

--
-- Indexes for table `detail_role`
--
ALTER TABLE `detail_role`
  ADD KEY `detail_role_id_role` (`id_role`),
  ADD KEY `detail_role_id_rules` (`id_rules`);

--
-- Indexes for table `detail_withdraw`
--
ALTER TABLE `detail_withdraw`
  ADD KEY `detail_withdraw_id_withdraw` (`id_withdraw`),
  ADD KEY `detail_withdraw_id_pit` (`id_pit`),
  ADD KEY `detail_withdraw_id_camber` (`id_camber`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `game_target_promo`
--
ALTER TABLE `game_target_promo`
  ADD KEY `game_target_promo_id_promo` (`id_promo`),
  ADD KEY `game_target_promo_id_game` (`id_game`);

--
-- Indexes for table `garden`
--
ALTER TABLE `garden`
  ADD KEY `list_camber_id_lbucket` (`id_lbucket`),
  ADD KEY `list_camber_id_lpot` (`id_lpot`);

--
-- Indexes for table `list_bucket`
--
ALTER TABLE `list_bucket`
  ADD PRIMARY KEY (`id_lbucket`),
  ADD KEY `list_bucket_id_bucket` (`id_bucket`),
  ADD KEY `list_bucket_id_camber` (`id_camber`);

--
-- Indexes for table `list_pot`
--
ALTER TABLE `list_pot`
  ADD PRIMARY KEY (`id_lpot`),
  ADD KEY `list_pot_id_pot` (`id_pot`),
  ADD KEY `list_pot_id_account` (`id_account`);

--
-- Indexes for table `lock_coin`
--
ALTER TABLE `lock_coin`
  ADD PRIMARY KEY (`id_lcoin`);

--
-- Indexes for table `pit`
--
ALTER TABLE `pit`
  ADD PRIMARY KEY (`id_pit`),
  ADD KEY `id_bank` (`id_bank`),
  ADD KEY `pit_id_account` (`id_account`);

--
-- Indexes for table `playtime`
--
ALTER TABLE `playtime`
  ADD PRIMARY KEY (`id_playtime`),
  ADD KEY `playtime_id_account` (`id_account`),
  ADD KEY `playtime_id_dgame` (`id_dgame`);

--
-- Indexes for table `pot`
--
ALTER TABLE `pot`
  ADD PRIMARY KEY (`id_pot`);

--
-- Indexes for table `pot_target_promo`
--
ALTER TABLE `pot_target_promo`
  ADD KEY `pot_target_promo_id_pot` (`id_pot`),
  ADD KEY `pot_target_promo_id_promo` (`id_promo`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`),
  ADD UNIQUE KEY `alias_promo` (`alias_promo`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- Indexes for table `provider_target_promo`
--
ALTER TABLE `provider_target_promo`
  ADD KEY `provider_target_promo` (`id_promo`),
  ADD KEY `provider_target_promo_id_provider` (`id_provider`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id_rules`) USING BTREE;

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`id_tenant`);

--
-- Indexes for table `type_bank`
--
ALTER TABLE `type_bank`
  ADD PRIMARY KEY (`id_tbank`);

--
-- Indexes for table `type_bank_target_promo`
--
ALTER TABLE `type_bank_target_promo`
  ADD KEY `type_bank_target_promo_id_promo` (`id_promo`),
  ADD KEY `type_bank_target_promo_id_tbank` (`id_tbank`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id_withdraw`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playtime`
--
ALTER TABLE `playtime`
  MODIFY `id_playtime` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id_tenant`) REFERENCES `tenant` (`id_tenant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apply_promo`
--
ALTER TABLE `apply_promo`
  ADD CONSTRAINT `apply_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apply_promo_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_chief`) REFERENCES `chief` (`id_chief`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bank_target_promo`
--
ALTER TABLE `bank_target_promo`
  ADD CONSTRAINT `bank_target_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_target_promo_ibfk_2` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `camber`
--
ALTER TABLE `camber`
  ADD CONSTRAINT `camber_ibfk_1` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camber_ibfk_2` FOREIGN KEY (`id_chief`) REFERENCES `chief` (`id_chief`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_target_promo`
--
ALTER TABLE `category_target_promo`
  ADD CONSTRAINT `category_target_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_target_promo_ibfk_2` FOREIGN KEY (`id_cgame`) REFERENCES `category_game` (`id_cgame`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chief`
--
ALTER TABLE `chief`
  ADD CONSTRAINT `chief_ibfk_1` FOREIGN KEY (`id_tenant`) REFERENCES `tenant` (`id_tenant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chiefman`
--
ALTER TABLE `chiefman`
  ADD CONSTRAINT `chiefman_ibfk_1` FOREIGN KEY (`id_chief`) REFERENCES `chief` (`id_chief`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_bank`
--
ALTER TABLE `detail_bank`
  ADD CONSTRAINT `detail_bank_ibfk_1` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_bank_ibfk_2` FOREIGN KEY (`id_tbank`) REFERENCES `type_bank` (`id_tbank`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_chief`
--
ALTER TABLE `detail_chief`
  ADD CONSTRAINT `detail_chief_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_chief_ibfk_2` FOREIGN KEY (`id_chief`) REFERENCES `chief` (`id_chief`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_coin`
--
ALTER TABLE `detail_coin`
  ADD CONSTRAINT `detail_coin_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_coin_ibfk_2` FOREIGN KEY (`id_coin`) REFERENCES `coin` (`id_coin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_coin_ibfk_3` FOREIGN KEY (`id_lcoin`) REFERENCES `lock_coin` (`id_lcoin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_deposit`
--
ALTER TABLE `detail_deposit`
  ADD CONSTRAINT `detail_deposit_ibfk_1` FOREIGN KEY (`id_deposit`) REFERENCES `deposit` (`id_deposit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_deposit_ibfk_2` FOREIGN KEY (`id_pit`) REFERENCES `pit` (`id_pit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_deposit_ibfk_3` FOREIGN KEY (`id_camber`) REFERENCES `camber` (`id_camber`) ON DELETE CASCADE;

--
-- Constraints for table `detail_game`
--
ALTER TABLE `detail_game`
  ADD CONSTRAINT `detail_game_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_game_ibfk_2` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id_provider`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_game_ibfk_3` FOREIGN KEY (`id_cgame`) REFERENCES `category_game` (`id_cgame`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_promo`
--
ALTER TABLE `detail_promo`
  ADD CONSTRAINT `detail_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_promo_ibfk_2` FOREIGN KEY (`id_cpromo`) REFERENCES `config_promo` (`id_cpromo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_role`
--
ALTER TABLE `detail_role`
  ADD CONSTRAINT `detail_role_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_role_ibfk_2` FOREIGN KEY (`id_rules`) REFERENCES `rules` (`id_rules`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_withdraw`
--
ALTER TABLE `detail_withdraw`
  ADD CONSTRAINT `detail_withdraw_ibfk_1` FOREIGN KEY (`id_withdraw`) REFERENCES `withdraw` (`id_withdraw`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_withdraw_ibfk_2` FOREIGN KEY (`id_pit`) REFERENCES `pit` (`id_pit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_withdraw_ibfk_3` FOREIGN KEY (`id_camber`) REFERENCES `camber` (`id_camber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `game_target_promo`
--
ALTER TABLE `game_target_promo`
  ADD CONSTRAINT `game_target_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `game_target_promo_ibfk_2` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `garden`
--
ALTER TABLE `garden`
  ADD CONSTRAINT `garden_ibfk_1` FOREIGN KEY (`id_lbucket`) REFERENCES `list_bucket` (`id_lbucket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `garden_ibfk_2` FOREIGN KEY (`id_lpot`) REFERENCES `list_pot` (`id_lpot`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list_bucket`
--
ALTER TABLE `list_bucket`
  ADD CONSTRAINT `list_bucket_ibfk_1` FOREIGN KEY (`id_bucket`) REFERENCES `bucket` (`id_bucket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list_bucket_ibfk_2` FOREIGN KEY (`id_camber`) REFERENCES `camber` (`id_camber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list_pot`
--
ALTER TABLE `list_pot`
  ADD CONSTRAINT `list_pot_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list_pot_ibfk_2` FOREIGN KEY (`id_pot`) REFERENCES `pot` (`id_pot`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pit`
--
ALTER TABLE `pit`
  ADD CONSTRAINT `pit_ibfk_1` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pit_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playtime`
--
ALTER TABLE `playtime`
  ADD CONSTRAINT `playtime_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playtime_ibfk_2` FOREIGN KEY (`id_dgame`) REFERENCES `detail_game` (`id_dgame`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pot_target_promo`
--
ALTER TABLE `pot_target_promo`
  ADD CONSTRAINT `pot_target_promo_ibfk_1` FOREIGN KEY (`id_pot`) REFERENCES `pot` (`id_pot`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pot_target_promo_ibfk_2` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provider_target_promo`
--
ALTER TABLE `provider_target_promo`
  ADD CONSTRAINT `provider_target_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `provider_target_promo_ibfk_2` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id_provider`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `type_bank_target_promo`
--
ALTER TABLE `type_bank_target_promo`
  ADD CONSTRAINT `type_bank_target_promo_ibfk_1` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type_bank_target_promo_ibfk_2` FOREIGN KEY (`id_tbank`) REFERENCES `type_bank` (`id_tbank`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
