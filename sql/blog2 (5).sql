-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 01 fév. 2018 à 11:28
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
  `titre` varchar(140) DEFAULT NULL,
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
(28, 'L\'émouvante lettre d\'adieu de Ronaldinho', ' \"Merci mon Dieu, pour cette vie que tu m\'as donnée, pour ma famille, mes amis et ma profession !!! Après trois décennies dédiées au football, je dis au revoir à mon plus grand rêve, un rêve qui s\'est réalisé !!! Pendant vingt ans, j\'ai fait ce que j\'aimais le plus professionnellement, sans oublier mes dix ans de formation.\r\nJ\'ai vécu de manière intense ce rêve d\'enfant. Chaque instant, les voyages, les victoires, les défaites, les critiques, l\'hymne national, le tunnel, le vestiaire, l\'entrée sur le terrain, les crampons que j\'ai utilisés, les bons et les mauvais ballons, les cracks avec qui j\'ai joué et ceux que j\'ai seulement pu affronter sur la play, mais que j\'admire encore aujourd\'hui ! Tout a été incroyable !!!\", écrit Ronaldinho.', 1, 'brouillon', 0, '2018-01-19 14:36:10'),
(29, 'Les huit finalistes du Trophée Jean Roug', ' Samedi 20 janvier, huit finalistes issus d\'un BTS cuisine, d\'un Bac Pro ou d\'un Bachelor vont concourir pour remporter le Trophée Jean Rougié. Ce concours de cuisine qui se déroule à Sarlat dans le Périgord noir met à l\'honneur la truffe et le foie gras. Le jury composé de 13 grands chefs est présidé pour cette édition 2018 par Régis Marcon.\r\n\r\n\r\nChaque candidat coaché par un professeur doit proposer deux plats :\r\n\r\nune pièce froide à base de foie gras et truffes\r\nun plat chaude à partir d’une fiche technique remise aux candidats 10 mn avant l’épreuve\r\n8 finalistes pour le Trophée Jean Rougié à Sarlat\r\nCe sont huit jeunes talents de la cuisine française qui ont été sélectionnés sur dossier, parmi tous les candidats, en proposant une aspic à base de foie gras, garnie ou accompagnée de truffe noire du Périgord. Lequel va prendre la succession d\'Emeline Parisy la lauréate du concours 2017 ?\r\n\r\nAlexis Dochain 19 ans, en BTS au du Lycée Quercy Périgord de Souillac (46). Il est coaché par son professeur Stéphane Augé\r\nValentin Vanbelle, 21 ans, en BTS au Lycée Hôtelier du Touquet (62). Il est coaché par son professeur Rémy Bauchet\r\nPierre-Olivier Bodescot, 21 ans, en Bachelor à l\'Institut Paul Bocuse à Ecully (69). Il est coaché par son professeur Fabien Lapée\r\nLudwig Bouchonet , 18 ans, en BTS au Lycée hôtelier de l\'orléanais à Olivet (45). Il est coachée par son professeur Jean-Benoit Pelletier\r\nAntoine Debonnaire, 20 ans, en BTS au Lycée François Rabelais de Dardilly (69). Il est coaché par son professeur Gwenaël Boudier\r\nEnzo Savournin, 20 ans, en BTS au Lycée hôtelier du sacré coeur à St Chépy d\'Apcher (48). Il est coaché par son professeur Patrick Bouffety\r\nYoann Chabanol 19 ans, en BTS au Lycée Lesdiguières de Grenoble (38). Il est coaché par son professeur Alain Fauconnet\r\nJames Boot 22 ans, en Brevet Pro à l\'Ecole des métiers du Lot de Cahors (46). Il est coaché par son professeur Dominique Campergue', 1, 'redige', 0, '2018-01-19 14:36:50'),
(30, 'Les pompiers interviennent pour un incen', ' Un important dégagement de fumée depuis l\'hôtel Grand Hyatt Martinez à Cannes, actuellement fermé et en plein chantier de rénovation, a alerté les pompiers jeudi soir vers 22 h 10.\r\nSix véhicules anti-incendie se sont rendus sur la Croisette, et les pompiers sont intervenus jusque vers 2 heures du matin dans les cuisines du palace.\r\n\r\nLe bilan des dégâts et l\'origine du foyer restent à déterminer.\r\n\r\n', 1, 'redige', 0, '2018-01-19 14:37:16'),
(31, 'Un éléphanteau de Sumatra, classé espèce', ' Moins d\'un mois après la mort d\'une éléphante gestante par empoisonnement en Indonésie, un éléphanteau de Sumatra est né dans une forêt protégée d\'Indonésie. L\'agence nationale chargée de la protection des espèces a rapporté l\'événement lundi 15 janvier 2018. L\'éléphant de Sumatra est une espèce protégée, mais la déforestation endémique des plantations a réduit son habitat naturel et l\'a placé en situation de conflit avec les humains. La mère, âgée de 40 ans, était surveillée de près par l\'agence de prévision des naissances dans une forêt de conservation à Riau, sur l\'île de Sumatra.\r\n\r\n\"Un cadeau de conservation\"\r\nLes membres de l\'agence ont exprimé leur joie à l\'arrivée du petit. \"La naissance de l\'éléphant est un cadeau de conservation\", a déclaré l\'agence dans un communiqué. L\'agence indonésienne se veut rassurante, elle ajoute \"L\'éléphanteau est constamment gardé par sa mère et deux autres éléphants adultes.\" La naissance de ce bébé éléphant dans le nord de l\'île de Sumatra était attendue par les agents nationaux, qui surveillaient la mère. Il serait âgé d\'une semaine et son sexe n\'a pas encore été déterminé.', 1, 'redige', 0, '2018-01-19 14:38:26'),
(32, 'Californie : la légalisation du cannabis', ' 70% des chouettes tachetées du Nord ont été au contact de biocides\r\nEn faisant des analyses sur des cadavres de chouettes trouvés à proximité de ces plantations, les scientifiques ont découvert que 7 chouettes sur 10 avaient été en contact avec des rodenticides. En analysant des échantillons provenant de 84 chouettes rayées (Strix varia), là encore les chercheurs ont trouvé des traces de biocides sur 40% d\'entre elles. Les anticoagulants contenus dans ces produits empêchent l\'organisme des mammifères et des oiseaux de renouveler la vitamine K, composé chimique nécessaire à la coagulation. Ces derniers sont alors susceptibles de mourir d\'une hémorragie interne. Les auteurs de l\'étude pensent que les chouettes tachetées du Nord et les chouettes rayées sont exposées à ces produits de part les proies qu\'elles consomment.\r\n', 1, 'redige', 0, '2018-01-19 14:38:58'),
(33, 'Australie : un loup observé pour la premi', ' \"Le premier loup sauvage est arrivé en Flandre !\", a déclaré le 11 janvier 2018 l\'association Landschap sur son site internet. En août 2011, les images d\'un spécimen avaient été captées par des caméras dans les Ardennes belges mais selon l\'hebdomadaire Le Vif, l\'absence de traces ADN ou de nouvelles observations n\'avait pas permis de confirmer la présence du prédateur dans le pays. Ainsi, depuis plus d\'un siècle aucun loup n\'avait été officiellement vu en\r\nSPONSORISE\r\nA partir de 449 € par mois avec un apport de 6 300 €\r\nModèle de base : F-PACE Pure 163ch. Sur 37 mois / 30 000 km. Entretien et garantie inclus\r\n\r\nPROPOSÉ PAR JAGUAR\r\nSuspendre le ciblage publicitaire Adyoulike\r\nBelgique jusqu\'à maintenant. \"Notre pays était le tout dernier sur le continent européen qui n\'avait pas encore été visité par des loups\", écrit l\'association.', 1, 'cache', 10, '2018-01-19 14:39:23'),
(50, 'Emilie joulie', ' 55222', 1, 'cache', 10, '2018-01-22 12:53:06'),
(51, 'Alerte au tsunami après un séisme de magnitude 8,1 au large ', ' A 10 h 31, un puissant tremblement de terre a été détecté dans le golfe de l’Alaska, à 249 kilomètres au sud-est de l’île de Kodiak, ont annoncé l’Institut de veille géologique américain (USGS) et les services américains d’alerte au tsunami. Selon l’USGS, l’épicentre se situerait à 10 km de profondeur.\r\nL’alerte au tsunami concerne l’Alaska, mais aussi l’Etat de Colombie-Britannique, au Canada, et l’ensemble de la côte ouest des Etats-Unis, soit les Etats de Washington, de l’Oregon et la Californie.', 1, 'brouillon', 10, '2018-01-23 11:48:26'),
(52, 'ACCUEIL  /  MÉTÉO ETIENNE EST OUF Recevez gratuitement notre newsletter La M', '  Météo France a actualité sa carte des vigilances ce mardi 23 janvier à 10 h. Désormais, 23 départements français sont placés en alerte orange « inondation ». Ils étaient 30 plus tôt ce matin. À Paris, la Seine continue de monter, et plusieurs rivières sont prêtes à sortir de leur lit, en particulier dans l’Est. En montagne, le risque d’avalanches est important, notamment à Chamonix où des mesures de confinement ont été prises.\r\n\r\n Risque d’inondations\r\nLa Seine devrait poursuivre sa crue dans les prochains jours, a averti lundi soir la préfecture de police de Paris, appelant à la « vigilance ».\r\n\r\n« Des inondations importantes sont possibles, y compris dans les zones rarement inondées », « des coupures d’électricité plus ou moins longues » et « des phénomènes de rupture ou de débordement de digues peuvent se produire », a pour sa part mis en garde le service d’informations sur le risque de crues (Vigicrues).\r\n\r\nDans les zones sous vigilance, il est conseillé de se mettre à l’abri, d’éviter les déplacements et de veiller à la protection des biens susceptibles d’être inondés ou emportés.\r\n\r\nLundi matin, les habitants d’Ornans (Doubs) ont été prévenus de la crue de la rivière Loue par une sirène. « La rue principale est inondée, le rez-de-chaussée de la mairie est dans l’eau, on n’avait pas vu une telle crue depuis 2002 », a dit le maire, Sylvain Ducret.\r\n\r\nDes pluies soutenues continuaient de doucher dans l’après-midi une grande partie de la France et vingt-sept autres départements étaient placés en vigilance orange.', 1, 'redige', 10, '2018-01-23 11:50:07'),
(53, 'Aux Philippines le trafic d\'animaux sauvages passe par Facebook', ' \"Les réseaux sociaux sont le nouvel épicentre des trafics\"\r\n\"Facebook est la plateforme de choix des braconniers aux Philippines à cause de sa popularité et de l\'insuffisance de ses systèmes de surveillance internes\", dit le rapport. \"L\'ampleur du trafic en ligne d\'animaux sauvages dépasse tout simplement l\'entendement\", a commenté Serene Chang, chargée de l\'Asie du Sud-Est de l\'organisation. \"Ce petit instantané montre comment les réseaux sociaux sont le nouvel épicentre du trafic de la faune sauvage\". Les groupes de discussions étudiés par l\'ONG dans lesquels étaient proposés des reptiles vivants avaient plus de 350.000 membres au début de l\'étude. La plupart des transactions étaient réalisées via le service Facebook Messenger, ajoute l\'organisation, qui dit que le trafic continue malgré des opérations régulières des autorités.\r\n\r\nPlus de la moitié des espèces concernées sont protégées au niveau international et par la loi philippine sur la faune sauvage, qui prévoit amendes et peines de prison pour les trafiquants. Des tortues rayonnées, des tortues de Hamilton ou des boas de Duméril en faisaient partie de même que des crocodiles des Philippines et tortues des forêts des Philippines en danger critique. Dans un communiqué, le service communication de Facebook a expliqué que le réseau ne tolérait pas ce genre de trafic, ajoutant qu\'il travaillait avec l\'ONG pour éradiquer le problème. \"Facebook ne permet pas la vente et le trafic d\'animaux en danger et n\'hésitera pas à effacer tout matériel qui violerait les normes de notre communauté lorsqu\'il nous est signalé\".', 1, 'redige', 10, '2018-01-23 11:51:23'),
(54, 'Epuisés par les tempêtes, plusieurs animaux échouent sur les plages des Landes', ' Depuis le début de l\'année, il n\'est pas rare de voir des animaux s\'échouer les plages des Landes. Ils sont épuisés par les tempêtes à répétition. Il y a eu la tortue découverte le 2 janvier dernier sur la plage de Lespecier à Mimizan, puis le bébé phoque retrouvé sur la plage de Soorts-Hossegor jeudi dernier. D\'ailleurs, Eléanor, en référence à la tempête qui l\'a faite dériver, va mieux. Prise en charge par l\'Aquarium de Biarritz, elle a commencé à s\'alimenter. \r\n\r\nDes oiseaux marins sont aussi victimes de ces très forts coups de vent. Près d\'une trentaine ont déjà été recueillis depuis début janvier à Alca Torda, le centre de soins pour la faune sauvage basé à Pouydesseaux. C\'est plus que l\'hiver dernier, à cause justement des tempêtes successives. \"Ils arrivent sur nos côtes suite aux nombreux  vents et intempéries que l\'on a au large, les oiseaux sont affaiblis et n\'ont pas du tout le temps de se remettre en forme\" explique Baptiste Verdoux, soigneur animalier depuis 3 ans à Alca Torda. \r\n\r\nLe centre de soins de la faune sauvage a recueillis quelques Tordas, des Fous de Bassan et surtout des Guillemots. \"Ils sont très déshydratés, ils ont pour la plupart ingéré du mazout ou en ont sur le plumage\" poursuit le soigneur. Alors, les quatre employés, épaulés par des bénévoles prodiguent des soins pour chaque oiseau : température, taux de déshydratation, risque d\'anémie, etc... pour établir un diagnostic. \r\n\r\nBonne nouvelle, Alca Torda a déjà relâché un macareux, trois Fous de Bassan et un Guillemot devrait retrouver son milieu naturel cette semaine. \r\n\r\nNe pas faire n\'importe quoi face à un oiseau épuisé\r\nSi dans les jours à venir, vous trouvez un oiseau en détresse sur la plage, _\"_il faut le récupérer et le mettre au chaud au plus vite , dans un carton, dans le noir, éviter les bruits et les mouvements trop brusques\" conseille Baptiste Verdoux, sans oublier une source de chaleur \"une bouillotte ou une bouteille d\'eau chaude\". Pour l’attraper, le soigneur préconise une serviette pour calmer l\'oiseau mais aussi éviter les coups de bec, car ces animaux restent sauvages. Une fois l\'oiseau mis au chaud, contacter le centre de soins Alca Torda, qui mettra en place le rapatriement de l\'oiseau à Pouydesseaux par le biais des bénévoles. D\'ailleurs, la structure cherche toujours des bénévoles sur la cote landaise, notamment au Nord entre Biscarrosse et Mimizan. ', 1, 'brouillon', 10, '2018-01-23 11:51:49'),
(55, 'ngfngn', ' ngngfngfng', 1, 'redige', 10, '2018-01-26 10:22:37'),
(56, 'Fossile trouvé en Israël : ce que cela change pour l’histoire de l’homme moderne', ' Cette découverte repousse d’au moins 50 000 ans la sortie d’Afrique de l’homme moderne.\r\nC’est une petite trace du passé qui éclaire d’un jour nouveau une partie de notre histoire. La mise au jour du fossile d’un fragment de mâchoire dans une grotte en Israël repousse d’au moins 50 000 ans la sortie d’Afrique de l’homme moderne, apportant un nouvel éclairage sur les croisements avec d’autres espèces comme les Néandertaliens. Explications.\r\n\r\nUne sortie d’Afrique plus tôt que prévu\r\nAvant cette découverte sur le site archéologique de Misliya, situé sur les pentes du mont Carmel, les plus anciens fossiles d’Homo sapiens trouvés hors d’Afrique dataient de 90 000 à 120 000 ans, précisent les chercheurs dont les travaux sont publiés jeudi dans Science.\r\n\r\nOr la partie gauche de cet os maxillaire supérieur, portant encore plusieurs dents, remonte à une période allant de 177 000 à 194 000 ans.', 1, 'brouillon', 10, '2018-01-26 10:52:43'),
(57, 'L’impact de l’intelligence artificielle sur l’emploi divise Davos', ' Si le bal des chefs d’Etat domine les agendas du 48e Forum économique mondial qui s’achève vendredi 26 janvier, l’invité vedette cette année à Davos (Suisse) n’est ni le président américain Donald Trump ni son homologue français Emmanuel Macron, mais bien l’intelligence artificielle.\r\n\r\nDe jeunes entrepreneurs brillants, venus du monde entier, se relaient pour faire des démonstrations, smartphone en main. Marc Benioff, le PDG de l’éditeur de logiciels Salesforce, explique que sa plate-forme d’intelligence artificielle maison, baptisée « Einstein », participe tous les lundis comme un « membre virtuel » à la réunion de son comité de direction.\r\n\r\nDans les boutiques de la ville transformées en « lab » par les entreprises partenaires du Forum, dans les tables rondes, dans les dîners, il n’est question que de « machine learning » ou de « deep tech ». Mais Davos n’est pas le Consumer Electronics Show (CES) de Las Vegas. Cet étalage s’accompagne d’un débat angoissant : cette nouvelle révolution industrielle va-t-elle conduire au chômage une grande partie de la population et aggraver encore les inégalités ? Sur ce point, les avis divergent.\r\n\r\n« Les gens ont peur de perdre leur travail  »\r\nLe constat initial, pourtant, semble bien partagé : les percées technologiques récentes accélèrent de façon brutale le phénomène d’automatisation engagé depuis des décennies. Si la grande distribution propose depuis longtemps des caisses automatiques, c’est bien l’intelligence artificielle qui a permis à Amazon d’ouvrir à Seattle, lundi 22 janvier, le premier point de vente sans aucune caisse.\r\n\r\nLes voitures sans pilote, les algorithmes qui gèrent le service après-vente, les scanners qui posent un diagnostic médical, voilà autant d’innovations, déjà opérationnelles ou qui le seront dans un avenir proche, ayant vocation à se substituer à des employés humains.\r\n\r\n« Depuis la première révolution industrielle, les gens ont peur de perdre leur...\r\n', 1, 'redige', 22, '2018-01-26 11:46:11');

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
(23, 7, 2),
(24, 7, 2),
(25, 8, 2),
(27, 8, 2),
(28, 10, 2),
(29, 10, 2),
(30, 14, 2),
(31, 15, 3),
(32, 17, 3),
(33, 20, 3),
(50, 10, 2),
(51, 10, 2),
(52, 10, 2),
(53, 10, 2),
(54, 10, 2),
(55, 10, 2),
(56, 10, 2),
(57, 22, 2);

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
(1, 'Porn Food'),
(2, 'Money'),
(3, 'Naughty Fun'),
(4, 'Porn Technology'),
(5, 'Travelsti'),
(6, 'Porn Animal');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_idT_CATEGORIES` int(11) NOT NULL,
  `T_ARTICLES_idT_ARTICLES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_categories_has_t_articles`
--

INSERT INTO `t_categories_has_t_articles` (`T_CATEGORIES_idT_CATEGORIES`, `T_ARTICLES_idT_ARTICLES`) VALUES
(1, 50),
(1, 53),
(2, 33),
(2, 50),
(2, 57),
(3, 51),
(4, 53),
(4, 56),
(5, 55),
(6, 33);

-- --------------------------------------------------------

--
-- Structure de la table `t_commentaires`
--

CREATE TABLE `t_commentaires` (
  `idT_COMMENTAIRES` int(11) NOT NULL,
  `T_USERS_idT_USERS` int(11) NOT NULL,
  `commentaire` varchar(250) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `T_ARTICLES_idT_ARTICLES` int(11) NOT NULL,
  `affichage` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_commentaires`
