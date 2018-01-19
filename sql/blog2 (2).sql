-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 19 jan. 2018 à 17:27
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog2`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `idT_ARTICLES` int(11) NOT NULL,
  `titre` varchar(40) DEFAULT NULL,
  `contenu` longtext,
  `affichage` tinyint(4) DEFAULT '1',
  `statut` varchar(45) NOT NULL DEFAULT 'post',
  `ID_USER` int(11) NOT NULL,
  `dateHeure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`idT_ARTICLES`, `titre`, `contenu`, `affichage`, `statut`, `ID_USER`, `dateHeure`) VALUES
(23, '', ' Bonjour à toutes et tous,\r\n\r\n\r\nPour cette journée d\'autonomie, je vous propose soit de continuer notre jeu de bataille en PHP, soit de finaliser le blog sur lequel nous travaillons depuis plusieurs jours.\r\n\r\nJeu de carte\r\nfinaliser l\'algorithme permettant à chaque jeu de tirer une carte aléatoirement\r\ncomparer sa carte avec celle de la machine\r\nprévoir un historique du jeu\r\net cerise sur le gâteau, faire un bel affichage avec des cartes.\r\nBlog\r\nfinaliser l\'affichage d\'article trier par heure\r\nréfléchir à une solution pour la pagination (LIMIT en SQL)\r\nconcevoir une interface d\'administration permettant de gérer les droits des utilisateurs\r\nprévoir le cas où l\'utilisateur perd son mot de passe (process de récupération).\r\n\r\nJe vous demanderai de me fournir des livrables : dépôt Git plus dump SQL.\r\n\r\nBon courage et bon weekend !\r\n\r\n\r\nFred', 1, 'redige', 1, '2018-01-19 10:32:27'),
(24, 'fgfgrf', ' gfgrfrgreg', 1, 'redige', 1, '2018-01-19 11:25:01'),
(25, 'Le cheval ', ' Le cheval (Equus ferus caballus ou Equus caballus) est un grand mammifère herbivore et ongulé à sabot unique, appartenant aux espèces de la famille des Équidés (Equidae). Il a évolué au cours des dernières 45 à 55 millions d\'années, à partir d\'un petit mammifère possédant plusieurs doigts. À l\'état naturel, les chevaux vivent en troupeaux, généralement sous la conduite d\'un unique étalon reproducteur. Ils entretiennent des rapports sociaux et comptent sur leur vitesse pour échapper à leurs prédateurs. Dotés d\'un bon sens de l\'équilibre, d\'un fort instinct de fuite et de grandes aptitudes de visualisation spatiales, ils possèdent un trait inhabituel dans le règne animal, étant capables d\'entrer en sommeil léger tout en restant debout. Les femelles, nommées juments, mettent bas après onze mois de gestation un petit appelé poulain, capable de se lever et de courir peu de temps après sa naissance.\r\n\r\n', 1, 'redige', 1, '2018-01-19 11:25:45'),
(27, 'Les bonnes raisons d\'aller à la salle de', ' Vous voulez vous défouler\r\nLe sport est un bon moyen de se vider l\'esprit en se défoulant. Désormais, certaines salles proposent des séances de boxe, voire de MMA pour évacuer tout le stress et l\'énergie négative du quotidien. Trouvez une salle où vous défouler.\r\nVous avez des objectifs sportifs\r\nUn marathon à courir ? Franchir la barre des 100kg au développé-couché ? Combler un déficit de force dans un art martial ou de vitesse dans un sport collectif ? 2018 sera votre année à condition d\'y mettre le nombre nécessaire d\'entraînements. Pour y arriver, ne sautez aucun entraînement et franchissez-le pas. \r\nVous voulez vous relaxer\r\nPrendre soin de son corps est une bonne chose. Prendre soin de son esprit en est une autre. Pour avoir un esprit sain dans un corps sain, rien ne vaut une séance de yoga. Vous allez pouvoir travailler de nombreuses facettes de votre corps et vous évader le temps d\'une séance. Voici où faire du yoga. \r\nVous voulez rester en bonne santé\r\nLe sport est une solution sans équivalent pour rester en bonne santé. Que cela soit pour entretenir votre système cardio-vasculaire ou solliciter vos muscles de manière quotidienne, une activité physique quotidienne n\'a que des avantages. Des maladies comme le diabète ou des cancers peuvent aussi être évitées. Si vous avez peur de tomber sur une pratique trop intense, choisissez la gymnastique ou l\'activité bien-être qu\'il vous faut.', 1, 'redige', 0, '2018-01-19 14:35:48'),
(28, 'L\'émouvante lettre d\'adieu de Ronaldinho', ' \"Merci mon Dieu, pour cette vie que tu m\'as donnée, pour ma famille, mes amis et ma profession !!! Après trois décennies dédiées au football, je dis au revoir à mon plus grand rêve, un rêve qui s\'est réalisé !!! Pendant vingt ans, j\'ai fait ce que j\'aimais le plus professionnellement, sans oublier mes dix ans de formation.\r\nJ\'ai vécu de manière intense ce rêve d\'enfant. Chaque instant, les voyages, les victoires, les défaites, les critiques, l\'hymne national, le tunnel, le vestiaire, l\'entrée sur le terrain, les crampons que j\'ai utilisés, les bons et les mauvais ballons, les cracks avec qui j\'ai joué et ceux que j\'ai seulement pu affronter sur la play, mais que j\'admire encore aujourd\'hui ! Tout a été incroyable !!!\", écrit Ronaldinho.', 1, 'redige', 0, '2018-01-19 14:36:10'),
(29, 'Les huit finalistes du Trophée Jean Roug', ' Samedi 20 janvier, huit finalistes issus d\'un BTS cuisine, d\'un Bac Pro ou d\'un Bachelor vont concourir pour remporter le Trophée Jean Rougié. Ce concours de cuisine qui se déroule à Sarlat dans le Périgord noir met à l\'honneur la truffe et le foie gras. Le jury composé de 13 grands chefs est présidé pour cette édition 2018 par Régis Marcon.\r\n\r\n\r\nChaque candidat coaché par un professeur doit proposer deux plats :\r\n\r\nune pièce froide à base de foie gras et truffes\r\nun plat chaude à partir d’une fiche technique remise aux candidats 10 mn avant l’épreuve\r\n8 finalistes pour le Trophée Jean Rougié à Sarlat\r\nCe sont huit jeunes talents de la cuisine française qui ont été sélectionnés sur dossier, parmi tous les candidats, en proposant une aspic à base de foie gras, garnie ou accompagnée de truffe noire du Périgord. Lequel va prendre la succession d\'Emeline Parisy la lauréate du concours 2017 ?\r\n\r\nAlexis Dochain 19 ans, en BTS au du Lycée Quercy Périgord de Souillac (46). Il est coaché par son professeur Stéphane Augé\r\nValentin Vanbelle, 21 ans, en BTS au Lycée Hôtelier du Touquet (62). Il est coaché par son professeur Rémy Bauchet\r\nPierre-Olivier Bodescot, 21 ans, en Bachelor à l\'Institut Paul Bocuse à Ecully (69). Il est coaché par son professeur Fabien Lapée\r\nLudwig Bouchonet , 18 ans, en BTS au Lycée hôtelier de l\'orléanais à Olivet (45). Il est coachée par son professeur Jean-Benoit Pelletier\r\nAntoine Debonnaire, 20 ans, en BTS au Lycée François Rabelais de Dardilly (69). Il est coaché par son professeur Gwenaël Boudier\r\nEnzo Savournin, 20 ans, en BTS au Lycée hôtelier du sacré coeur à St Chépy d\'Apcher (48). Il est coaché par son professeur Patrick Bouffety\r\nYoann Chabanol 19 ans, en BTS au Lycée Lesdiguières de Grenoble (38). Il est coaché par son professeur Alain Fauconnet\r\nJames Boot 22 ans, en Brevet Pro à l\'Ecole des métiers du Lot de Cahors (46). Il est coaché par son professeur Dominique Campergue', 1, 'redige', 0, '2018-01-19 14:36:50'),
(30, 'Les pompiers interviennent pour un incen', ' Un important dégagement de fumée depuis l\'hôtel Grand Hyatt Martinez à Cannes, actuellement fermé et en plein chantier de rénovation, a alerté les pompiers jeudi soir vers 22 h 10.\r\nSix véhicules anti-incendie se sont rendus sur la Croisette, et les pompiers sont intervenus jusque vers 2 heures du matin dans les cuisines du palace.\r\n\r\nLe bilan des dégâts et l\'origine du foyer restent à déterminer.\r\n\r\n', 1, 'redige', 0, '2018-01-19 14:37:16'),
(31, 'Un éléphanteau de Sumatra, classé espèce', ' Moins d\'un mois après la mort d\'une éléphante gestante par empoisonnement en Indonésie, un éléphanteau de Sumatra est né dans une forêt protégée d\'Indonésie. L\'agence nationale chargée de la protection des espèces a rapporté l\'événement lundi 15 janvier 2018. L\'éléphant de Sumatra est une espèce protégée, mais la déforestation endémique des plantations a réduit son habitat naturel et l\'a placé en situation de conflit avec les humains. La mère, âgée de 40 ans, était surveillée de près par l\'agence de prévision des naissances dans une forêt de conservation à Riau, sur l\'île de Sumatra.\r\n\r\n\"Un cadeau de conservation\"\r\nLes membres de l\'agence ont exprimé leur joie à l\'arrivée du petit. \"La naissance de l\'éléphant est un cadeau de conservation\", a déclaré l\'agence dans un communiqué. L\'agence indonésienne se veut rassurante, elle ajoute \"L\'éléphanteau est constamment gardé par sa mère et deux autres éléphants adultes.\" La naissance de ce bébé éléphant dans le nord de l\'île de Sumatra était attendue par les agents nationaux, qui surveillaient la mère. Il serait âgé d\'une semaine et son sexe n\'a pas encore été déterminé.', 1, 'redige', 0, '2018-01-19 14:38:26'),
(32, 'Californie : la légalisation du cannabis', ' 70% des chouettes tachetées du Nord ont été au contact de biocides\r\nEn faisant des analyses sur des cadavres de chouettes trouvés à proximité de ces plantations, les scientifiques ont découvert que 7 chouettes sur 10 avaient été en contact avec des rodenticides. En analysant des échantillons provenant de 84 chouettes rayées (Strix varia), là encore les chercheurs ont trouvé des traces de biocides sur 40% d\'entre elles. Les anticoagulants contenus dans ces produits empêchent l\'organisme des mammifères et des oiseaux de renouveler la vitamine K, composé chimique nécessaire à la coagulation. Ces derniers sont alors susceptibles de mourir d\'une hémorragie interne. Les auteurs de l\'étude pensent que les chouettes tachetées du Nord et les chouettes rayées sont exposées à ces produits de part les proies qu\'elles consomment.\r\n', 1, 'redige', 0, '2018-01-19 14:38:58'),
(33, 'Belgique : un loup observé pour la premi', ' \"Le premier loup sauvage est arrivé en Flandre !\", a déclaré le 11 janvier 2018 l\'association Landschap sur son site internet. En août 2011, les images d\'un spécimen avaient été captées par des caméras dans les Ardennes belges mais selon l\'hebdomadaire Le Vif, l\'absence de traces ADN ou de nouvelles observations n\'avait pas permis de confirmer la présence du prédateur dans le pays. Ainsi, depuis plus d\'un siècle aucun loup n\'avait été officiellement vu en\r\nSPONSORISE\r\nA partir de 449 € par mois avec un apport de 6 300 €\r\nModèle de base : F-PACE Pure 163ch. Sur 37 mois / 30 000 km. Entretien et garantie inclus\r\n\r\nPROPOSÉ PAR JAGUAR\r\nSuspendre le ciblage publicitaire Adyoulike\r\nBelgique jusqu\'à maintenant. \"Notre pays était le tout dernier sur le continent européen qui n\'avait pas encore été visité par des loups\", écrit l\'association.', 1, 'redige', 0, '2018-01-19 14:39:23');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles_has_t_users`
--

INSERT INTO `t_articles_has_t_users` (`T_ARTICLES_ID_ARTICLE`, `T_USERS_ID_USER`, `T_USERS_T_ROLES_ID_ROLE`) VALUES
(29, 7, 2),
(30, 9, 2),
(31, 12, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `idT_CATEGORIES` int(11) NOT NULL,
  `categorie` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories`
