-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 10:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `im_cooked`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL,
  `company_name` text NOT NULL,
  `company_address` text NOT NULL,
  `company_telephone` text NOT NULL,
  `company_email` text NOT NULL,
  `owner_id` bigint(11) DEFAULT NULL,
  `contact_id` bigint(11) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_address`, `company_telephone`, `company_email`, `owner_id`, `contact_id`, `isActive`) VALUES
(1, 'Innovateurs Tech SARL', '123 Boulevard du Silicon 75001 Paris', '+33 1 23 45 67 89', 'info@innovateurstech.fr', 1, 1, 0),
(2, 'Solutions Vertes SAS', '456 Parc Ã‰co 69002 Lyon', '+33 4 56 78 90 12', 'contact@solutionsvertes.fr', 7, 5, 1),
(3, 'Designs Urbains SARL', '789 Avenue MÃ©tropolitaine 13001 Marseille', '+33 4 12 34 56 78', 'support@designsurbains.fr', 3, 3, 0),
(4, 'Cuisine Innovante SARL', '22 Rue de la Cuisine 75005 Paris', '+33 1 40 20 30 40', 'info@cuisineinnovante.fr', 2, 7, 0),
(5, 'Ã‰nergies Renouvelables SAS', '15 Chemin Vert 31000 Toulouse', '+33 5 61 23 45 67', 'contact@energiesrenouvelables.fr', 7, 2, 1),
(6, 'Technologie AvancÃ©e SARL', '9 Rue de la Science 59800 Lille', '+33 3 20 15 25 35', 'support@technologieavancee.fr', 4, 6, 0),
(7, 'Artisanat Moderne SAS', '28 Avenue de l\'Artisanat 67000 Strasbourg', '+33 3 88 10 20 30', 'info@artisanatmoderne.fr', 5, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `mobile_number` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mobile_number`, `email`) VALUES
(1, 'Bob Martin', '+33 6 98 76 54 32', 'bob.martin@innovateurstech.fr'),
(2, 'Tom Dubois', '+33 6 87 65 43 21', 'tom.dubois@solutionsvertes.fr'),
(3, 'Emily Moreau', '+33 6 54 32 10 98', 'emily.moreau@designsurbains.fr'),
(4, 'Chloe Dubois', '+33 6 55 44 33 22', 'chloe.dubois@cuisineinnovante.fr'),
(5, 'Paul Leroy', '+33 6 66 77 88 99', 'paul.leroy@energiesrenouvelables.fr'),
(6, 'Isabelle Thomas', '+33 6 44 55 66 77', 'isabelle.thomas@technologieavancee.fr'),
(7, 'Julien Rousseau', '+33 6 77 66 55 44', 'julien.rousseau@artisanatmoderne.fr');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `mobile_number` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `mobile_number`, `email`) VALUES
(1, 'Alice Dupont', '+33 6 12 34 56 78', 'alice.dupont@innovateurstech.fr'),
(2, 'Sarah Lefevre', '+33 6 23 45 67 89', 'sarah.lefevre@solutionsvertes.fr'),
(3, 'Michael Petit', '+33 6 34 56 78 90', 'michael.petit@designsurbains.fr'),
(4, 'Jean Martin', '+33 6 11 22 33 44', 'jean.martin@cuisineinnovante.fr'),
(5, 'Louise Garnier', '+33 6 77 88 99 00', 'louise.garnier@energiesrenouvelables.fr'),
(6, 'Luc Bernard', '+33 6 33 44 55 66', 'luc.bernard@technologieavancee.fr'),
(7, 'Emma Morel', '+33 6 22 33 44 55', 'emma.morel@artisanatmoderne.fr');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `name_fr` text NOT NULL,
  `gtin` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `description_fr` text NOT NULL,
  `brand_name` text NOT NULL,
  `country_origin` text NOT NULL,
  `gross_weight` int(11) NOT NULL,
  `net_content` int(11) NOT NULL,
  `weight_unit` text NOT NULL,
  `isHidden` tinyint(4) NOT NULL DEFAULT 0,
  `company_id` bigint(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `name_fr`, `gtin`, `description`, `description_fr`, `brand_name`, `country_origin`, `gross_weight`, `net_content`, `weight_unit`, `isHidden`, `company_id`, `updated_at`, `created_at`) VALUES
