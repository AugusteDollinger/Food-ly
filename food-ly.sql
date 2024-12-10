-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 déc. 2024 à 16:23
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `food-ly`
--

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `ID_INGREDIENT` varchar(20) NOT NULL,
  `LIBELLE_INGREDIENT` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_INGREDIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`ID_INGREDIENT`, `LIBELLE_INGREDIENT`) VALUES
('6756b34fcf7b8', 'Rice'),
('6756b3539bb92', 'Flour'),
('6756b3571ad5a', 'Water'),
('6756b40a41ac5', 'Salmon'),
('67573fe7210ee', 'Beetroot'),
('67573feccb5cd', 'Carrot'),
('675740f7d1892', 'Ham'),
('675740fd34091', 'Cheese '),
('6757410a67dd9', 'Tomatoes '),
('67574fbd4fe40', 'Soy Sauce'),
('67574fbd502f3', 'Mirin'),
('67574fbd5048b', 'Sugar'),
('67574fbd50dee', 'Sushi Rice'),
('67574fbd50fba', 'Nori'),
('67574fbd510f5', 'Avocado'),
('67574fbd51670', 'Miso Paste'),
('67574fbd517b0', 'Dashi'),
('67574fbd518fa', 'Tofu'),
('67574fbd51a6e', 'Wakame Seaweed'),
('67574fbd52047', 'Japanese Curry Roux'),
('67574fbd521fc', 'Beef'),
('67574fbd523e0', 'Potatoes'),
('67574fbd52582', 'Carrots'),
('67574fbd52bff', 'Chicken'),
('67574fbd52d94', 'Eggs'),
('675752f9aa17b', 'Curry Roux'),
('67575326f33eb', 'Cabbage'),
('67575326f39f3', 'Tenkasu (Tempura scraps)'),
('67575365d77a0', 'Sake'),
('67575365d8014', 'Shrimp'),
('67575365d833b', 'Tempura Batter'),
('67575365d8677', 'Vegetable Oil'),
('67580b238864c', 'Salt'),
('67580b238d23f', 'Soba Noodles'),
('67580b23a7ce6', 'Wasabi'),
('67580b23b3998', 'Yakisoba Noodles'),
('67580b23b71ab', 'Worcestershire Sauce'),
('675858bc7d9d5', 'Spaghetti'),
('675858bc8ca58', 'Garlic'),
('675858bc8e227', 'Olive Oil'),
('675858bc902cd', 'Red Pepper Flakes'),
('675858bc99497', 'Broccoli'),
('675858bca1483', 'Pork'),
('675858bca3eef', 'Pineapple'),
('675858bca5c12', 'Tortillas'),
('675858bca7b37', 'Cilantro'),
('675858bcb4923', 'Onions'),
('675858bcb6f4a', 'Beef Broth'),
('675858bcb930f', 'Bread'),
('675858bcbb84d', 'Gruyere Cheese'),
('67585da2801ec', 'Vegetables'),
('67585da285489', 'Milk'),
('67585da286fad', 'Baking powder'),
('67585da28d53e', 'Pasta'),
('67585da2925f5', 'Tomatoes'),
('67585da2a2de0', 'Butter'),
('67585df966263', 'Cinnamon'),
('67585e4c96018', 'Cheese'),
('67585e4c99366', 'None'),
('67585e4ca5d3a', 'Peanut Butter'),
('67585e4ca8285', 'Jelly'),
('67585e79cdce2', 'Marinated Pork'),
('67585e79d3f8c', 'Onion'),
('67585e79d695e', 'Tuna'),
('67585e79d9637', 'Mayonnaise'),
('67585e85e30bc', 'Ketchup'),
('67585e85ed268', 'Ramen Noodles'),
('67585e85ef125', 'Broth'),
('67585e85f288c', 'Egg'),
('67585e8604cb4', 'Tempura Flour'),
('67585e8607161', 'Ice Water'),
('67585e860ebaf', 'Okonomiyaki Sauce'),
('67585ec25df8b', 'Pancetta'),
('67585ec260066', 'Pecorino Romano cheese'),
('67585ec263df7', 'Yogurt'),
('67585ec2668ad', 'Spices'),
('67585ec27074e', 'Seafood'),
('67585ec2730e3', 'Saffron'),
('6758652edb1d6', 'Nori Seaweed'),
('6758652ee3340', 'Chicken Breast'),
('6758652ef179e', 'Ground Beef'),
('6758652ef383e', 'Lettuce'),
('6758652f014ca', 'Tortilla Chips'),
('67586580c6cad', 'Ginger'),
('67586580d8cb9', 'Chicken Broth'),
('675865a30978e', 'Red Lentils'),
('675865da8d1ab', 'Rice Noodles'),
('675865da9030e', 'Tamarind Paste'),
('675865da91f3d', 'Bean Sprouts'),
('675866bf4ce9c', 'Tomato'),
('675866bf503ae', 'Cream'),
('67586760e89bc', 'Pecorino Romano'),
('675867fc6c194', 'Corn Tortillas'),
('6758685b66562', 'Chili flakes');