--

INSERT INTO `t_commentaires` (`idT_COMMENTAIRES`, `T_USERS_idT_USERS`, `commentaire`, `date`, `T_ARTICLES_idT_ARTICLES`, `affichage`) VALUES
(5, 10, ' J\'aime les loups c\'est joulie', '2018-01-22 16:25:54', 33, 1),
(6, 10, ' Super !', '2018-01-23 11:49:05', 51, 1),
(7, 10, ' dqsdqddddq', '2018-01-25 16:54:25', 54, 1),
(8, 10, ' dqsdqddddq', '2018-01-25 16:55:01', 54, 1),
(10, 10, ' dqsdqssdqsdqsds', '2018-01-25 16:55:34', 54, 1),
(12, 10, ' Salut !', '2018-01-25 17:05:23', 54, 1),
(13, 10, ' Salut !', '2018-01-25 17:05:23', 54, 1),
(14, 10, ' Salut !', '2018-01-25 17:05:23', 54, 1),
(15, 10, ' Salut !', '2018-01-25 17:05:23', 54, 1),
(16, 10, ' J\'aime les fraises', '2018-01-25 17:06:20', 54, 1),
(17, 10, ' bisous', '2018-01-25 17:07:57', 54, 1),
(18, 10, ' J\'aime les gens\n', '2018-01-25 17:08:20', 54, 1),
(19, 10, ' bisous', '2018-01-25 17:08:51', 54, 1);

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
-- Structure de la table `t_contactadmin`
--

