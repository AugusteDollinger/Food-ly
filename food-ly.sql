-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 12 déc. 2024 à 22:03
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

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
('6758685b66562', 'Chili flakes'),
('675b260a1f731', 'Vinegar'),
('675b260a2010a', 'Cucumber'),
('675b260a2080b', 'Seaweed'),
('675b26c19b078', 'Vegetable'),
('675b26c19d435', 'Bean'),
('675b27165350c', 'Asparagus'),
('675b2716538b9', 'Lemon'),
('675b27165406c', 'Mango'),
('675b271654348', 'Tortilla'),
('675b271654a49', 'Potato'),
('675b271654d5c', 'Zucchini'),
('675b271655646', 'Breadcrumbs'),
('675b49c7622ec', 'Chickpea'),
('675b49c762d61', 'Coconut milk'),
('675b49c76452a', 'Spinach'),
('675b5831b7639', 'Fish'),
('675b5ba0a4c98', 'Mushroom'),
('675b5c1a59035', 'Beans'),
('675b5c6130e3a', 'Scallion');

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
('675865da93c2b', 'Thailand'),
('675b260a21556', 'Japan (inspired)'),
('675b26c19bd51', 'Multiple'),
('675b26c19dad9', 'Latin America'),
('675b271653b98', 'North American'),
('675b2716545e8', 'Mexican-inspired'),
('675b27165504b', 'Mediterranean'),
('675b2716558f2', 'American'),
('675b2716560ab', 'Italian-inspired'),
('675b49b09d329', 'Chinese'),
('675b49b0ab7bd', 'Japanese'),
('675b49b0acee4', 'Spanish'),
('675b49c7630c3', 'Indian-inspired'),
('675b49c764007', 'Mediterranean-inspired'),
('675b55d9aa4b0', 'Various'),
('675b5676e4b15', 'Many cultures'),
('675b576c68748', 'International'),
('675b576c6a7fb', 'Italian'),
('675b5c01d8ca1', 'Multiple origins'),
('675b5c1a5969b', 'Latin American');

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
  `HEALTH` varchar(300) NOT NULL,
  `ID_USER` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_PLAT`),
  KEY `ID_ORIGINE` (`ID_ORIGINE`),
  KEY `ID_TYPE` (`ID_TYPE`),
  KEY `ID_REGIME` (`ID_REGIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`ID_PLAT`, `LIBELLE_PLAT`, `ID_ORIGINE`, `ID_TYPE`, `ID_REGIME`, `NIVEAU_DIFFICULTE`, `INSTRUCTION`, `HEALTH`, `ID_USER`) VALUES
