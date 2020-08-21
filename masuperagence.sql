-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 21 août 2020 à 08:22
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `masuperagence`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200702135417', '2020-07-02 14:30:20', 9995),
('DoctrineMigrations\\Version20200702151641', '2020-07-02 15:24:01', 2417),
('DoctrineMigrations\\Version20200704092431', '2020-07-04 09:27:58', 2064),
('DoctrineMigrations\\Version20200708110452', '2020-07-08 11:06:52', 1713),
('DoctrineMigrations\\Version20200710144746', '2020-07-10 14:50:01', 2909),
('DoctrineMigrations\\Version20200712091322', '2020-07-12 09:16:33', 2693),
('DoctrineMigrations\\Version20200712093202', '2020-07-12 09:34:46', 926);

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `name`) VALUES
(1, 'Adapté PMR'),
(2, 'Ascenceur'),
(3, 'Balcon');

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDE989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `adress`, `postal_code`, `sold`, `created_at`, `slug`, `filename`, `updated_at`) VALUES
(12, 'quos quibusdam magname', 'Tempora eaque harum officia. Mollitia molestias quisquam eos dignissimos voluptatem sed. Reiciendis alias et porro.', 199, 3, 5, 5, 867710, 0, 'Blanchard', '87, boulevard Schneider50910 Salmon', '80973', 0, '2020-07-09 10:25:01', 'quos-quibusdam-magname', '5f0dbbe794cfb963907358.jpg', '2020-07-14 14:06:27'),
(13, 'rerum voluptatem repellendus', 'Autem sed necessitatibus eligendi libero architecto et pariatur. Autem aut velit error consequatur blanditiis consequuntur quia reiciendis. Non provident quos eos.', 208, 10, 2, 0, 881966, 1, 'Fournier', 'rue Labbe40 614 Lacombe', '60112', 0, '2020-07-09 10:25:01', 'rerum-voluptatem-repellendus', '5f0dbc1daa519323547226.jpg', '2020-07-14 14:07:25'),
(14, 'Bien numéro 1', 'Une description', 29, 8, 9, 13, 728848, 0, 'Albert-sur-Mer', '7, rue Barthelemy84980 Morvan', '32870', 0, '2020-07-09 10:25:01', 'bien-numero-1', '5f0dc16d193d2971249490.jpg', '2020-07-14 14:30:04'),
(15, 'iste quis temporibus', 'Autem et officia quia aut nostrum non nulla. Excepturi enim et et explicabo repudiandae est dolorem. Quia architecto tenetur a facilis.', 319, 8, 4, 4, 314994, 1, 'GalletVille', 'place Garcia08 368 Robin', '03791', 0, '2020-07-09 10:25:01', 'iste-quis-temporibus', '5f0dc3302fa6b077600823.jpg', '2020-07-14 14:37:35'),
(16, 'eos dolores vel', 'Doloribus excepturi rem ut est omnis sunt sit inventore. Voluptatibus ducimus velit provident natus voluptatem nostrum. Soluta in ipsam ut iste rem aut laboriosam.', 317, 7, 4, 11, 905517, 0, 'Bernard', '36, rue Astrid Samson47 375 Roche', '75026', 0, '2020-07-09 10:25:01', 'eos-dolores-vel', '5f0dc698d1405793353640.jpg', '2020-07-14 14:52:08'),
(18, 'tempore vero aliquam', 'Aspernatur voluptate nemo dolore incidunt cumque. Distinctio esse quibusdam ad sit qui repudiandae exercitationem. Repellat nesciunt est inventore placeat eum dolores animi.', 45, 10, 3, 0, 948252, 1, 'Fournier-sur-Evrard', '52, chemin de Boulay\n53 074 Hebert', '26 213', 0, '2020-07-09 10:25:02', 'tempore-vero-aliquam', '', '0000-00-00 00:00:00'),
(19, 'qui quidem aut', 'Deleniti iste molestiae qui qui. Qui esse ut voluptatem magnam consequatur qui. Ad temporibus et illum repellendus molestias.', 113, 4, 6, 8, 564041, 1, 'Le Goff', '352, chemin Poirier66 013 Peltier-sur-Leclerc', '51555', 0, '2020-07-09 10:25:02', 'qui-quidem-aut', '5f16fcb2a360d522250564.jpg', '2020-07-21 14:33:20'),
(20, 'quo pariatur molestias', 'Exercitationem ab repudiandae reiciendis perspiciatis non voluptate nulla. Accusamus qui vitae quidem hic saepe magnam. Eum magnam aperiam quae ducimus rerum magni architecto.', 269, 9, 8, 8, 936925, 0, 'Payet-la-Forêt', '63, rue de Le Gall54811 Dos Santos-les-Bains', '90047', 0, '2020-07-09 10:25:02', 'quo-pariatur-molestias', '', '0000-00-00 00:00:00'),
(21, 'quae esse rerum', 'Commodi id eligendi dolorem et dignissimos et quidem ducimus. Officiis autem cupiditate maxime dolor inventore non non. Laudantium debitis fugit delectus eveniet.', 143, 10, 2, 8, 379225, 0, 'Lopes', '3, chemin Nath Guyot02 580 Lemoine', '74290', 0, '2020-07-09 10:25:02', 'quae-esse-rerum', '5f1b63efa899e440403453.jpg', '2020-07-24 22:42:55'),
(22, 'modi autem quod', 'Corrupti quia veritatis quo vero molestiae. Deleniti recusandae et dolor omnis assumenda occaecati rerum. Consectetur qui sit at qui autem laboriosam dolorem.', 194, 3, 4, 12, 649133, 0, 'Blot', '79, rue de Gilles\n67 462 Lemaire', '66 179', 0, '2020-07-09 10:25:02', 'modi-autem-quod', '', '0000-00-00 00:00:00'),
(23, 'saepe fugit quia', 'Numquam sit rerum repellat quia. Ullam at sed sit neque. Quibusdam doloremque atque qui error consectetur incidunt ipsa.', 270, 7, 6, 7, 671489, 1, 'Le Gall-sur-Mer', '9, avenue Jacques Martel\n83614 RemyVille', '86 910', 0, '2020-07-09 10:25:02', 'saepe-fugit-quia', '', '0000-00-00 00:00:00'),
(24, 'suscipit et qui', 'Commodi reprehenderit necessitatibus eum quaerat possimus aut. Aut illo sit et ex dicta repudiandae. Iste impedit voluptatem et reprehenderit dolorem.', 28, 6, 6, 0, 829792, 1, 'Ribeiro', '21, impasse Godard\n11 377 BaillyBourg', '72430', 0, '2020-07-09 10:25:02', 'suscipit-et-qui', '', '0000-00-00 00:00:00'),
(25, 'quaerat sed autem', 'Ducimus omnis et et placeat. Commodi molestiae alias quos voluptatem. Enim officiis esse harum accusantium laudantium qui.', 104, 7, 3, 2, 933196, 0, 'Boyer-les-Bains', 'rue de Voisin\n14188 Barbe-sur-Guillon', '83 083', 0, '2020-07-09 10:25:02', 'quaerat-sed-autem', '', '0000-00-00 00:00:00'),
(26, 'reprehenderit ad omnis', 'Ab eos ab enim sed. Ad quaerat culpa quia placeat. Officia ipsum aut qui sunt voluptas.', 92, 8, 2, 3, 944259, 1, 'Bousquet', '493, avenue de David\n17 263 Guyotboeuf', '65748', 0, '2020-07-09 10:25:02', 'reprehenderit-ad-omnis', '', '0000-00-00 00:00:00'),
(27, 'consectetur quia non', 'Magni temporibus perferendis quas alias inventore accusamus exercitationem rerum. Illo minima quisquam odit nam maxime cum voluptatem. Est et molestias impedit omnis.', 28, 3, 3, 3, 922081, 1, 'Berthelot', '8, chemin Philippe Gros\n45 864 Reynaud-sur-Lemoine', '19265', 0, '2020-07-09 10:25:02', 'consectetur-quia-non', '', '0000-00-00 00:00:00'),
(28, 'quis nobis itaque', 'Dignissimos repudiandae cupiditate provident. Dolorum corrupti optio quibusdam qui cumque deserunt in. Quam neque nesciunt velit minus expedita aliquid voluptatem.', 68, 7, 5, 10, 356561, 1, 'ChauvinBourg', '99, avenue Valérie Guillot\n38 172 Maillarddan', '86974', 0, '2020-07-09 10:25:02', 'quis-nobis-itaque', '', '0000-00-00 00:00:00'),
(29, 'et qui placeat', 'Velit repellat eligendi nesciunt aliquid est laboriosam. Quos veniam enim veritatis ea. Rerum et beatae voluptas veniam.', 86, 4, 2, 2, 694346, 0, 'Rossi', '98, place de Texier\n07943 Nguyen', '37 273', 0, '2020-07-09 10:25:02', 'et-qui-placeat', '', '0000-00-00 00:00:00'),
(30, 'qui officiis harum', 'Recusandae rerum et fugiat architecto temporibus. Maiores quas magnam molestiae harum explicabo debitis blanditiis et. Ut excepturi id aut ut sed.', 314, 4, 5, 15, 395926, 1, 'Guilbert', 'chemin Frédérique Paul\n25 891 Joubert', '33803', 0, '2020-07-09 10:25:02', 'qui-officiis-harum', '', '0000-00-00 00:00:00'),
(31, 'odit quia non', 'Et facilis quia omnis ut officia veritatis dolor iste. Voluptatem officia illo ipsum asperiores qui qui vero voluptates. Quis in minus minima qui accusantium quas.', 107, 2, 5, 10, 266656, 1, 'Herve-les-Bains', '46, boulevard Joubert\n93 726 Turpin', '98 683', 0, '2020-07-09 10:25:02', 'odit-quia-non', '', '0000-00-00 00:00:00'),
(32, 'aut minus consequuntur', 'Delectus et amet delectus assumenda sit beatae non. Qui voluptatibus necessitatibus temporibus et occaecati aliquam unde itaque. Dolore aut reprehenderit ut id fuga sint.', 298, 7, 8, 2, 711623, 1, 'Hebert', '90, rue Charles Ollivier\n56702 Devauxnec', '54 059', 0, '2020-07-09 10:25:02', 'aut-minus-consequuntur', '', '0000-00-00 00:00:00'),
(33, 'ea doloribus illum', 'Architecto aut maiores ullam nihil ut voluptatem odio. Ea omnis doloribus ducimus esse inventore rerum. Commodi et quam architecto.', 231, 10, 3, 13, 136883, 1, 'Girard', '180, rue de Barbier\n55787 Lecomte-sur-Mer', '95 447', 0, '2020-07-09 10:25:02', 'ea-doloribus-illum', '', '0000-00-00 00:00:00'),
(34, 'eum nam error', 'Ipsum ipsa ipsa perspiciatis nostrum. Aut quaerat ut voluptatem voluptatum. Et aperiam laboriosam quia non dolorum.', 166, 9, 4, 10, 713815, 0, 'Tanguy-sur-Mer', '18, chemin Dominique Hoareau\n04 616 Legrand', '34 940', 0, '2020-07-09 10:25:02', 'eum-nam-error', '', '0000-00-00 00:00:00'),
(35, 'ex harum deleniti', 'Dolore voluptates ab quisquam et atque aut odio harum. Consectetur nesciunt similique dignissimos doloribus. Eligendi hic atque accusamus dolorum iste molestiae itaque autem.', 339, 2, 9, 13, 544069, 0, 'Boutin-sur-Laporte', '59, avenue de De Sousa\n34204 Evrard', '64 889', 0, '2020-07-09 10:25:02', 'ex-harum-deleniti', '', '0000-00-00 00:00:00'),
(36, 'dolorum ducimus tempora', 'Non magni ut deleniti consequatur voluptatem reprehenderit. Rem dolores est nobis et consequatur. Sapiente pariatur autem labore ut.', 263, 5, 7, 4, 460822, 1, 'Bouchet-sur-Huet', '546, chemin de Bourdon\n89 664 Le Gall', '24 739', 0, '2020-07-09 10:25:02', 'dolorum-ducimus-tempora', '', '0000-00-00 00:00:00'),
(37, 'laboriosam ex et', 'Est tenetur repudiandae dicta sit quos et ut. Magni odit molestiae non maiores omnis. Rerum quia quo vitae magni commodi sunt perferendis nostrum.', 177, 5, 8, 5, 535878, 0, 'Bourdon', '191, rue de Costa\n94643 Barbe-sur-Coste', '10 267', 0, '2020-07-09 10:25:02', 'laboriosam-ex-et', '', '0000-00-00 00:00:00'),
(38, 'delectus soluta aspernatur', 'Odit sit doloribus nobis. Ratione consequatur provident sunt voluptatem nemo vitae labore. Commodi qui voluptas quaerat autem.', 168, 2, 1, 9, 454758, 0, 'Berniernec', 'rue Juliette Techer\n45595 Giraud', '26 102', 0, '2020-07-09 10:25:02', 'delectus-soluta-aspernatur', '', '0000-00-00 00:00:00'),
(39, 'quo voluptatem asperiores', 'Ut id qui atque veniam ipsum sequi. Quae quia aut deleniti dolor cumque fugiat. Laboriosam rerum vel porro.', 316, 2, 8, 4, 308447, 0, 'Brunetdan', '49, boulevard Pierre Dupuis\n53338 Delaunay', '08 656', 0, '2020-07-09 10:25:02', 'quo-voluptatem-asperiores', '', '0000-00-00 00:00:00'),
(40, 'sed ipsam exercitationem', 'Ex dolor deleniti blanditiis veritatis. Animi aut quibusdam laudantium fugit. Tenetur quos sit et aut cumque.', 72, 4, 6, 13, 627031, 1, 'Mendes', '71, impasse de Joseph\n45 412 Regnier', '91844', 0, '2020-07-09 10:25:02', 'sed-ipsam-exercitationem', '', '0000-00-00 00:00:00'),
(41, 'corporis sunt saepe', 'Sit quibusdam cupiditate temporibus quae magni consequatur culpa. Dicta aliquam doloremque ex ut magni impedit qui. Eaque dolor odio enim reiciendis aut autem minus.', 219, 8, 6, 3, 677523, 0, 'Bernard', '19, rue Rolland\n47 197 Normanddan', '34544', 0, '2020-07-09 10:25:02', 'corporis-sunt-saepe', '', '0000-00-00 00:00:00'),
(42, 'explicabo ut molestiae', 'Consectetur et quia ut eos illum et facilis tenetur. Doloremque aut ut omnis excepturi qui optio eveniet. Ut eum dolor consectetur qui rem.', 62, 2, 3, 14, 797629, 0, 'Nicolas', 'place de Paris\n96902 Dumas', '02 648', 0, '2020-07-09 10:25:02', 'explicabo-ut-molestiae', '', '0000-00-00 00:00:00'),
(43, 'praesentium vel reiciendis', 'Mollitia inventore commodi nisi beatae. Debitis eos amet sit. Et libero unde quia est commodi.', 308, 10, 9, 5, 117636, 0, 'BuissonBourg', '6, place de De Sousa\n01 320 Fernandes-la-Forêt', '64 875', 0, '2020-07-09 10:25:02', 'praesentium-vel-reiciendis', '', '0000-00-00 00:00:00'),
(44, 'omnis sint itaque', 'Voluptas quo distinctio soluta quaerat deserunt. Aliquam voluptatum commodi perspiciatis molestiae provident est. Vitae magni sint impedit consequuntur autem.', 241, 10, 9, 15, 247588, 0, 'Langlois-sur-Mer', '289, avenue Édith Lambert\n01 826 Raynauddan', '70 407', 0, '2020-07-09 10:25:02', 'omnis-sint-itaque', '', '0000-00-00 00:00:00'),
(45, 'delectus porro et', 'Architecto similique et laudantium dignissimos eveniet ut atque. Et eaque hic delectus aut quis est expedita. Sequi corporis maxime provident autem harum eos.', 307, 2, 4, 0, 876338, 0, 'Hoareau', '95, avenue de Guyot\n37987 Blanchard-sur-Tanguy', '84 039', 0, '2020-07-09 10:25:02', 'delectus-porro-et', '', '0000-00-00 00:00:00'),
(46, 'deleniti blanditiis quo', 'Vero est culpa quo veritatis quae. Voluptas ut soluta maxime. Explicabo voluptatem consectetur explicabo qui repellendus delectus.', 284, 8, 3, 1, 111193, 0, 'Chevalier', '28, avenue Maillet\n70 348 Masson', '50 226', 0, '2020-07-09 10:25:02', 'deleniti-blanditiis-quo', '', '0000-00-00 00:00:00'),
(47, 'illo ipsa natus', 'Quo est error et voluptates ratione est. Pariatur odio cumque sit natus. Dolorum itaque deleniti rem perspiciatis ratione ut earum.', 149, 3, 7, 3, 177119, 0, 'Bouchet', '159, avenue Denis Boulanger\n53 035 Baudry-sur-Masse', '60034', 0, '2020-07-09 10:25:02', 'illo-ipsa-natus', '', '0000-00-00 00:00:00'),
(48, 'explicabo laborum cum', 'Et molestias cumque aut non provident hic. Impedit omnis recusandae ut voluptate vel aut vel. Molestias quia id vel dolor.', 84, 8, 6, 13, 526683, 0, 'ChauvinBourg', 'place Renault\n08527 Michaud-les-Bains', '01 836', 0, '2020-07-09 10:25:02', 'explicabo-laborum-cum', '', '0000-00-00 00:00:00'),
(49, 'provident assumenda omnis', 'Exercitationem vitae laboriosam veniam qui atque nesciunt. Consequuntur et voluptas explicabo. Saepe quaerat adipisci porro voluptatem iure natus cupiditate.', 298, 2, 4, 10, 538665, 1, 'Herve', 'place de Aubert\n19149 Becker', '54231', 0, '2020-07-09 10:25:02', 'provident-assumenda-omnis', '', '0000-00-00 00:00:00'),
(50, 'sunt nesciunt libero', 'Voluptatem illum nihil quod repellat. Vel dolores neque quasi amet accusamus. Voluptatibus sit sed quasi.', 107, 8, 7, 13, 426627, 0, 'Joly-sur-Benoit', '60, place de Roux\n96 489 Guillaumenec', '24 845', 0, '2020-07-09 10:25:02', 'sunt-nesciunt-libero', '', '0000-00-00 00:00:00'),
(51, 'ullam placeat molestias', 'Omnis qui pariatur in cumque ut expedita omnis sed. Velit eveniet ea magni est. Culpa sunt quaerat autem fuga et et.', 336, 6, 8, 0, 726586, 1, 'Lefort-les-Bains', '20, impasse Gilbert Mahe\n99145 MeyerBourg', '39 733', 0, '2020-07-09 10:25:02', 'ullam-placeat-molestias', '', '0000-00-00 00:00:00'),
(52, 'maxime omnis dignissimos', 'Ut ea tenetur est nihil aut sit repellendus. Quaerat et aliquam voluptatem quibusdam assumenda distinctio et. Et libero illum excepturi aut eaque dolor molestias occaecati.', 334, 10, 3, 7, 154306, 0, 'Joubert-sur-Ruiz', '1, rue Poulain\n71146 Perez', '39947', 0, '2020-07-09 10:25:02', 'maxime-omnis-dignissimos', '', '0000-00-00 00:00:00'),
(53, 'officia animi dolor', 'Qui dolor voluptates ratione iusto veritatis. Reprehenderit quas sit quod quasi sunt. Autem quidem enim eos sit dolores.', 128, 6, 4, 11, 758808, 0, 'Diallo', '19, boulevard Briand\n81275 Martins-les-Bains', '86378', 0, '2020-07-09 10:25:02', 'officia-animi-dolor', '', '0000-00-00 00:00:00'),
(54, 'mollitia alias natus', 'Similique modi impedit magnam perferendis at tenetur quisquam. Numquam nostrum adipisci occaecati sed rem esse odio. Exercitationem temporibus consequatur qui.', 111, 5, 3, 10, 468747, 1, 'De OliveiraVille', '54, chemin Louise Leroy\n44 026 Germainnec', '58 441', 0, '2020-07-09 10:25:02', 'mollitia-alias-natus', '', '0000-00-00 00:00:00'),
(55, 'quas repudiandae quis', 'Modi ut quod odio. Quisquam architecto amet pariatur quis nobis. Perferendis accusantium voluptas aut sunt similique.', 346, 7, 9, 6, 457825, 0, 'Ribeiro', 'chemin Laurent Perrier\n28 316 Poirier', '19598', 0, '2020-07-09 10:25:02', 'quas-repudiandae-quis', '', '0000-00-00 00:00:00'),
(56, 'vitae sapiente doloremque', 'Incidunt vero repudiandae laudantium aut eum rerum. Quam et illum nostrum id possimus ad omnis asperiores. Modi eius cumque ullam voluptatem sint maxime in.', 338, 10, 7, 11, 783503, 1, 'Merle', 'avenue de Ferreira\n38167 Garcia', '56525', 0, '2020-07-09 10:25:02', 'vitae-sapiente-doloremque', '', '0000-00-00 00:00:00'),
(57, 'voluptatibus pariatur id', 'Optio enim sed consequuntur dignissimos animi. Quia illum ipsum et cumque vel id fuga. Eum illo tenetur eius esse odit tempore.', 295, 4, 9, 1, 256317, 0, 'Jean', '6, impasse Adam\n63425 Gaillard', '93 872', 0, '2020-07-09 10:25:02', 'voluptatibus-pariatur-id', '', '0000-00-00 00:00:00'),
(58, 'et quas eveniet', 'Ut voluptatem voluptas labore minima. Ipsum saepe voluptates eos recusandae explicabo doloremque. Deleniti unde enim eum.', 171, 3, 4, 6, 494409, 0, 'Thibault', '1, rue de Weber\n01 922 Lamy-la-Forêt', '17433', 0, '2020-07-09 10:25:02', 'et-quas-eveniet', '', '0000-00-00 00:00:00'),
(59, 'itaque autem praesentium', 'Quia minus occaecati tenetur omnis. Occaecati et et est quis aliquid aut cum. Facilis in recusandae laudantium voluptatem.', 232, 8, 5, 14, 937085, 1, 'Leleu-les-Bains', '3, place de Lelievre\n74 636 Aubry', '87155', 0, '2020-07-09 10:25:02', 'itaque-autem-praesentium', '', '0000-00-00 00:00:00'),
(60, 'harum sed et', 'Dolore suscipit voluptas unde molestiae non itaque. Quia pariatur iste facilis. Illo et ut molestias perferendis voluptatibus voluptatem.', 314, 3, 7, 10, 761785, 1, 'Carpentier', 'impasse Patrick Herve\n41 001 Boyer', '98 756', 0, '2020-07-09 10:25:02', 'harum-sed-et', '', '0000-00-00 00:00:00'),
(61, 'quod autem tempora', 'Autem libero repellendus ipsa est. Voluptatibus et nihil consequatur qui qui. Aliquam unde vel fuga ab id magnam quia.', 111, 4, 9, 9, 131372, 0, 'Duprenec', '68, rue Delahaye\n12717 Leroy', '98 941', 0, '2020-07-09 10:25:02', 'quod-autem-tempora', '', '0000-00-00 00:00:00'),
(62, 'aliquam enim consequatur', 'Consectetur quae id itaque nisi iure praesentium architecto. Id blanditiis et dolor facilis minus nulla. Sunt et saepe ut consequatur sit.', 150, 7, 1, 7, 957685, 1, 'Etienne', '424, rue de Chauvin\n55389 Labbe', '46 774', 0, '2020-07-09 10:25:02', 'aliquam-enim-consequatur', '', '0000-00-00 00:00:00'),
(63, 'neque ut unde', 'Aut illo modi dolores quasi consequatur a dicta. Omnis enim nihil dolore deleniti quia atque expedita. Voluptas autem molestiae esse enim id sed aut fugit.', 194, 10, 6, 13, 180555, 1, 'Vasseur-sur-Mer', '29, rue de Valentin\n17 542 Hoareau', '31302', 0, '2020-07-09 10:25:02', 'neque-ut-unde', '', '0000-00-00 00:00:00'),
(64, 'explicabo autem deleniti', 'Voluptate impedit rerum veniam tempora velit cumque velit quos. Dolorem deserunt ut voluptates ut magnam sunt. Et minima qui et natus ad molestias illum.', 29, 8, 5, 6, 460006, 1, 'Paris-sur-Mer', '70, rue de Leroux\n13986 Guillaume', '72 480', 0, '2020-07-09 10:25:02', 'explicabo-autem-deleniti', '', '0000-00-00 00:00:00'),
(65, 'quas animi saepe', 'Facilis provident quae illo ratione explicabo et rerum. Sed nisi autem dolor placeat ea odio. Dolorem mollitia dolorem placeat veniam in.', 342, 8, 3, 2, 850751, 0, 'Dupredan', '7, rue Guichard\n16314 BretonBourg', '98 137', 0, '2020-07-09 10:25:02', 'quas-animi-saepe', '', '0000-00-00 00:00:00'),
(66, 'accusantium at ut', 'Est itaque praesentium molestias similique quae vel ut. Incidunt totam itaque voluptatem vero incidunt et laborum. Voluptatem explicabo est voluptatum repellendus quo.', 91, 7, 3, 4, 937658, 1, 'Morin', 'place de Dupuy\n03 066 Hebertboeuf', '95348', 0, '2020-07-09 10:25:02', 'accusantium-at-ut', '', '0000-00-00 00:00:00'),
(67, 'voluptates et alias', 'Voluptatem est animi ullam omnis qui consequatur. Saepe sed vel sit. Et veniam quidem et occaecati ut et culpa.', 52, 4, 6, 8, 511779, 0, 'Barthelemy', '859, avenue Moulin\n27 850 RodriguesBourg', '11150', 0, '2020-07-09 10:25:02', 'voluptates-et-alias', '', '0000-00-00 00:00:00'),
(68, 'sunt cumque nam', 'Consequuntur eius fugit dolorem et. Qui commodi exercitationem ex amet illum similique quos totam. Sit qui qui et quo culpa in.', 296, 6, 7, 15, 503497, 1, 'Lejeune-sur-Bernier', '17, place Christophe Lecomte\n42837 Bessondan', '11290', 0, '2020-07-09 10:25:02', 'sunt-cumque-nam', '', '0000-00-00 00:00:00'),
(69, 'architecto facilis optio', 'Et dolores mollitia pariatur. Omnis quaerat ex porro. Facere eos ut saepe ab hic.', 23, 10, 9, 3, 612053, 0, 'Hardy-sur-Noel', '43, rue Etienne\n73239 Masson', '38361', 0, '2020-07-09 10:25:02', 'architecto-facilis-optio', '', '0000-00-00 00:00:00'),
(70, 'qui et ullam', 'At repudiandae dolorem adipisci sit magni. Nulla voluptatem ex illum qui. Est et quis aperiam quia magnam.', 32, 4, 6, 2, 739317, 1, 'DupontBourg', '50, boulevard de Gaudin\n01 821 Coulon', '35631', 0, '2020-07-09 10:25:02', 'qui-et-ullam', '', '0000-00-00 00:00:00'),
(71, 'et magnam aut', 'Sunt aperiam recusandae dolor eos corporis et est. Minima rerum id temporibus id unde fugit maiores eum. Maiores eveniet qui ut ut voluptas qui rerum.', 257, 9, 9, 0, 955380, 1, 'Paul-sur-Leleu', '2, boulevard Lucie Brunel\n56266 BarthelemyBourg', '80 246', 0, '2020-07-09 10:25:02', 'et-magnam-aut', '', '0000-00-00 00:00:00'),
(72, 'in accusantium recusandae', 'Rerum recusandae consequatur ut mollitia aut quia laudantium. Debitis ex est possimus dolor est. Blanditiis iste aut praesentium alias ducimus quisquam tenetur.', 256, 4, 7, 10, 676463, 1, 'Ollivier', '5, impasse de Nguyen\n10 843 Marin', '61 386', 0, '2020-07-09 10:25:02', 'in-accusantium-recusandae', '', '0000-00-00 00:00:00'),
(73, 'molestias dicta voluptas', 'Non enim incidunt eos qui delectus neque rerum. Recusandae esse cum facere. Et exercitationem iure ullam dolor.', 237, 7, 2, 14, 951566, 0, 'Leduc', '772, rue Alfred Martel\n01757 Renault', '52 458', 0, '2020-07-09 10:25:02', 'molestias-dicta-voluptas', '', '0000-00-00 00:00:00'),
(74, 'eum ullam natus', 'Velit ut aut velit asperiores reiciendis. Aperiam laudantium ducimus aut necessitatibus quos mollitia reprehenderit. Commodi doloribus vero nemo a.', 45, 8, 8, 4, 521068, 1, 'Lucasboeuf', '6, chemin de Clerc\n77040 Berger-sur-Ferreira', '09 756', 0, '2020-07-09 10:25:02', 'eum-ullam-natus', '', '0000-00-00 00:00:00'),
(75, 'voluptatum aut minus', 'Aliquam eligendi fugit officiis ut. Ullam ut omnis voluptatem fugit sapiente illo. Magnam quo omnis sit voluptatem.', 148, 7, 4, 9, 932696, 0, 'MartelBourg', '51, place Leroy\n06 154 Tanguy', '49042', 0, '2020-07-09 10:25:02', 'voluptatum-aut-minus', '', '0000-00-00 00:00:00'),
(76, 'incidunt sed voluptas', 'Nihil omnis voluptatum id odit. Ut ea facilis magnam accusantium rerum ut voluptate. Natus ut quo autem deleniti dignissimos laborum enim maiores.', 122, 9, 9, 9, 977180, 1, 'Legros-sur-Martinez', '75, rue de Georges\n87394 Briand', '63 794', 0, '2020-07-09 10:25:02', 'incidunt-sed-voluptas', '', '0000-00-00 00:00:00'),
(77, 'ad et similique', 'Dolor molestiae doloremque alias eveniet dolor est repellat. Vero laborum quis alias quo fugiat eius alias. Nemo similique expedita vel suscipit.', 348, 7, 3, 1, 912696, 0, 'Leclercboeuf', '82, chemin de Pierre\n59567 David-sur-Pages', '81812', 0, '2020-07-09 10:25:02', 'ad-et-similique', '', '0000-00-00 00:00:00'),
(78, 'occaecati et temporibus', 'Architecto aut odit exercitationem a voluptas qui. Vitae recusandae eos voluptas aut et voluptatem. Aut dolore ipsam doloremque voluptas mollitia.', 57, 2, 3, 2, 110054, 1, 'GalletVille', 'rue Thibaut Maury\n13700 Barthelemy', '64995', 0, '2020-07-09 10:25:02', 'occaecati-et-temporibus', '', '0000-00-00 00:00:00'),
(79, 'voluptatem sint placeat', 'Temporibus aut doloribus animi dicta alias quod quisquam. Vero ut et voluptates consequatur sunt. Ipsum omnis tempore omnis dolorum alias molestiae expedita.', 77, 10, 1, 13, 470687, 1, 'Descamps-les-Bains', 'place Jean Morel\n42 261 Dijoux', '79329', 0, '2020-07-09 10:25:02', 'voluptatem-sint-placeat', '', '0000-00-00 00:00:00'),
(80, 'optio optio praesentium', 'Tempora quam sit autem sed et rerum consequuntur. Iure sit ducimus sit quia saepe voluptatem excepturi. Hic natus neque laboriosam sequi molestiae.', 222, 8, 6, 10, 122747, 0, 'PotierBourg', '99, chemin de Mendes\n15200 Costaboeuf', '98 531', 0, '2020-07-09 10:25:02', 'optio-optio-praesentium', '', '0000-00-00 00:00:00'),
(81, 'eaque ut voluptatem', 'Consequatur quisquam sequi sapiente. Impedit ipsa velit aut numquam. Alias suscipit error explicabo quasi quasi est non accusamus.', 192, 3, 6, 13, 498229, 1, 'Albert-les-Bains', '53, impasse Guy Navarro\n57 328 Dubois-la-Forêt', '77172', 0, '2020-07-09 10:25:02', 'eaque-ut-voluptatem', '', '0000-00-00 00:00:00'),
(82, 'sed excepturi nihil', 'Totam sint voluptatibus debitis omnis ex. Placeat dignissimos beatae doloremque. Ullam dolor esse et.', 107, 8, 5, 6, 624309, 1, 'Leconte', 'rue Robert Maillot\n63407 Dubois-sur-Mer', '65 524', 0, '2020-07-09 10:25:02', 'sed-excepturi-nihil', '', '0000-00-00 00:00:00'),
(83, 'dicta ipsa aut', 'Est sunt in consequuntur. Unde vel perferendis dolorem quasi modi quia possimus. Facere ullam cumque consequatur aut dolorum.', 100, 3, 2, 6, 234253, 0, 'Picard', '22, rue Duval\n47 455 RogerVille', '81043', 0, '2020-07-09 10:25:02', 'dicta-ipsa-aut', '', '0000-00-00 00:00:00'),
(84, 'culpa quasi et', 'Voluptatem error hic eos iusto eum totam ipsam a. Qui doloribus quasi pariatur quis adipisci nobis expedita. Qui maiores est occaecati.', 311, 6, 4, 6, 859829, 0, 'Rodrigues', '84, avenue de Martin\n25 957 Chauveau-sur-Berthelot', '63667', 0, '2020-07-09 10:25:02', 'culpa-quasi-et', '', '0000-00-00 00:00:00'),
(85, 'doloribus assumenda voluptas', 'Voluptate facilis et qui. Pariatur qui quam inventore quo et. Repellendus sunt nobis eum consequuntur laborum molestiae.', 169, 4, 9, 11, 591022, 0, 'Bonnin-sur-Delmas', '59, avenue de Durand\n99009 Rocher', '61729', 0, '2020-07-09 10:25:02', 'doloribus-assumenda-voluptas', '', '0000-00-00 00:00:00'),
(86, 'praesentium aspernatur sed', 'Aut distinctio quidem et et ut et deleniti. Fuga quis quo perspiciatis optio. Nihil consequuntur soluta qui.', 238, 7, 7, 5, 566365, 1, 'Potier', '63, rue Suzanne Bertin\n07 349 Lemonnier', '74 092', 0, '2020-07-09 10:25:02', 'praesentium-aspernatur-sed', '', '0000-00-00 00:00:00'),
(87, 'voluptatem est provident', 'Adipisci sunt accusantium esse et in atque. Modi dolor tempora placeat. Et dolorem cum alias quo vitae fugiat.', 76, 4, 3, 12, 554238, 1, 'Sanchez', '585, chemin Ollivier\n63 928 Becker', '96 546', 0, '2020-07-09 10:25:02', 'voluptatem-est-provident', '', '0000-00-00 00:00:00'),
(88, 'vel maxime commodi', 'Blanditiis dignissimos quod tenetur sit error dolorum et. Facilis quis aliquid ut ipsam sed. Consectetur aut rerum ut distinctio aut.', 72, 4, 2, 8, 356122, 0, 'Michel', '9, boulevard Noël Coulon\n47 903 Dijoux-sur-Chevallier', '60468', 0, '2020-07-09 10:25:02', 'vel-maxime-commodi', '', '0000-00-00 00:00:00'),
(89, 'rem ea voluptatem', 'Aut sint quia qui maiores quas in. Eligendi at tenetur ea quia. Reiciendis alias sed dolores quia itaque dolorem eos fugiat.', 266, 10, 6, 12, 754255, 0, 'Laine', '778, chemin de Mathieu\n59 161 Hernandez-sur-Mer', '16 969', 0, '2020-07-09 10:25:02', 'rem-ea-voluptatem', '', '0000-00-00 00:00:00'),
(90, 'eum similique maiores', 'Totam nihil et maiores distinctio quam sint ullam distinctio. Nihil doloremque nostrum nemo praesentium nulla earum cum eos. Nihil iure quisquam aut est.', 208, 9, 2, 7, 126947, 1, 'Morvan', '36, place de Denis\n92 463 Etienne-sur-Martel', '32177', 0, '2020-07-09 10:25:02', 'eum-similique-maiores', '', '0000-00-00 00:00:00'),
(91, 'excepturi sunt quia', 'Nihil architecto rerum minus expedita voluptatem sint exercitationem. Et deserunt animi doloribus ipsam sint eos quae. Autem est aperiam debitis incidunt dolorem labore ipsa sapiente.', 290, 9, 6, 8, 187126, 1, 'Schneidernec', '1, place Prevost\n86866 Lagarde', '60896', 0, '2020-07-09 10:25:02', 'excepturi-sunt-quia', '', '0000-00-00 00:00:00'),
(92, 'dolores tempore qui', 'Iste aperiam labore sequi dignissimos. Ex suscipit qui voluptas molestiae corporis dolor suscipit vel. Qui ad voluptate cupiditate enim illo.', 212, 9, 4, 12, 299615, 0, 'Rolland-les-Bains', 'avenue Bertrand Courtois\n35 287 Teixeira-sur-Charles', '53377', 0, '2020-07-09 10:25:02', 'dolores-tempore-qui', '', '0000-00-00 00:00:00'),
(93, 'quibusdam deleniti eveniet', 'Nobis cum illo libero voluptatem ut. Ut quia dolorem numquam odit nam numquam. Eos sunt officiis eos omnis est esse est.', 327, 6, 7, 12, 160106, 0, 'Dupuis', '5, chemin de Pichon\n68 299 Lagarde', '34457', 0, '2020-07-09 10:25:02', 'quibusdam-deleniti-eveniet', '', '0000-00-00 00:00:00'),
(94, 'pariatur cumque modi', 'Asperiores iusto sit dolore repudiandae voluptatem omnis a. Exercitationem ratione sed perspiciatis exercitationem et. Minima esse enim sint.', 57, 3, 9, 5, 496797, 1, 'Fournier', '68, rue de Marchal\n76249 Augerboeuf', '77625', 0, '2020-07-09 10:25:02', 'pariatur-cumque-modi', '', '0000-00-00 00:00:00'),
(95, 'facilis ut sed', 'Adipisci rerum aut maxime et est. Doloribus repellendus ducimus dolorem repellendus. Rerum maxime suscipit quas ipsum.', 116, 2, 1, 7, 716880, 1, 'RegnierVille', '6, rue Maggie Guyot\n52 528 Da Costa', '94670', 0, '2020-07-09 10:25:02', 'facilis-ut-sed', '', '0000-00-00 00:00:00'),
(96, 'praesentium est quis', 'Non ut eos animi quam ut saepe natus. Qui hic laudantium neque incidunt. Qui et dignissimos voluptate impedit doloremque.', 229, 4, 7, 4, 770377, 0, 'Gauthier', '829, rue de Traore\n95 839 Martelboeuf', '57 164', 0, '2020-07-09 10:25:02', 'praesentium-est-quis', '', '0000-00-00 00:00:00'),
(97, 'minus sint delectus', 'Qui nihil dignissimos laudantium eaque maiores recusandae voluptatibus fugiat. Vitae velit quidem deserunt est. Delectus et vero non saepe necessitatibus ut molestiae.', 240, 4, 2, 0, 669708, 0, 'Gosselin-sur-Mer', '41, avenue Vidal\n74 483 AllardBourg', '12 215', 0, '2020-07-09 10:25:02', 'minus-sint-delectus', '', '0000-00-00 00:00:00'),
(98, 'id omnis ut', 'Vitae similique aut fugit quo. Similique quia ex veritatis nobis ullam. Ab consequatur vel occaecati.', 347, 9, 3, 12, 831942, 1, 'Marty', '15, boulevard de Dupont\n89 382 Bousquet', '72 623', 0, '2020-07-09 10:25:02', 'id-omnis-ut', '', '0000-00-00 00:00:00'),
(99, 'quia at accusantium', 'Est ut et at ipsam nulla et qui temporibus. Officiis quas nobis accusantium qui nihil. Nemo exercitationem et incidunt natus neque deserunt.', 37, 10, 5, 3, 342142, 1, 'Bouchetnec', 'boulevard Lejeune\n42596 PerrotVille', '38 195', 0, '2020-07-09 10:25:02', 'quia-at-accusantium', '', '0000-00-00 00:00:00'),
(100, 'consectetur nesciunt id', 'Et est aperiam consequatur harum rerum. Labore adipisci ab mollitia ut. Temporibus doloremque aut voluptate ex.', 218, 4, 2, 1, 946456, 0, 'Rousset', '20, place de Marchal\n16 034 Dupontboeuf', '57 026', 0, '2020-07-09 10:25:02', 'consectetur-nesciunt-id', '', '0000-00-00 00:00:00'),
(101, 'officiis laborum est', 'Architecto aspernatur possimus provident officiis natus quidem voluptas. Quisquam libero et rerum eligendi. Veniam in asperiores modi at numquam.', 231, 4, 2, 5, 206764, 0, 'Diaz', '85, rue Antoine Perez\n81366 Lefort-sur-Mer', '54747', 0, '2020-07-09 10:25:02', 'officiis-laborum-est', '', '0000-00-00 00:00:00'),
(102, 'velit qui dolorem', 'Eius nesciunt mollitia facere laborum itaque aut quidem. Necessitatibus distinctio aspernatur dignissimos. Dolorem minima nesciunt et.', 184, 2, 2, 2, 389396, 0, 'Barre', '3, place Perrot\n53 485 BouvierVille', '28387', 0, '2020-07-09 10:25:02', 'velit-qui-dolorem', '', '0000-00-00 00:00:00'),
(103, 'earum laboriosam aspernatur', 'Sit molestiae maiores totam natus quos id ratione. Commodi et amet sit ut. Ea et earum id tempora.', 175, 2, 2, 9, 334836, 1, 'Lamy-sur-Boulay', '4, rue Thérèse Foucher\n54 419 Bourdon', '01295', 0, '2020-07-09 10:25:02', 'earum-laboriosam-aspernatur', '', '0000-00-00 00:00:00'),
(104, 'labore officiis repudiandae', 'Qui maxime ut libero voluptatem et dolor omnis. Eius quam quisquam aut mollitia error incidunt voluptatibus dolor. Sed perspiciatis quam et ut perspiciatis.', 37, 7, 5, 9, 159771, 1, 'Regnierdan', 'place Faivre\n90 187 Imbert-sur-Barthelemy', '73 611', 0, '2020-07-09 10:25:02', 'labore-officiis-repudiandae', '', '0000-00-00 00:00:00'),
(105, 'ut et quibusdam', 'Dolorum inventore repellat repellat enim provident nihil reprehenderit. Quod tenetur autem temporibus hic. Nulla et nobis quia et deserunt molestias.', 125, 3, 2, 7, 394279, 1, 'Rocher-sur-Lefort', '1, place de Leconte\n95467 Masson', '35 473', 0, '2020-07-09 10:25:02', 'ut-et-quibusdam', '', '0000-00-00 00:00:00'),
(106, 'et ipsa iusto', 'Sed possimus nihil aliquam placeat iste cupiditate dolor. Saepe dolores consequatur id provident. Id aspernatur hic tempore.', 118, 2, 3, 9, 233334, 0, 'Giraud-sur-Mer', '63, rue de Munoz\n17711 Marechal-sur-Deschamps', '13 220', 0, '2020-07-09 10:25:02', 'et-ipsa-iusto', '', '0000-00-00 00:00:00'),
(107, 'architecto ex aliquam', 'Sit quo sed sit libero. Cumque quibusdam rem facilis sit voluptatem. Asperiores quos ea voluptatum mollitia quia.', 133, 8, 8, 8, 376386, 1, 'LegendreVille', '654, rue Chantal Masson\n54 946 Bertindan', '94 886', 0, '2020-07-09 10:25:02', 'architecto-ex-aliquam', '', '0000-00-00 00:00:00'),
(108, 'quaerat placeat repellendus', 'Autem aut et suscipit quod maxime. Sunt quidem impedit culpa aut ad. Sed non iusto aliquam rerum autem sint et.', 157, 8, 2, 4, 937703, 0, 'Ruiz', '86, boulevard Anaïs Vincent\n48892 Verdiernec', '95186', 0, '2020-07-09 10:25:02', 'quaerat-placeat-repellendus', '', '0000-00-00 00:00:00'),
(109, 'recusandae voluptatum excepturi', 'Sunt repellendus tenetur ipsa qui ea. Ea nemo nulla a beatae voluptatibus enim. Repellendus praesentium a omnis dolorem.', 107, 2, 8, 13, 902392, 1, 'Roy', '3, boulevard Bernier\n43497 Maurice', '81 590', 0, '2020-07-09 10:25:02', 'recusandae-voluptatum-excepturi', '', '0000-00-00 00:00:00'),
(110, 'tempore quia aliquid', 'In dolorem aut dolores maiores repudiandae consequatur. Sit autem voluptatum voluptates expedita. Eos blanditiis quaerat rem dicta et ad hic.', 302, 6, 3, 15, 952963, 0, 'Traore', '21, boulevard Charles Mercier\n66895 Marchal', '84315', 0, '2020-07-09 10:25:02', 'tempore-quia-aliquid', '', '0000-00-00 00:00:00'),
(111, 'enim sapiente iure', 'Omnis laborum qui soluta temporibus sequi incidunt quis ea. Autem ducimus sed cum et. Temporibus accusamus aperiam aperiam voluptatem.', 105, 2, 7, 6, 250272, 0, 'LacombeBourg', 'boulevard Anaïs Leconte\n05210 Petit-les-Bains', '72795', 0, '2020-07-09 10:25:02', 'enim-sapiente-iure', '', '0000-00-00 00:00:00'),
(113, 'Mon super bien', 'Une petite description.', 150, 4, 4, 4, 150000, 0, 'Montpellier', '15 rue de test', '34000', 0, '2020-08-03 07:43:09', 'mon-super-bien', '5f27c00d8ba7e340751973.jpg', '2020-08-03 07:43:09'),
(114, 'Un nouveau bien', 'Une petite description.', 60, 5, 4, 4, 150000, 0, 'Montpellier', '15 rue de test', '34000', 0, '2020-08-19 16:24:31', 'un-nouveau-bien', '5f3d53ad5d9d7938513440.jpg', '2020-08-19 16:30:36');

-- --------------------------------------------------------

--
-- Structure de la table `property_option`
--

DROP TABLE IF EXISTS `property_option`;
CREATE TABLE IF NOT EXISTS `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`property_id`,`option_id`),
  KEY `IDX_24F16FCC549213EC` (`property_id`),
  KEY `IDX_24F16FCCA7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property_option`
--

INSERT INTO `property_option` (`property_id`, `option_id`) VALUES
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(19, 2),
(19, 3),
(113, 2),
(114, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(2, 'demo', '[]', '$2y$12$FdBkNGK4jDcptRjWXSBPP.JZqTSwlNvRXJvGg/qY4egHcjJCBLcl6');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