--

INSERT INTO `t_categories` (`idT_CATEGORIES`, `categorie`) VALUES
(1, 'sport'),
(2, 'musique'),
(3, 'animaux'),
(4, 'cinéma'),
(5, 'cuisine');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_idT_CATEGORIES` int(11) NOT NULL,
  `T_ARTICLES_idT_ARTICLES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaires`
--

CREATE TABLE `t_commentaires` (
  `idT_COMMENTAIRES` int(11) NOT NULL,
  `T_USERS_idT_USERS` int(11) NOT NULL,
  `commentaire` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `T_ARTICLES_idT_ARTICLES` int(11) NOT NULL,
  `affichage` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaires_has_t_users`
--

CREATE TABLE `t_commentaires_has_t_users` (
  `T_COMMENTAIRES_idT_COMMENTAIRES` int(11) NOT NULL,
  `T_COMMENTAIRES_T_USERS_idT_USERS` int(11) NOT NULL,
  `T_COMMENTAIRES_T_ARTICLES_idT_ARTICLES` int(11) NOT NULL,
  `T_USERS_idT_USERS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `idT_ROLES` int(11) NOT NULL,
  `roles` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`idT_ROLES`, `roles`) VALUES
(1, 'ROLE_SUPERADMIN'),
(2, 'ROLE_MODERATEUR'),
(3, 'ROLE_REDACTEUR'),
(4, 'ROLE_UTILISATEUR'),
(5, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `idT_USERS` int(11) NOT NULL,
  `MDP` varchar(45) DEFAULT NULL,
  `pseudo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `T_ROLES_idT_ROLES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`idT_USERS`, `MDP`, `pseudo`, `email`, `admin`, `T_ROLES_idT_ROLES`) VALUES
(7, 'dqsdqddqsdsqsdqdqsd', 'dqsdsq', 'emiliefollin@gmail.com', 1, 1),
(8, 'emiliejolie', 'edebaze', 'e.debaze@gmail.com', 1, 1),
(10, 'emilie', 'EmilieFollin', 'emiliefollin@gmail.com', 1, 1),
(14, 'e', 'E', 'e@gmail.com', 1, 1),
(15, 'jer', 'jer', 'jer@gmail.com', 1, 1),
(17, 'emilie', 'Machin', 'machin@gmail.com', 1, 1),
(20, 'aaaa', 'jerome', 'pierome@gmail.com', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`idT_ARTICLES`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`idT_CATEGORIES`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_idT_CATEGORIES`,`T_ARTICLES_idT_ARTICLES`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_idT_ARTICLES`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_idT_CATEGORIES`);