('675b26d34bb11', 'Fried Rice', '675858bc9dc8e', '67574fbd50796', '6756b3e323b95', 'Easy', 'Stir-fry rice with egg, vegetables, and soy sauce.  Add other desired ingredients like meat or shrimp.', 'Unhealthy, high in sodium and fat if cooked with excessive oil.', '675b2590ce7f0'),
('675b26d7eae2d', 'Sushi Rice', '67574fbd505ef', '675b26c19d0e8', '6756b3e323b95', 'Medium', 'Rinse rice until water runs clear. Cook rice according to package directions. Mix with vinegar, sugar, and salt.', 'Relatively healthy, provides carbohydrates. Health depends on sushi toppings.', '675b2590ce7f0'),
('675b271d89f2f', 'Pan-Seared Salmon with Asparagus', '675b271653b98', '67574fbd50796', '67586580cece4', 'Easy', 'Season salmon with salt and pepper. Sear skin-side down in olive oil until crispy. Flip and cook through. Roast asparagus separately. Serve salmon with asparagus and lemon wedges.', 'Healthy; high in protein and omega-3 fatty acids.', '675b270b20a2e');

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
('675b260a1e1f1', '6756b40a41ac5'),
('675b260a1e1f1', '6756b34fcf7b8'),
('675b260a1e1f1', '67574fbd4fe40'),
('675b260a1e1f1', '67574fbd5048b'),
('675b260a1f133', '6756b40a41ac5'),
('675b260a1f133', '6756b34fcf7b8'),
('675b260a1f133', '67574fbd50fba'),
('675b260a1f133', '675b260a1f731'),
('675b260a1fae2', '6756b40a41ac5'),
('675b260a1fae2', '6756b34fcf7b8'),
('675b260a1fae2', '67574fbd510f5'),
('675b260a1fae2', '675b260a2010a'),
('675b260a2044b', '6756b40a41ac5'),
('675b260a2044b', '6756b34fcf7b8'),
('675b260a2044b', '675b260a2080b'),
('675b260a2044b', '67580b238864c'),
('675b260a20dce', '6756b40a41ac5'),
('675b260a20dce', '6756b34fcf7b8'),
('675b260a20dce', '6758652ef383e'),
('675b260a20dce', '67585e79d9637'),
('675b263823db3', '6756b40a41ac5'),
('675b263823db3', '6756b34fcf7b8'),
('675b263823db3', '67574fbd4fe40'),
('675b263823db3', '67574fbd5048b'),
('675b26c19a6eb', '6756b34fcf7b8'),
('675b26c19a6eb', '67585e85f288c'),
('675b26c19a6eb', '675b26c19b078'),
('675b26c19a6eb', '67574fbd4fe40'),
('675b26c19b610', '6756b34fcf7b8'),
('675b26c19b610', '67585da285489'),
('675b26c19b610', '67574fbd5048b'),
('675b26c19b610', '67585df966263'),
('675b26c19bfcc', '6756b34fcf7b8'),
('675b26c19bfcc', '6756b3571ad5a'),
('675b26c19bfcc', '67580b238864c'),
('675b26c19bfcc', '67586580c6cad'),
('675b26c19c90e', '6756b34fcf7b8'),
('675b26c19c90e', '675b260a1f731'),
('675b26c19c90e', '67574fbd5048b'),
('675b26c19c90e', '67580b238864c'),
('675b26c19d231', '6756b34fcf7b8'),
('675b26c19d231', '675b26c19d435'),
('675b26c19d231', '67585e79d3f8c'),
('675b26c19d231', '675858bc8ca58'),
('675b26d34bb11', '6756b34fcf7b8'),
('675b26d34bb11', '67585e85f288c'),
('675b26d34bb11', '675b26c19b078'),
('675b26d34bb11', '67574fbd4fe40'),
('675b26d7eae2d', '6756b34fcf7b8'),
('675b26d7eae2d', '675b260a1f731'),
('675b26d7eae2d', '67574fbd5048b'),
('675b26d7eae2d', '67580b238864c'),
('675b271652f3d', '6756b40a41ac5'),
('675b271652f3d', '675b27165350c'),
('675b271652f3d', '675b2716538b9'),
('675b271653dd2', '6756b40a41ac5'),
('675b271653dd2', '675b27165406c'),
('675b271653dd2', '675b271654348'),
('675b2716547dc', '6756b40a41ac5'),
('675b2716547dc', '675b271654a49'),
('675b2716547dc', '675b271654d5c'),
('675b271655215', '6756b40a41ac5'),
('675b271655215', '67585e85f288c'),
('675b271655215', '675b271655646'),
('675b271655aae', '6756b40a41ac5'),
('675b271655aae', '67585da28d53e'),
('675b271655aae', '675866bf503ae'),
('675b271d89f2f', '6756b40a41ac5'),
('675b271d89f2f', '675b27165350c'),
('675b271d89f2f', '675b2716538b9'),
('675b49b084adf', '6756b34fcf7b8'),
('675b49b084adf', '67585e85f288c'),
('675b49b084adf', '675b26c19b078'),
('675b49b084adf', '67574fbd4fe40'),
('675b49b0a04de', '6756b34fcf7b8'),
('675b49b0a04de', '67585da285489'),
('675b49b0a04de', '67574fbd5048b'),
('675b49b0a04de', '67585df966263'),
('675b49b0a7c9f', '6756b34fcf7b8'),
('675b49b0a7c9f', '6756b40a41ac5'),
('675b49b0a7c9f', '67574fbd50fba'),
('675b49b0a7c9f', '67574fbd510f5'),
('675b49b0aba67', '6756b34fcf7b8'),
('675b49b0aba67', '6756b3571ad5a'),
('675b49b0aba67', '67580b238864c'),
('675b49b0aba67', '67586580c6cad'),
('675b49b0ac5c2', '6756b34fcf7b8'),
('675b49b0ac5c2', '67574fbd52bff'),
('675b49b0ac5c2', '67585ec2730e3'),
('675b49b0ac5c2', '67575365d8014'),
('675b49c7603f4', '675866bf4ce9c'),
('675b49c7603f4', '67585da28d53e'),
('675b49c7603f4', '675858bc8ca58'),
('675b49c7603f4', '675858bc8e227'),
('675b49c76161b', '67574fbd52bff'),
('675b49c76161b', '675b271654a49'),
('675b49c76161b', '67573feccb5cd'),
('675b49c76161b', '675858bc99497'),
('675b49c7621dd', '675b49c7622ec'),
('675b49c7621dd', '67585e79d3f8c'),
('675b49c7621dd', '675866bf4ce9c'),
('675b49c7621dd', '675b49c762d61'),
('675b49c76337f', '6758652ef383e'),
('675b49c76337f', '675b260a2010a'),
('675b49c76337f', '675866bf4ce9c'),
('675b49c76337f', '675b2716538b9'),
('675b49c764211', '67585e85f288c'),
('675b49c764211', '675b49c76452a'),
('675b49c764211', '67585e79d3f8c'),
('675b49c764211', '67585da285489'),
('675b4a2a18956', '6756b34fcf7b8'),
('675b4a2a18956', '67585e85f288c'),
('675b4a2a18956', '67585e79d3f8c'),
('675b4a2a18956', '67574fbd4fe40'),
('675b4a2a19c57', '6756b34fcf7b8'),
('675b4a2a19c57', '67585da285489'),
('675b4a2a19c57', '67574fbd5048b'),
('675b4a2a19c57', '67585df966263'),
('675b4a2a1a904', '6756b34fcf7b8'),
('675b4a2a1a904', '6756b3571ad5a'),
('675b4a2a1a904', '67580b238864c'),
('675b4a2a1a904', '67585da285489'),
('675b4a2a1b3f9', '6756b34fcf7b8'),
('675b4a2a1b3f9', '675b260a2080b'),
('675b4a2a1b3f9', '6756b40a41ac5'),
('675b4a2a1b3f9', '675b260a1f731'),
('675b4a2a1edab', '6756b34fcf7b8'),
('675b4a2a1edab', '67574fbd52bff'),
('675b4a2a1edab', '67585ec2730e3'),
('675b4a2a1edab', '675866bf4ce9c'),
('675b534b40ad8', '6756b34fcf7b8'),
('675b534b40ad8', '67585e85f288c'),
('675b534b40ad8', '675b26c19b078'),
('675b534b40ad8', '67574fbd4fe40'),
('675b534b45fc4', '6756b34fcf7b8'),
('675b534b45fc4', '67585da285489'),
('675b534b45fc4', '67574fbd5048b'),
('675b534b45fc4', '67585df966263'),
('675b534b48eeb', '6756b34fcf7b8'),
('675b534b48eeb', '6756b40a41ac5'),
('675b534b48eeb', '67574fbd50fba'),
('675b534b48eeb', '67574fbd510f5'),
('675b534b49b0e', '6756b34fcf7b8'),
('675b534b49b0e', '67574fbd52bff'),
('675b534b49b0e', '67573feccb5cd'),
('675b534b49b0e', '67574fbd4fe40'),
('675b534b4d549', '6756b34fcf7b8'),
('675b534b4d549', '67585da285489'),
('675b534b4d549', '67585df966263'),
('675b534b4d549', '67574fbd5048b'),
('675b55d9a1946', '6756b34fcf7b8'),
('675b55d9a1946', '67585e85f288c'),
('675b55d9a1946', '675b26c19b078'),
('675b55d9a1946', '67574fbd4fe40'),
('675b55d9a9d16', '6756b34fcf7b8'),
('675b55d9a9d16', '67585da285489'),
('675b55d9a9d16', '67574fbd5048b'),
('675b55d9a9d16', '67585df966263'),
('675b55d9aa68a', '6756b34fcf7b8'),
('675b55d9aa68a', '67585e85ef125'),
('675b55d9aa68a', '67573feccb5cd'),
('675b55d9aa68a', '67574fbd52bff'),
('675b55d9aae8b', '6756b34fcf7b8'),
('675b55d9aae8b', '67574fbd50fba'),
('675b55d9aae8b', '6756b40a41ac5'),
('675b55d9aae8b', '67574fbd510f5'),
('675b55d9ab6fa', '6756b34fcf7b8'),
('675b55d9ab6fa', '67585ec27074e'),
('675b55d9ab6fa', '67585ec2730e3'),
('675b55d9ab6fa', '675866bf4ce9c'),
('675b5676dec32', '6756b34fcf7b8'),
('675b5676dec32', '67585e85f288c'),
('675b5676dec32', '675b26c19b078'),
('675b5676dec32', '67574fbd4fe40'),
('675b5676e423a', '6756b34fcf7b8'),
('675b5676e423a', '67585da285489'),
('675b5676e423a', '67574fbd5048b'),
('675b5676e423a', '67585df966263'),
('675b5676e4e0e', '6756b34fcf7b8'),
('675b5676e4e0e', '6756b40a41ac5'),
('675b5676e4e0e', '67574fbd50fba'),
('675b5676e4e0e', '67574fbd510f5'),
('675b5676e57a2', '6756b34fcf7b8'),
('675b5676e57a2', '6756b3571ad5a'),
('675b5676e57a2', '67586580c6cad'),
('675b5676e57a2', '67574fbd52bff'),
('675b5676e6110', '6756b34fcf7b8'),
('675b5676e6110', '67585ec2730e3'),
('675b5676e6110', '67574fbd52bff'),
('675b5676e6110', '67585ec27074e'),
('675b56880d2e5', '6756b34fcf7b8'),
('675b56880d2e5', '67585e85f288c'),
('675b56880d2e5', '67574fbd4fe40'),
('675b56880d2e5', '675b26c19b078'),
('675b56880e30f', '6756b34fcf7b8'),
('675b56880e30f', '67585da285489'),
('675b56880e30f', '67574fbd5048b'),
('675b56880e30f', '67585df966263'),
('675b56880eced', '6756b34fcf7b8'),
('675b56880eced', '6756b3571ad5a'),
('675b56880eced', '67580b238864c'),
('675b56880eced', '67585da285489'),
('675b56880f694', '6756b34fcf7b8'),
('675b56880f694', '6756b40a41ac5'),
('675b56880f694', '67574fbd50fba'),
('675b56880f694', '67574fbd510f5'),
('675b56881006a', '6756b34fcf7b8'),
('675b56881006a', '67574fbd52bff'),
('675b56881006a', '67585ec2730e3'),
('675b56881006a', '67585ec27074e'),
('675b569539d9e', '6756b34fcf7b8'),
('675b569539d9e', '67585e85f288c'),
('675b569539d9e', '675b26c19b078'),
('675b569539d9e', '67574fbd4fe40'),
('675b56953aab7', '6756b34fcf7b8'),
('675b56953aab7', '67585da285489'),
('675b56953aab7', '67574fbd5048b'),
('675b56953aab7', '67585df966263'),
('675b56953b385', '6756b34fcf7b8'),
('675b56953b385', '6756b40a41ac5'),
('675b56953b385', '67574fbd50fba'),
('675b56953b385', '67574fbd510f5'),
('675b56953bd2f', '6756b34fcf7b8'),
('675b56953bd2f', '6756b3571ad5a'),
('675b56953bd2f', '67580b238864c'),
('675b56953bd2f', '67586580c6cad'),
('675b56953c615', '6756b34fcf7b8'),
('675b56953c615', '67574fbd52bff'),
('675b56953c615', '67585ec2730e3'),
('675b56953c615', '67585ec27074e'),
('675b576c670cd', '6756b34fcf7b8'),
('675b576c670cd', '67585e85f288c'),
('675b576c670cd', '675b26c19b078'),
('675b576c670cd', '67574fbd4fe40'),
('675b576c67db7', '6756b34fcf7b8'),
('675b576c67db7', '67585da285489'),
('675b576c67db7', '67574fbd5048b'),
('675b576c67db7', '67585df966263'),
('675b576c6891f', '6756b34fcf7b8'),
('675b576c6891f', '675b260a2010a'),
('675b576c6891f', '675866bf4ce9c'),
('675b576c6891f', '675858bc8e227'),
('675b576c691a7', '6756b34fcf7b8'),
('675b576c691a7', '6756b40a41ac5'),
('675b576c691a7', '67574fbd50fba'),
('675b576c691a7', '67574fbd510f5'),
('675b576c69a64', '6756b34fcf7b8'),
('675b576c69a64', '67585e85ef125'),
('675b576c69a64', '67585e4c96018'),
('675b576c69a64', '67585e79d3f8c'),
('675b5831b4f9a', '6756b34fcf7b8'),
('675b5831b4f9a', '67585e85f288c'),
('675b5831b4f9a', '675b26c19b078'),
('675b5831b4f9a', '67574fbd4fe40'),
('675b5831b6025', '6756b34fcf7b8'),
('675b5831b6025', '67585da285489'),
('675b5831b6025', '67574fbd5048b'),
('675b5831b6025', '67585df966263'),
('675b5831b68dc', '6756b34fcf7b8'),
('675b5831b68dc', '6756b3571ad5a'),
('675b5831b68dc', '67580b238864c'),
('675b5831b68dc', '67586580c6cad'),
('675b5831b7184', '6756b34fcf7b8'),
('675b5831b7184', '675b260a2080b'),
('675b5831b7184', '675b5831b7639'),
('675b5831b7184', '675b260a1f731'),
('675b5831b7b84', '6756b34fcf7b8'),
('675b5831b7b84', '675b260a2010a'),
('675b5831b7b84', '675866bf4ce9c'),
('675b5831b7b84', '675858bc8e227'),
('675b594f34db3', '6756b34fcf7b8'),
('675b594f34db3', '67585e85f288c'),
('675b594f34db3', '67573feccb5cd'),
('675b594f34db3', '67574fbd4fe40'),
('675b594f36e8a', '6756b34fcf7b8'),
('675b594f36e8a', '67585da285489'),
('675b594f36e8a', '67574fbd5048b'),
('675b594f36e8a', '67585df966263'),
('675b594f378d2', '6756b34fcf7b8'),
('675b594f378d2', '6756b40a41ac5'),
('675b594f378d2', '67574fbd50fba'),
('675b594f378d2', '67574fbd510f5'),
('675b594f3831e', '6756b34fcf7b8'),
('675b594f3831e', '6756b3571ad5a'),
('675b594f3831e', '67580b238864c'),
('675b594f3831e', '67586580c6cad'),
('675b594f38ce7', '6756b34fcf7b8'),
('675b594f38ce7', '67575365d8014'),
('675b594f38ce7', '67585ec2730e3'),
('675b594f38ce7', '67574fbd52bff'),
('675b5abc2c637', '6756b34fcf7b8'),
('675b5abc2c637', '67585e85f288c'),
('675b5abc2c637', '675b26c19b078'),
('675b5abc2c637', '67574fbd4fe40'),
('675b5abc2d86a', '6756b34fcf7b8'),
('675b5abc2d86a', '67585da285489'),
('675b5abc2d86a', '67574fbd5048b'),
('675b5abc2d86a', '67585df966263'),
('675b5abc2e3e3', '6756b34fcf7b8'),
('675b5abc2e3e3', '6756b40a41ac5'),
('675b5abc2e3e3', '67574fbd50fba'),
('675b5abc2e3e3', '67574fbd510f5'),
('675b5abc2edc8', '6756b34fcf7b8'),
('675b5abc2edc8', '6756b3571ad5a'),
('675b5abc2edc8', '67580b238864c'),
('675b5abc2edc8', '67586580c6cad'),
('675b5abc2f7bb', '6756b34fcf7b8'),
('675b5abc2f7bb', '67585ec2730e3'),
('675b5abc2f7bb', '67575365d8014'),
('675b5abc2f7bb', '67574fbd52bff'),
('675b5b59d054f', '6756b40a41ac5'),
('675b5b59d054f', '675b27165350c'),
('675b5b59d054f', '675b2716538b9'),
('675b5b59d112e', '6756b40a41ac5'),
('675b5b59d112e', '675b27165406c'),
('675b5b59d112e', '675b271654348'),
('675b5b59d180a', '6756b40a41ac5'),
('675b5b59d180a', '675b271654a49'),
('675b5b59d180a', '675858bc99497'),
('675b5b59d1f39', '6756b40a41ac5'),
('675b5b59d1f39', '67585e85f288c'),
('675b5b59d1f39', '675b271655646'),
('675b5b59d25c0', '6756b40a41ac5'),
('675b5b59d25c0', '67585da28d53e'),
('675b5b59d25c0', '675866bf503ae'),
('675b5ba09dfde', '6756b34fcf7b8'),
('675b5ba09dfde', '67585e85f288c'),
('675b5ba09dfde', '675b26c19b078'),
('675b5ba09dfde', '67574fbd4fe40'),
('675b5ba09eded', '6756b34fcf7b8'),
('675b5ba09eded', '67585da285489'),
('675b5ba09eded', '67574fbd5048b'),
('675b5ba09eded', '67585df966263'),
('675b5ba09f6e3', '6756b34fcf7b8'),
('675b5ba09f6e3', '6756b40a41ac5'),
('675b5ba09f6e3', '67574fbd50fba'),
('675b5ba09f6e3', '67574fbd510f5'),
('675b5ba0a3df3', '6756b34fcf7b8'),
('675b5ba0a3df3', '675b260a2010a'),
('675b5ba0a3df3', '675866bf4ce9c'),
('675b5ba0a3df3', '67585e79d3f8c'),
('675b5ba0a46b4', '6756b34fcf7b8'),
('675b5ba0a46b4', '67585e85ef125'),
('675b5ba0a46b4', '67585e4c96018'),
('675b5ba0a46b4', '675b5ba0a4c98'),
('675b5c01d7723', '6756b34fcf7b8'),
('675b5c01d7723', '67585e85f288c'),
('675b5c01d7723', '675b26c19b078'),
('675b5c01d7723', '67574fbd4fe40'),
('675b5c01d8449', '6756b34fcf7b8'),
('675b5c01d8449', '67585da285489'),
('675b5c01d8449', '67574fbd5048b'),
('675b5c01d8449', '67585df966263'),
('675b5c01d8e3b', '6756b34fcf7b8'),
('675b5c01d8e3b', '6756b40a41ac5'),
('675b5c01d8e3b', '67574fbd50fba'),
('675b5c01d8e3b', '67574fbd510f5'),
('675b5c01d964b', '6756b34fcf7b8'),
('675b5c01d964b', '6756b3571ad5a'),
('675b5c01d964b', '67580b238864c'),
('675b5c01d964b', '67586580c6cad'),
('675b5c01d9e01', '6756b34fcf7b8'),
('675b5c01d9e01', '67574fbd52bff'),
('675b5c01d9e01', '67585ec2730e3'),
('675b5c01d9e01', '67585ec27074e'),
('675b5c09d9c9c', '6756b34fcf7b8'),
('675b5c09d9c9c', '67585e85f288c'),
('675b5c09d9c9c', '675b26c19b078'),
('675b5c09d9c9c', '67574fbd4fe40'),
('675b5c09da94e', '6756b34fcf7b8'),
('675b5c09da94e', '67585da285489'),
('675b5c09da94e', '67574fbd5048b'),
('675b5c09da94e', '67585df966263'),
('675b5c09db254', '6756b34fcf7b8'),
('675b5c09db254', '6756b40a41ac5'),
('675b5c09db254', '67574fbd50fba'),
('675b5c09db254', '67574fbd510f5'),
('675b5c09dba45', '6756b34fcf7b8'),
('675b5c09dba45', '6756b3571ad5a'),
('675b5c09dba45', '67586580c6cad'),
('675b5c09dba45', '67574fbd52bff'),
('675b5c09dc276', '6756b34fcf7b8'),
('675b5c09dc276', '67585ec27074e'),
('675b5c09dc276', '67585ec2730e3'),
('675b5c09dc276', '67586580d8cb9'),
('675b5c1a56546', '67574fbd52bff'),
('675b5c1a56546', '6756b34fcf7b8'),
('675b5c1a56546', '675b26c19b078'),
('675b5c1a56546', '67585e85ef125'),
('675b5c1a57299', '6756b34fcf7b8'),
('675b5c1a57299', '67585da285489'),
('675b5c1a57299', '67574fbd5048b'),
('675b5c1a57299', '67585df966263'),
('675b5c1a57ba6', '6756b34fcf7b8'),
('675b5c1a57ba6', '67585e85f288c'),
('675b5c1a57ba6', '67574fbd4fe40'),
('675b5c1a57ba6', '675b26c19b078'),
('675b5c1a58480', '6756b34fcf7b8'),
('675b5c1a58480', '675b260a2080b'),
('675b5c1a58480', '675b5831b7639'),
('675b5c1a58480', '67574fbd510f5'),
('675b5c1a58dee', '6756b34fcf7b8'),
('675b5c1a58dee', '675b5c1a59035'),
('675b5c1a58dee', '67585e79d3f8c'),
('675b5c1a58dee', '675858bc8ca58'),
('675b5c25753cf', '6756b34fcf7b8'),
('675b5c25753cf', '67585e85f288c'),
('675b5c25753cf', '675b26c19b078'),
('675b5c25753cf', '67574fbd4fe40'),
('675b5c257610d', '6756b34fcf7b8'),
('675b5c257610d', '67585da285489'),
('675b5c257610d', '67574fbd5048b'),
('675b5c257610d', '67585df966263'),
('675b5c2576ae0', '6756b34fcf7b8'),
('675b5c2576ae0', '6756b3571ad5a'),
('675b5c2576ae0', '67580b238864c'),
('675b5c2576ae0', '67586580c6cad'),
('675b5c2577340', '6756b34fcf7b8'),
('675b5c2577340', '6756b40a41ac5'),
('675b5c2577340', '67574fbd50fba'),
('675b5c2577340', '67574fbd510f5'),
('675b5c2577b97', '6756b34fcf7b8'),
('675b5c2577b97', '67585ec27074e'),
('675b5c2577b97', '67585ec2730e3'),
('675b5c2577b97', '67574fbd52bff'),
('675b5c612e018', '6756b34fcf7b8'),
('675b5c612e018', '67585e85f288c'),
('675b5c612e018', '675b26c19b078'),
('675b5c612e018', '67574fbd4fe40'),
('675b5c612ed7e', '6756b34fcf7b8'),
('675b5c612ed7e', '67585da285489'),
('675b5c612ed7e', '67574fbd5048b'),
('675b5c612ed7e', '67585df966263'),
('675b5c612f72a', '6756b34fcf7b8'),
('675b5c612f72a', '67574fbd52bff'),
('675b5c612f72a', '67574fbd4fe40'),
('675b5c612f72a', '67574fbd50fba'),
('675b5c6130065', '6756b34fcf7b8'),
('675b5c6130065', '6756b40a41ac5'),
('675b5c6130065', '67574fbd50fba'),
('675b5c6130065', '67574fbd510f5'),
('675b5c61308a2', '6756b34fcf7b8'),
('675b5c61308a2', '6756b3571ad5a'),
('675b5c61308a2', '67586580c6cad'),
('675b5c61308a2', '675b5c6130e3a'),
('675b5d927a24f', '6756b34fcf7b8'),
('675b5d927a24f', '67585e85f288c'),
('675b5d927a24f', '67585e79d3f8c'),
('675b5d927a24f', '67574fbd4fe40'),
('675b5d927b00c', '6756b34fcf7b8'),
('675b5d927b00c', '67585da285489'),
('675b5d927b00c', '67574fbd5048b'),
('675b5d927b00c', '67585df966263'),
('675b5d927bb39', '6756b34fcf7b8'),
('675b5d927bb39', '67574fbd52bff'),
('675b5d927bb39', '67574fbd4fe40'),
('675b5d927bb39', '67574fbd50fba'),
('675b5d927c49b', '6756b34fcf7b8'),
('675b5d927c49b', '6756b40a41ac5'),
('675b5d927c49b', '67574fbd50fba'),
('675b5d927c49b', '675b260a1f731'),
('675b5d927d0b2', '6756b34fcf7b8'),
('675b5d927d0b2', '67585ec2730e3'),
('675b5d927d0b2', '67574fbd52bff'),
('675b5d927d0b2', '67575365d8014');

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
('675867fc59359', 'Not specified'),
('675b49b09d558', 'Can be adapted; vegetarian opt'),
('675b49b0a63ce', 'Can be adapted for various die'),
('675b49b0ab975', 'Can be adapted to be vegetaria'),
('675b49b0ac4a0', 'Easily adaptable for various d'),
('675b49b0ad099', 'Can be adapted to various diet'),
('675b49c7620a5', 'Balanced'),
('675b4a2a19ada', 'Can be adapted to various diet'),
('675b4a2a1a811', 'Can be adapted to various diet'),
('675b4a2a1b2fd', 'Can be adapted to various diet'),
('675b4a2a1ec89', 'Can be adapted to various diet'),
('675b4a2a1f867', 'Can be adapted to various diet'),
('675b5676e202e', 'Can be adapted, vegetarian opt'),
('675b5676e4cf4', 'Can be adapted for various die'),
('675b5676e56b2', 'Can be adapted, vegetarian/veg'),
('675b5676e601a', 'Generally healthy'),
('675b5676e6983', 'Can be adapted, vegetarian opt'),
('675b56880e1e4', 'Can be adapted to various diet'),
('675b56880ec10', 'Can be adapted to various diet'),
('675b56880f595', 'Can be adapted to various diet'),
('675b56880ff8b', 'Can be adapted to various diet'),
('675b5688108d1', 'Can be adapted to various diet'),
('675b5831b5f3c', 'Flexible'),
('675b594f36d20', 'Can be adapted to various diet'),
('675b594f377c9', 'Can be adapted to various diet'),
('675b594f38229', 'Can be adapted to various diet'),
('675b594f38bef', 'Can be adapted to various diet'),
('675b594f39643', 'Can be adapted to various diet'),
('675b5abc2d71f', 'Can be adapted, vegetarian opt'),
('675b5abc2e22c', 'Can be adapted for various die'),
('675b5abc2ecef', 'Can be adapted, vegetarian opt'),
('675b5abc2f6e4', 'Can be easily adapted for vari'),
('675b5abc30019', 'Can be adapted, vegetarian opt'),
('675b5ba09ece5', 'Can be adapted to various diet'),
('675b5ba09f5f2', 'Can be adapted to various diet'),
('675b5ba0a3d07', 'Can be adapted to various diet'),
('675b5ba0a45e6', 'Can be adapted to various diet'),
('675b5ba0a506a', 'Can be adapted to various diet'),
('675b5c1a571bc', 'Regular'),
('675b5d927aefa', 'Can be adapted to various diet'),
('675b5d927ba53', 'Can be adapted to various diet'),
('675b5d927c3c3', 'Can be adapted to various diet'),
('675b5d927cfd0', 'Can be adapted to various diet'),
('675b5d927d937', 'Can be adapted to various diet');

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
('675867fc709d5', 'Mexican'),
('675b260a20c8b', 'Snack'),
('675b260a216b1', 'Salad'),
('675b26c19be7e', 'Dessert'),
('675b26c19d0e8', 'Side Dish'),
('675b49b0ac32b', 'Breakfast/Side'),
('675b5abc2f576', 'Breakfast/Side Dish');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` varchar(20) NOT NULL,
  `USER_NAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ADMIN` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID_USER`, `USER_NAME`, `PASSWORD`, `ADMIN`) VALUES
('675b2590ce7f0', 'Auguste', '$2y$10$arW6DKOBOA5rHt7uiB.NPeSAK.Bq1hn21oH.S25Vh4lDqgamMWpXu', 0),
('675b270b20a2e', 'Paul-alan', '$2y$10$GSDogFHCBEzetN91ZmwSsu.Le8rQRVnx8pma1EFCnbTW.OSpbFxHK', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