(1, 'French Herb and Lemon Infused Olive Oil', 'Huile d\'olive infusÃ©e aux herbes et au citron franÃ§ais', 37900123458228, 'Add a touch of freshness to your dishes with our French herb and lemon infused olive oil, featuring a blend of fragrant herbs and citrus.', 'Ajoutez une touche de fraÃ®cheur Ã  vos plats avec notre huile d\'olive infusÃ©e aux herbes franÃ§aises et au citron, composÃ©e d\'un mÃ©lange d\'herbes parfumÃ©es et d\'agrumes.', 'Huiles de France', 'France', 1, 0, 'g', 0, 4, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(2, 'Artisanal French Quiche Lorraine Tartlets', 'Tartelettes de quiche lorraine artisanale franÃ§aise', 37900123458345, 'Indulge in the rich flavors of France with our artisanal quiche Lorraine tartlets, featuring a blend of creamy eggs and cheese.', 'Laissez-vous tenter par les riches saveurs de la France avec nos tartelettes artisanales Ã  la quiche lorraine, composÃ©es d\'un mÃ©lange d\'Å“ufs crÃ©meux et de fromage.', 'PÃ¢tisseries Artisanales', 'France', 1, 1, 'g', 1, 6, '2025-07-22 00:06:18', '2025-07-22 07:58:07'),
(3, 'French Lavender and Honey Body Scrub', 'Exfoliant corporel Ã  la lavande et au miel franÃ§ais', 37900123458462, 'Exfoliate your skin with our French lavender and honey body scrub, featuring a soothing blend of fragrant herbs and citrus.', 'Exfoliez votre peau avec notre gommage corporel Ã  la lavande franÃ§aise et au miel, composÃ© d\'un mÃ©lange apaisant d\'herbes parfumÃ©es et d\'agrumes.', 'Soins Corporels de France', 'France', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(4, 'French Apple and Cinnamon Crumble Mix', 'MÃ©lange de crumble aux pommes et au cannelle franÃ§ais', 37900123458579, 'Warm up with our French apple and cinnamon crumble mix, featuring a blend of fresh spices perfect for a comforting dessert.', 'RÃ©chauffez-vous avec notre mÃ©lange de crumble aux pommes et Ã  la cannelle franÃ§aise, composÃ© d\'un mÃ©lange d\'Ã©pices fraÃ®ches, parfait pour un dessert rÃ©confortant.', 'DessertÃ¨s de France', 'France', 1, 1, 'g', 1, 6, '2025-07-22 00:06:18', '2025-07-22 07:58:07'),
(5, 'Artisanal French Creamy Garlic Dip', 'MÃ©lange de dip aux aromes et Ã  la crÃ¨me franÃ§aise', 37900123458696, 'Savor the rich flavors of France with our artisanal creamy garlic dip, featuring a blend of fresh herbs and spices.', 'Savourez les riches saveurs de la France avec notre trempette crÃ©meuse Ã  l\'ail artisanale, composÃ©e d\'un mÃ©lange d\'herbes fraÃ®ches et d\'Ã©pices.', 'Fromages Artisanales', 'France', 1, 1, 'g', 0, 2, '2025-07-22 00:11:43', '2025-07-22 07:58:07'),
(6, 'French Berry Jam', 'Confiture de fruits rouges franÃ§ais', 37900123458713, 'Enjoy the sweetness of France with our French berry jam, featuring a blend of juicy fruits.', 'ApprÃ©ciez la douceur de la France avec notre confiture de baies franÃ§aises, composÃ©e d\'un mÃ©lange de fruits juteux.', 'Jams de France', 'France', 1, 1, 'g', 0, 2, '2025-07-22 00:11:43', '2025-07-22 07:58:07'),
(7, 'Artisanal French Feta Cheese', 'Fromage feta artisanale franÃ§ais', 37900123458830, 'Savor the rich flavors of Greece in France with our artisanal feta cheese, featuring a blend of creamy milk and herbs.', 'Savourez les riches saveurs de la GrÃ¨ce en France avec notre fromage feta artisanal, composÃ© d\'un mÃ©lange de lait crÃ©meux et d\'herbes.', 'Fromages Artisanales', 'France', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(8, 'French Herb and Garlic Sausages', 'Saucisses aux herbes et Ã  l\'ail franÃ§ais', 37900123458947, 'Indulge in the rich flavors of France with our French herb and garlic sausages, featuring a blend of fragrant herbs and spices.', 'Laissez-vous tenter par les riches saveurs de la France avec nos saucisses franÃ§aises aux herbes et Ã  l\'ail, composÃ©es d\'un mÃ©lange d\'herbes parfumÃ©es et d\'Ã©pices.', 'Charcuterie de France', 'France', 1, 1, 'g', 0, 5, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(9, 'French Apple Tart', 'Tarte tatin aux pommes franÃ§aise', 37900123459064, 'Enjoy the sweetness of France with our French apple tart, featuring a blend of juicy fruits and creamy pastry.', 'Savourez la douceur de la France avec notre tarte aux pommes franÃ§aise, composÃ©e d\'un mÃ©lange de fruits juteux et de pÃ¢tisserie crÃ©meuse.', 'PÃ¢tisseries Artisanales', 'France', 1, 1, 'g', 0, 4, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(10, 'Artisanal French Cream Cheese', 'Fromage Ã  la crÃ¨me artisanale franÃ§ais', 37900123459171, 'Savor the rich flavors of France with our artisanal cream cheese, featuring a blend of creamy milk and herbs.', 'Savourez les riches saveurs de la France avec notre fromage Ã  la crÃ¨me artisanal, composÃ© d\'un mÃ©lange de lait crÃ©meux et d\'herbes.', 'Fromages Artisanales', 'France', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(11, 'French Herb and Lemon Marmalade', 'Marmelade aux herbes et au citron franÃ§ais', 37900123459288, 'Enjoy the sweetness of France with our French herb and lemon marmalade, featuring a blend of fragrant herbs and citrus.', 'Savourez la douceur de la France avec notre marmelade d\'herbes et de citron franÃ§aise, composÃ©e d\'un mÃ©lange d\'herbes parfumÃ©es et d\'agrumes.', 'Jams de France', 'France', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(12, 'Artisanal French Goat Cheese', 'Fromage chÃ¨vre artisanale franÃ§ais', 37900123459395, 'Savor the rich flavors of France with our artisanal goat cheese, featuring a blend of creamy milk and herbs.', 'Savourez les riches saveurs de la France avec notre fromage de chÃ¨vre artisanal, composÃ© d\'un mÃ©lange de lait crÃ©meux et d\'herbes.', 'Fromages Artisanales', 'France', 1, 1, 'g', 1, 6, '2025-07-22 00:06:18', '2025-07-22 07:58:07'),
(13, 'French Apple Cider', 'Cidre aux pommes franÃ§ais', 37900123459412, 'Enjoy the sweetness of France with our French apple cider, featuring a blend of juicy fruits and spices.', 'Savourez la douceur de la France avec notre cidre de pomme franÃ§ais, composÃ© d\'un mÃ©lange de fruits juteux et d\'Ã©pices.', 'Bieres de France', 'France', 1, 1, 'g', 0, 5, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(14, 'Artisanal French Creamy Cheese Dip', 'MÃ©lange de dip Ã  la crÃ¨me franÃ§aise', 37900123459529, 'Savor the rich flavors of France with our artisanal creamy cheese dip, featuring a blend of fresh herbs and spices.', 'Savourez les riches saveurs de la France avec notre trempette au fromage crÃ©meuse artisanale, composÃ©e d\'un mÃ©lange d\'herbes fraÃ®ches et d\'Ã©pices.', 'Fromages Artisanales', 'France', 1, 1, 'g', 0, 4, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(15, 'French Herb and Garlic Sauce', 'Sauce aux herbes et Ã  l\'ail franÃ§aise', 37900123459646, 'Enjoy the richness of France with our French herb and garlic sauce, featuring a blend of fragrant herbs and spices.', 'Savourez la richesse de la France avec notre sauce aux herbes et Ã  l\'ail franÃ§aise, composÃ©e d\'un mÃ©lange d\'herbes parfumÃ©es et d\'Ã©pices.', 'Charcuterie de France', 'France', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(16, 'Artisanal French Cream Cheese Spread', 'Fromage Ã  la crÃ¨me artisanale franÃ§aise pour tartiner', 37900123459763, 'Savor the rich flavors of France with our artisanal cream cheese spread, featuring a blend of creamy milk and herbs.', 'Savourez les riches saveurs de la France avec notre tartinade de fromage Ã  la crÃ¨me artisanale, composÃ©e d\'un mÃ©lange de lait crÃ©meux et d\'herbes.', 'Fromages Artisanales', 'France', 1, 1, 'g', 0, 2, '2025-07-22 00:11:43', '2025-07-22 07:58:07'),
(17, 'French Apple Compote', 'Compote de pommes franÃ§aise', 37900123459870, '', 'Savourez la douceur de la France avec notre compote de pommes franÃ§aise, composÃ©e d\'un mÃ©lange de fruits juteux et d\'Ã©pices.', 'DessertÃ¨s de France', 'France', 1, 1, 'g', 1, 1, '2025-07-22 00:11:42', '2025-07-22 07:58:07'),
(18, 'Eco-Friendly Reusable Water Bottle', 'Bouteille d\'eau rÃ©utilisable et Ã©cologique', 37900234567890, 'Stay hydrated and reduce plastic waste with our eco-friendly reusable water bottle, featuring a BPA-free design.', 'Restez hydratÃ© et rÃ©duisez les dÃ©chets plastiques avec notre bouteille d\'eau rÃ©utilisable respectueuse de l\'environnement, dotÃ©e d\'une conception sans BPA.', 'HydroFlow', 'USA', 0, 0, 'g', 1, 6, '2025-07-22 00:06:18', '2025-07-22 07:58:07'),
(19, 'Artisanal Handmade Soap Set', 'Ensemble de savons artisanaux faits Ã  la main', 37900234567907, 'Nourish your skin with our artisanal handmade soap set, featuring a blend of natural ingredients and essential oils.', 'Nourrissez votre peau avec notre ensemble de savons artisanaux faits Ã  la main, contenant un mÃ©lange d\'ingrÃ©dients naturels et d\'huiles essentielles.', 'Purezza', 'Italy', 1, 1, 'g', 0, 5, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(20, 'French Luxury Candles Set', 'Ensemble de bougies de luxe franÃ§aises', 37900234568024, 'Illuminate your space with our French luxury candles set, featuring a collection of scented candles in elegant packaging.', 'Illuminez votre espace avec notre coffret de bougies de luxe franÃ§aises, comprenant une collection de bougies parfumÃ©es dans un emballage Ã©lÃ©gant.', 'Cierges de France', 'France', 1, 1, 'g', 0, 4, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(21, 'Eco-Friendly Bamboo Toothbrush Set', 'Ensemble de brosses Ã  dents en bambou Ã©cologiques', 37900234568141, 'Brush your teeth and reduce waste with our eco-friendly bamboo toothbrush set, featuring a set of biodegradable toothbrushes and replaceable heads.', 'Brossez-vous les dents et rÃ©duisez les dÃ©chets avec notre ensemble de brosses Ã  dents en bambou respectueux de l\'environnement, comprenant un ensemble de brosses Ã  dents biodÃ©gradables et des tÃªtes remplaÃ§ables.', 'Teeth & Smile', 'Indonesia', 0, 0, 'g', 0, 2, '2025-07-22 00:11:43', '2025-07-22 07:58:07'),
(22, 'Artisanal Handmade Jewelry Box', 'Coffret Ã  bijoux artisanal fait Ã  la main', 37900234568258, 'Store your treasured jewelry in style with our artisanal handmade jewelry box, featuring a beautifully crafted wooden design.', 'Rangez vos prÃ©cieux bijoux avec style grÃ¢ce Ã  notre boÃ®te Ã  bijoux artisanale faite Ã  la main, dotÃ©e d\'un design en bois magnifiquement conÃ§u.', 'JewelBox', 'Mexico', 1, 0, 'g', 1, 1, '2025-07-22 00:11:42', '2025-07-22 07:58:07'),
(23, 'Luxury Essential Oil Diffuser', 'Diffuseur d\'huiles essentielles de luxe', 37900234568375, 'Pamper yourself with the scent of luxury essential oils using our luxury essential oil diffuser, featuring a stylish and modern design.', 'Faites-vous plaisir avec le parfum des huiles essentielles de luxe en utilisant notre diffuseur d\'huiles essentielles de luxe, dotÃ© d\'un design Ã©lÃ©gant et moderne.', 'Aromaflo', 'Australia', 1, 1, 'g', 0, 7, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(24, 'Eco-Friendly Reusable Shopping Bag Set', 'Ensemble de sacs de courses rÃ©utilisables et Ã©cologiques', 37900234568492, 'Reduce plastic waste and go green with our eco-friendly reusable shopping bag set, featuring a set of durable cotton bags and recycled material handles.', 'RÃ©duisez les dÃ©chets plastiques et passez au vert avec notre ensemble de sacs de courses rÃ©utilisables respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et des poignÃ©es en matÃ©riaux recyclÃ©s.', 'GreenEarth', 'UK', 1, 0, 'g', 0, 7, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(25, 'Artisanal Handmade Home Fragrance Spray', 'Spray de parfum d\'ambiance artisanal fait Ã  la main', 37900234568509, 'Freshen up your home with our artisanal handmade home fragrance spray, featuring a blend of natural ingredients and essential oils.', 'RafraÃ®chissez votre maison avec notre spray parfumÃ© d\'intÃ©rieur artisanal fait Ã  la main, contenant un mÃ©lange d\'ingrÃ©dients naturels et d\'huiles essentielles.', 'Purezza', 'Italy', 0, 0, 'g', 0, 5, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(26, 'French Luxury Aromatherapy Set', 'Ensemble d\'aromathÃ©rapie de luxe franÃ§ais', 37900234568626, 'Pamper yourself with the scent of luxury aromatherapy using our French luxury aromatherapy set, featuring a collection of scented candles and essential oils.', 'Faites-vous plaisir avec le parfum de l\'aromathÃ©rapie de luxe grÃ¢ce Ã  notre coffret d\'aromathÃ©rapie de luxe franÃ§ais, comprenant une collection de bougies parfumÃ©es et d\'huiles essentielles.', 'Cierges de France', 'France', 1, 1, 'g', 0, 7, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(27, 'Eco-Friendly Reusable Lunch Box Set', 'Ensemble de boÃ®tes Ã  lunch rÃ©utilisables et Ã©cologiques', 37900234568733, 'Pack your lunch in style and reduce waste with our eco-friendly reusable lunch box set, featuring a set of durable cotton bags and recycled material handles.', 'Emballez votre dÃ©jeuner avec style et rÃ©duisez les dÃ©chets grÃ¢ce Ã  notre coffret Ã  lunch rÃ©utilisable respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et des poignÃ©es en matÃ©riaux recyclÃ©s.', 'GreenEarth', 'UK', 1, 0, 'g', 1, 1, '2025-07-22 00:11:42', '2025-07-22 07:58:07'),
(28, 'Artisanal Handmade Stationery Set', 'Ensemble de papeterie artisanale faite Ã  la main', 37900234568850, 'Stay organized and creative with our artisanal handmade stationery set, featuring a collection of handmade notebooks, pens, and pencils.', 'Restez organisÃ© et crÃ©atif avec notre ensemble de papeterie artisanale faite Ã  la main, comprenant une collection de cahiers, de stylos et de crayons faits Ã  la main.', 'PaperCraft', 'USA', 0, 0, 'g', 0, 2, '2025-07-22 00:11:43', '2025-07-22 07:58:07'),
(29, 'Luxury Wall Art Print Set', 'Ensemble d\'impressions murales de luxe', 37900234568967, 'Add some style to your walls with our luxury wall art print set, featuring a collection of high-quality prints from around the world.', 'Ajoutez du style Ã  vos murs avec notre ensemble d\'impressions murales de luxe, comprenant une collection d\'impressions de haute qualitÃ© du monde entier.', 'ArtScene', 'Canada', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07'),
(30, 'Eco-Friendly Reusable Phone Case Set', 'Ensemble de coques de tÃ©lÃ©phone rÃ©utilisables et Ã©cologiques', 37900234569084, 'Protect your phone and reduce waste with our eco-friendly reusable phone case set, featuring a set of durable cotton cases and recycled material inserts.', 'ProtÃ©gez votre tÃ©lÃ©phone et rÃ©duisez les dÃ©chets avec notre ensemble de coques de tÃ©lÃ©phone rÃ©utilisables respectueuses de l\'environnement, comprenant un ensemble de coques en coton durables et d\'inserts en matÃ©riaux recyclÃ©s.', 'GreenEarth', 'UK', 1, 0, 'g', 0, 4, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(31, 'Artisanal Handmade Bookmarks Set', 'Ensemble de marque-pages artisanaux faits Ã  la main', 37900234569101, 'Mark your favorite pages in style with our artisanal handmade bookmarks set, featuring a collection of handmade bookmarks and book lights.', 'Marquez vos pages prÃ©fÃ©rÃ©es avec style avec notre ensemble de marque-pages artisanaux faits Ã  la main, comprenant une collection de marque-pages et de lampes de lecture faits Ã  la main.', 'PageTurner', 'Mexico', 0, 0, 'g', 0, 5, '2025-07-22 07:58:07', '2025-07-22 07:58:07'),
(32, 'French Luxury Desk Accessory Set', 'Ensemble d\'accessoires de bureau de luxe franÃ§ais', 37900234569218, 'Elevate your workspace with our French luxury desk accessory set, featuring a collection of scented candles, essential oils, and handmade stationery.', 'AmÃ©liorez votre espace de travail avec notre ensemble d\'accessoires de bureau de luxe franÃ§ais, comprenant une collection de bougies parfumÃ©es, d\'huiles essentielles et de papeterie faite Ã  la main.', 'Cierges de France', 'France', 1, 1, 'g', 1, 1, '2025-07-22 00:11:42', '2025-07-22 07:58:07'),
(33, 'Eco-Friendly Reusable Travel Bag Set', 'Ensemble de sacs de voyage rÃ©utilisables et Ã©cologiques', 37900234569335, 'Travel in style and reduce waste with our eco-friendly reusable travel bag set, featuring a set of durable cotton bags and recycled material handles.', 'Voyagez avec style et rÃ©duisez les dÃ©chets avec notre ensemble de sacs de voyage rÃ©utilisables respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et de poignÃ©es en matÃ©riaux recyclÃ©s.', 'GreenEarth', 'UK', 1, 0, 'g', 1, 6, '2025-07-22 00:06:18', '2025-07-22 07:58:07'),
(34, 'Artisanal Handmade Wall Hanging Set', 'Ensemble de tentures murales artisanales faites Ã  la main', 37900234569452, 'Add some handmade charm to your walls with our artisanal handmade wall hanging set, featuring a collection of hand-painted ceramics and natural fibers.', 'Ajoutez un peu de charme artisanal Ã  vos murs avec notre ensemble de tentures murales artisanales faites Ã  la main, comprenant une collection de cÃ©ramiques peintes Ã  la main et de fibres naturelles.', 'WallDecor', 'Italy', 1, 1, 'g', 1, 3, '2025-07-22 00:08:14', '2025-07-22 07:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eY1JpAJiCH33ZeEQlrS1PPsKmItDddHxSs7laQkg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFNSMG12dEwxMHNnRkdVOW1ocHZNOHhVc1ZUUlZ6SEdyQlJzSnl2MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYW5hZ2UvY29tcGFuaWVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1753171974);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$iUlrGoNX9fEx1oad5usfKefMH1BqySqUzgnJAJaZUSbOVj1H/LojO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gtin` (`gtin`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