CREATE TABLE `t_contactadmin` (
  `idT_CONTACTADMIN` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `content` text,
  `T_USERS_IDT_USERS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_contactadmin`
--

INSERT INTO `t_contactadmin` (`idT_CONTACTADMIN`, `titre`, `content`, `T_USERS_IDT_USERS`) VALUES
(1, 'Salut', 'Tout va bien', 10),
(2, 'Entrez l\'objet de votre eazeaz', 'aezaz', 10),
(3, 'eazea', 'eeeeeee', 10),
(4, 'eaze', 'Etienne est ouf', 10);

-- --------------------------------------------------------

--
-- Structure de la table `t_likes`
--

CREATE TABLE `t_likes` (
  `idT_LIKES` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_likes`
--

INSERT INTO `t_likes` (`idT_LIKES`, `ID_USER`, `ID_ARTICLE`) VALUES
(65, 10, 57);

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
  `actif` tinyint(1) DEFAULT '1',
  `T_ROLES_idT_ROLES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`idT_USERS`, `MDP`, `pseudo`, `email`, `actif`, `T_ROLES_idT_ROLES`) VALUES
(8, 'etienne', 'edebaze', 'e.debaze@gmail.com', 1, 1),
(10, 'emilie', 'EmilieFollin', 'emiliefollin@gmail.com', 1, 1),
(14, 'e', 'e', 'e@gmail.com', 1, 1),
(15, 'jer', 'jer', 'jer@gmail.com', 1, 1),
(17, 'emilie', 'Machin', 'machin@gmail.com', 1, 1),
(20, 'aaaa', 'jerome', 'pierome@gmail.com', 1, 1),
(21, 'aezeazeaez', 'eazeazeazae', 'debaze@gmail.com', 1, 1),
(22, 'ed', 'Edouard', 'ed@gmail.com', 1, 1),
(23, 'bb', 'Bernard', 'bb@gmail.com', 1, 1);

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
-- Index pour la table `t_contactadmin`
--
ALTER TABLE `t_contactadmin`
  ADD PRIMARY KEY (`idT_CONTACTADMIN`);

--
-- Index pour la table `t_likes`
--
ALTER TABLE `t_likes`
  ADD PRIMARY KEY (`idT_LIKES`);

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
  MODIFY `idT_ARTICLES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `idT_CATEGORIES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `t_commentaires`
--
ALTER TABLE `t_commentaires`
  MODIFY `idT_COMMENTAIRES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `t_contactadmin`
--
ALTER TABLE `t_contactadmin`
  MODIFY `idT_CONTACTADMIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_likes`
--
ALTER TABLE `t_likes`
  MODIFY `idT_LIKES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `idT_ROLES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `idT_USERS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