-- --------------------------------------------------------

--
-- Structure de la table `origine`
--

DROP TABLE IF EXISTS `origine`;
CREATE TABLE IF NOT EXISTS `origine` (
  `ID_ORIGINE` varchar(20) NOT NULL,
  `LIBELLE_ORIGINE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_ORIGINE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `origine`
--

INSERT INTO `origine` (`ID_ORIGINE`, `LIBELLE_ORIGINE`) VALUES
('67574009b5050', 'No specific origin'),
('67574fbd505ef', 'Japan'),
('675858bc920b1', 'Italy'),
('675858bc9dc8e', 'China'),
('675858bca9c5b', 'Mexico'),
('675858bcbd940', 'France'),
('67585da289475', 'Global'),
('67585e79ddf34', 'None'),
('67585ec268294', 'India'),
('67585ec274892', 'Spain'),
('675865da93c2b', 'Thailand');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

DROP TABLE IF EXISTS `plat`;
CREATE TABLE IF NOT EXISTS `plat` (
  `ID_PLAT` varchar(20) NOT NULL,
  `LIBELLE_PLAT` varchar(50) NOT NULL,
  `ID_ORIGINE` varchar(20) NOT NULL,
  `ID_TYPE` varchar(20) NOT NULL,
  `ID_REGIME` varchar(20) NOT NULL,
  `NIVEAU_DIFFICULTE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `INSTRUCTION` varchar(400) NOT NULL,
  PRIMARY KEY (`ID_PLAT`),
  KEY `ID_ORIGINE` (`ID_ORIGINE`),
  KEY `ID_TYPE` (`ID_TYPE`),
  KEY `ID_REGIME` (`ID_REGIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`ID_PLAT`, `LIBELLE_PLAT`, `ID_ORIGINE`, `ID_TYPE`, `ID_REGIME`, `NIVEAU_DIFFICULTE`, `INSTRUCTION`) VALUES
('6758694111d8f', 'Spaghetti Aglio e Olio', '675858bc920b1', '675858bc94f18', '6757402a1f3a4', 'Easy', 'Cook spaghetti. Sauté garlic in olive oil. Toss with pasta, red pepper flakes, and parsley. Season with salt and pepper.'),
('67586a5e292bf', 'Chicken Stir-Fry', '675858bc9dc8e', '675858bc9e761', '67586580c91c4', 'Medium', 'Stir-fry chicken. Add broccoli and other veggies.  Pour in soy sauce and ginger. Serve with rice.');

-- --------------------------------------------------------

--
-- Structure de la table `plat_ingredient`
--

DROP TABLE IF EXISTS `plat_ingredient`;
CREATE TABLE IF NOT EXISTS `plat_ingredient` (
  `ID_PLAT` varchar(20) NOT NULL,
  `ID_INGREDIENT` varchar(20) NOT NULL,
  KEY `ID_PLAT` (`ID_PLAT`),
  KEY `ID_INGREDIENT` (`ID_INGREDIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `plat_ingredient`
--

INSERT INTO `plat_ingredient` (`ID_PLAT`, `ID_INGREDIENT`) VALUES
('67586926c0256', '6756b34fcf7b8'),
('67586926c0256', '6756b40a41ac5'),
('67586926c0256', '67574fbd50fba'),
('6758693fbca1a', '675858bc7d9d5'),
('6758693fbca1a', '675858bc8ca58'),
('6758693fbca1a', '675858bc8e227'),
('6758693fbca1a', '675858bc902cd'),
('6758693fc37ed', '6758652ee3340'),
('6758693fc37ed', '675858bc99497'),
('6758693fc37ed', '67574fbd4fe40'),
('6758693fc37ed', '67586580c6cad'),
('6758693fc8be2', '675858bca1483'),
('6758693fc8be2', '675858bca3eef'),
('6758693fc8be2', '675858bca5c12'),
('6758693fc8be2', '67585e79d3f8c'),
('6758693fcc47d', '67574fbd50dee'),
('6758693fcc47d', '6756b40a41ac5'),
('6758693fcc47d', '67574fbd50fba'),
('6758693fcc47d', '67574fbd510f5'),
('6758693fd0146', '67574fbd52bff'),
('6758693fd0146', '67585ec263df7'),
('6758693fd0146', '67585da2925f5'),
('6758693fd0146', '67585ec2668ad'),
('6758694111d8f', '675858bc7d9d5'),
('6758694111d8f', '675858bc8ca58'),
('6758694111d8f', '675858bc8e227'),
('6758694111d8f', '675858bc902cd'),
('67586a5e292bf', '6758652ee3340'),
('67586a5e292bf', '675858bc99497'),
('67586a5e292bf', '67574fbd4fe40'),
('67586a5e292bf', '67586580c6cad');

-- --------------------------------------------------------

--
-- Structure de la table `regime`
--

DROP TABLE IF EXISTS `regime`;
CREATE TABLE IF NOT EXISTS `regime` (
  `ID_REGIME` varchar(20) NOT NULL,
  `LIBELLE_REGIME` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_REGIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `regime`
--

INSERT INTO `regime` (`ID_REGIME`, `LIBELLE_REGIME`) VALUES
('6756b3e323b95', 'No specific diet'),
('6757402a1f3a4', 'vegetarian'),
('675858bc9f444', 'Non-vegetarian'),
('675858bcb31ee', 'Can be vegetarian/non-vegetari'),
('67585df956a2f', 'None'),
('6758652ee10cd', 'Can be adapted'),
('6758652eef681', 'Not Vegetarian'),
('67586580c91c4', 'Gluten-Free'),
('67586580cece4', 'Pescatarian'),
('675865a308692', 'Meat'),
('6758666762552', 'Meat/Seafood'),
('675867cf1160f', 'Can be vegetarian or non-veget'),
('675867fc59359', 'Not specified');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `ID_TYPE` varchar(20) NOT NULL,
  `LIBELLE_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`ID_TYPE`, `LIBELLE_TYPE`) VALUES
('67574fbd50796', 'Main Course'),
('67574fbd5128e', 'Appetizer'),
('67574fbd51c02', 'Soup'),
('675858bc94f18', 'Pasta'),
('675858bc9e761', 'Stir-fry'),
('675858bcaa8c5', 'Tacos'),
('675858bcb21c1', 'Rice dish'),
('67585da28a716', 'Breakfast'),
('67585da2a58f2', 'Dessert/Breakfast'),
('67585e4c9b1b2', 'Sandwich'),
('6758652ee00e6', 'Appetizer/Main Course'),
('675866bf550f7', 'Curry'),
('675866ec2bbcf', 'Japanese'),
('675867fc64ab9', 'Seafood'),
('675867fc6a274', 'Noodle'),
('675867fc709d5', 'Mexican');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