--
-- Index pour la table `t_commentaires`
--
ALTER TABLE `t_commentaires`
  ADD PRIMARY KEY (`idT_COMMENTAIRES`,`T_USERS_idT_USERS`,`T_ARTICLES_idT_ARTICLES`),
  ADD KEY `fk_T_COMMENTAIRES_T_ARTICLES1_idx` (`T_ARTICLES_idT_ARTICLES`);

--
-- Index pour la table `t_commentaires_has_t_users`
--
ALTER TABLE `t_commentaires_has_t_users`
  ADD PRIMARY KEY (`T_COMMENTAIRES_idT_COMMENTAIRES`,`T_COMMENTAIRES_T_USERS_idT_USERS`,`T_COMMENTAIRES_T_ARTICLES_idT_ARTICLES`,`T_USERS_idT_USERS`),
  ADD KEY `fk_T_COMMENTAIRES_has_T_USERS_T_USERS1_idx` (`T_USERS_idT_USERS`),
  ADD KEY `fk_T_COMMENTAIRES_has_T_USERS_T_COMMENTAIRES1_idx` (`T_COMMENTAIRES_idT_COMMENTAIRES`,`T_COMMENTAIRES_T_USERS_idT_USERS`,`T_COMMENTAIRES_T_ARTICLES_idT_ARTICLES`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`idT_ROLES`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`idT_USERS`,`T_ROLES_idT_ROLES`),
  ADD KEY `fk_T_USERS_T_ROLES1_idx` (`T_ROLES_idT_ROLES`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `idT_ARTICLES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `idT_CATEGORIES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_commentaires`
--
ALTER TABLE `t_commentaires`
  MODIFY `idT_COMMENTAIRES` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `idT_ROLES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `idT_USERS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_idT_ARTICLES`) REFERENCES `t_articles` (`idT_ARTICLES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_idT_CATEGORIES`) REFERENCES `t_categories` (`idT_CATEGORIES`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_commentaires`
--
ALTER TABLE `t_commentaires`
  ADD CONSTRAINT `fk_T_COMMENTAIRES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_idT_ARTICLES`) REFERENCES `t_articles` (`idT_ARTICLES`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_commentaires_has_t_users`
--
ALTER TABLE `t_commentaires_has_t_users`
  ADD CONSTRAINT `fk_T_COMMENTAIRES_has_T_USERS_T_COMMENTAIRES1` FOREIGN KEY (`T_COMMENTAIRES_idT_COMMENTAIRES`,`T_COMMENTAIRES_T_USERS_idT_USERS`,`T_COMMENTAIRES_T_ARTICLES_idT_ARTICLES`) REFERENCES `t_commentaires` (`idT_COMMENTAIRES`, `T_USERS_idT_USERS`, `T_ARTICLES_idT_ARTICLES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_COMMENTAIRES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_idT_USERS`) REFERENCES `t_users` (`idT_USERS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES1` FOREIGN KEY (`T_ROLES_idT_ROLES`) REFERENCES `t_roles` (`idT_ROLES`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
