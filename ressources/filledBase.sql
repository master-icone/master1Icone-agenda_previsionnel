-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Novembre 2016 à 14:01
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_m1`
--

-- --------------------------------------------------------

--
-- Structure de la table `autorisations`
--

CREATE TABLE `autorisations` (
  `id` int(11) NOT NULL,
  `label` text,
  `peutModifier` int(11) DEFAULT NULL,
  `peutAcceder` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `autorisations`
--

INSERT INTO `autorisations` (`id`, `label`, `peutModifier`, `peutAcceder`) VALUES
(1, 'erat neque non quam. Pellentesque', 0, 0),
(6, 'enim', 0, 1),
(11, 'dolor dapibus gravida.', 1, 0),
(16, 'quis, pede. Praesent', 1, 0),
(21, 'Cras dolor dolor,', 1, 0),
(26, 'Aliquam', 0, 1),
(31, 'Aliquam', 1, 1),
(36, 'commodo at, libero. Morbi accumsan', 1, 0),
(41, 'sit amet, dapibus id, blandit', 0, 0),
(46, 'Proin dolor. Nulla semper', 0, 0),
(51, 'ut cursus luctus, ipsum', 0, 1),
(56, 'senectus et netus et', 1, 1),
(61, 'arcu.', 1, 0),
(66, 'quis,', 0, 1),
(71, 'hendrerit id,', 0, 0),
(76, 'at, iaculis quis, pede.', 1, 1),
(81, 'iaculis, lacus pede sagittis augue,', 0, 0),
(86, 'risus varius orci,', 1, 1),
(91, 'ligula. Aenean', 1, 0),
(96, 'ipsum sodales purus,', 0, 0),
(101, 'lectus rutrum urna,', 1, 0),
(106, 'aliquet magna a', 1, 0),
(111, 'Integer mollis. Integer tincidunt', 0, 1),
(116, 'dui, nec', 1, 0),
(121, 'ad litora torquent', 0, 0),
(126, 'in consequat', 1, 0),
(131, 'consectetuer adipiscing elit. Curabitur sed', 0, 0),
(136, 'felis.', 0, 1),
(141, 'In', 1, 1),
(146, 'sit amet', 1, 1),
(151, 'dapibus rutrum,', 1, 0),
(156, 'Cum sociis', 1, 0),
(161, 'Curabitur massa.', 1, 1),
(166, 'aliquam', 1, 0),
(171, 'sapien, cursus', 1, 1),
(176, 'Nunc pulvinar arcu', 1, 0),
(181, 'bibendum ullamcorper.', 1, 0),
(186, 'mi felis, adipiscing fringilla, porttitor', 0, 0),
(191, 'habitant morbi tristique senectus et', 1, 1),
(196, 'odio', 1, 1),
(201, 'ligula. Aenean euismod', 1, 1),
(206, 'vulputate ullamcorper magna.', 0, 1),
(211, 'pede. Nunc sed orci', 1, 0),
(216, 'faucibus. Morbi vehicula. Pellentesque', 0, 1),
(221, 'et,', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `coefficients`
--

CREATE TABLE `coefficients` (
  `idTypeEnseignement` int(11) NOT NULL,
  `idStatut` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `coefficients`
--

INSERT INTO `coefficients` (`idTypeEnseignement`, `idStatut`) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `decharges`
--

CREATE TABLE `decharges` (
  `id` int(11) NOT NULL,
  `enseignant` int(11) DEFAULT NULL,
  `raison` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `decharges`
--

INSERT INTO `decharges` (`id`, `enseignant`, `raison`) VALUES
(1000, 1053, 'quam vel sapien'),
(1001, 1079, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse'),
(1002, 1050, 'semper rutrum. Fusce dolor quam, elementum at, egestas a,'),
(1003, 1054, 'tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis'),
(1004, 1070, 'orci luctus et ultrices'),
(1005, 1098, 'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis'),
(1006, 1095, 'Morbi sit amet'),
(1007, 1086, 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque'),
(1008, 1082, 'eros nec tellus. Nunc lectus pede, ultrices a,'),
(1009, 1098, 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),
(1010, 1063, 'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing'),
(1011, 1059, 'vitae sodales nisi magna sed dui. Fusce aliquam, enim'),
(1012, 1063, 'urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.'),
(1013, 1082, 'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.'),
(1014, 1050, 'consectetuer, cursus et, magna. Praesent interdum'),
(1015, 1054, 'nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam'),
(1016, 1056, 'enim, gravida sit amet, dapibus id, blandit at,'),
(1017, 1099, 'lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium'),
(1018, 1067, 'luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque'),
(1019, 1057, 'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem'),
(1020, 1092, 'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit'),
(1021, 1078, 'massa non ante bibendum ullamcorper. Duis cursus, diam'),
(1022, 1090, 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper'),
(1023, 1069, 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus'),
(1024, 1054, 'libero lacus, varius et, euismod et, commodo at, libero.'),
(1025, 1057, 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit'),
(1026, 1058, 'Mauris molestie pharetra nibh. Aliquam ornare, libero at'),
(1027, 1099, 'interdum. Sed'),
(1028, 1072, 'adipiscing elit. Etiam laoreet, libero et tristique'),
(1029, 1082, 'metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada'),
(1030, 1076, 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.'),
(1031, 1069, 'ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla'),
(1032, 1065, 'non quam. Pellentesque habitant morbi tristique senectus et netus et'),
(1033, 1092, 'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum'),
(1034, 1085, 'adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et,'),
(1035, 1093, 'ac mi eleifend egestas.'),
(1036, 1067, 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum'),
(1037, 1085, 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas'),
(1038, 1056, 'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est'),
(1039, 1092, 'ultrices posuere cubilia Curae; Donec'),
(1040, 1093, 'molestie in, tempus');

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `idUE` int(11) NOT NULL,
  `idEnseignant` int(11) NOT NULL,
  `nbHeures` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `interventions`
--

INSERT INTO `interventions` (`idUE`, `idEnseignant`, `nbHeures`) VALUES
(109, 1057, 500),
(114, 1070, 5),
(115, 1088, 7),
(103, 1054, 5),
(102, 1064, 6),
(107, 1055, 5),
(140, 1096, 12),
(111, 1090, 6),
(124, 1086, 8),
(133, 1060, 12),
(109, 1063, 9),
(137, 1052, 12),
(121, 1073, 19),
(128, 1078, 11),
(105, 1079, 9),
(104, 1076, 18),
(138, 1051, 5),
(123, 1074, 13),
(110, 1094, 5),
(132, 1061, 10),
(120, 1093, 20),
(102, 1082, 6),
(107, 1081, 8),
(110, 1070, 25200),
(134, 1083, 5),
(104, 1098, 7),
(100, 1061, 15),
(112, 1096, 8),
(110, 1067, 5),
(115, 1086, 10),
(137, 1063, 17),
(132, 1065, 15),
(116, 1067, 8),
(102, 1060, 16),
(134, 1056, 20),
(132, 1058, 20),
(139, 1099, 8);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `login` text,
  `password` text,
  `nom` text,
  `prenom` text,
  `mail` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnel`
--

INSERT INTO `personnel` (`id`, `login`, `password`, `nom`, `prenom`, `mail`) VALUES
(1000, 'Tran', 'ESA35IAV4GR', 'Morgan', 'Wynter', 'risus@enim.ca'),
(1001, 'Sexton', 'FCW19EPZ1CI', 'Hancock', 'Aurora', 'felis.Nulla.tempor@Inscelerisquescelerisque.edu'),
(1002, 'Swanson', 'NCZ34OKZ0OV', 'Gray', 'Donovan', 'orci.luctus@dictumsapien.edu'),
(1003, 'Pearson', 'AMU54HZA5KV', 'Hansen', 'Joseph', 'Duis@auctornon.ca'),
(1004, 'Mcguire', 'HBC14GRG9TD', 'Cooper', 'Chantale', 'ullamcorper.nisl.arcu@Aenean.co.uk'),
(1005, 'Barron', 'MMU04ZWX1BN', 'Glover', 'Halla', 'morbi.tristique.senectus@adipiscingelit.ca'),
(1006, 'Davis', 'JST70AKX7HG', 'Whitley', 'Riley', 'Quisque.fringilla@sitametconsectetuer.ca'),
(1007, 'Carver', 'XJT42RUN9IM', 'Carver', 'Gail', 'ultrices.mauris.ipsum@temporarcuVestibulum.ca'),
(1008, 'Carney', 'TDV12MPZ2VS', 'Bailey', 'Aubrey', 'augue@necmauris.net'),
(1009, 'Carson', 'RGO25CUC1HF', 'Sosa', 'Graham', 'semper@pedeSuspendissedui.co.uk'),
(1010, 'Wiley', 'VBV61EZG8VP', 'Reynolds', 'Keiko', 'enim.diam@metus.com'),
(1011, 'Finley', 'HUM95FNN8LL', 'Austin', 'Neville', 'lobortis.nisi@sed.edu'),
(1012, 'Gibbs', 'GPJ76AII9NG', 'Roth', 'Addison', 'molestie.sodales.Mauris@fringillaestMauris.co.uk'),
(1013, 'Hester', 'NUX64XHF3HE', 'Perkins', 'Ina', 'a.magna.Lorem@magna.com'),
(1014, 'Montoya', 'LGA14OVI7OJ', 'Leonard', 'Nigel', 'eu.sem@Curabiturmassa.com'),
(1015, 'Nguyen', 'ZQO80AZK6OQ', 'Kidd', 'Kieran', 'auctor.vitae@Donec.org'),
(1016, 'Holloway', 'HEL73NKD8PJ', 'Marsh', 'Igor', 'fringilla.cursus.purus@parturientmontesnascetur.org'),
(1017, 'Mcmahon', 'KTK78PMS1RS', 'Sellers', 'Felicia', 'urna.nec.luctus@quamdignissimpharetra.org'),
(1018, 'Pace', 'FVG79JZC4QW', 'Mcbride', 'Jonas', 'nisi@Integer.edu'),
(1019, 'Pittman', 'JRR72MHZ3ID', 'Rivers', 'Gail', 'scelerisque.dui@Cumsociis.com'),
(1020, 'Evans', 'WIR04HBH3HL', 'Young', 'Katell', 'sem.ut@etmagnis.com'),
(1021, 'Odom', 'NKC08RLH7UN', 'Harding', 'Bruce', 'diam@egetlaoreet.ca'),
(1022, 'Monroe', 'TLY74PVY7EL', 'Torres', 'Barrett', 'volutpat@Mauris.com'),
(1023, 'Colon', 'EFW35OFB3RU', 'Soto', 'Cain', 'Nunc@sapiengravidanon.co.uk'),
(1024, 'Mathews', 'FGF34MWQ0FG', 'Serrano', 'Harriet', 'quam@estNuncullamcorper.edu'),
(1025, 'Wolfe', 'ZLO56LPB2QM', 'Houston', 'Teegan', 'porttitor.eros.nec@egestasadui.ca'),
(1026, 'Monroe', 'GIV73GEN4UR', 'Curtis', 'Harlan', 'ut.pharetra.sed@risusDonec.org'),
(1027, 'Carney', 'PPO39DGK0UH', 'Nichols', 'Angelica', 'augue.malesuada@sodalespurusin.net'),
(1028, 'Alston', 'CVZ63WKC7CA', 'Mendez', 'Carol', 'et@purusDuiselementum.edu'),
(1029, 'Holt', 'QXM70GWR6AF', 'Coffey', 'Blair', 'ligula@nec.com'),
(1030, 'Barlow', 'WJT20GPJ5QQ', 'Cannon', 'Harding', 'justo.sit.amet@quisurna.org'),
(1031, 'Reilly', 'DMT97EHT3JM', 'Flores', 'Ocean', 'vel.est.tempor@a.net'),
(1032, 'Maddox', 'ZFJ14PDM2DB', 'Mccoy', 'Palmer', 'metus.In.lorem@tempor.net'),
(1033, 'Smith', 'WZB69IJP8OE', 'Maynard', 'Quamar', 'auctor.nunc@iaculisquispede.edu'),
(1034, 'Beasley', 'FQC99GTE2IS', 'Sellers', 'Beatrice', 'rutrum.Fusce.dolor@etlaciniavitae.net'),
(1035, 'Mosley', 'GBX68OPM1WG', 'Jensen', 'Jaden', 'Curabitur.consequat@apurus.edu'),
(1036, 'Cherry', 'UHT16VKW9HB', 'Mccarthy', 'Jasmine', 'nunc.interdum.feugiat@erosProin.ca'),
(1037, 'Farrell', 'VLV88CHC5CO', 'Hopkins', 'Henry', 'molestie.tellus@mienimcondimentum.org'),
(1038, 'Cole', 'IPZ60AZA6YI', 'Clarke', 'Orli', 'sit.amet.risus@dolor.co.uk'),
(1039, 'Flores', 'GLL08FJF8FP', 'Estrada', 'Aladdin', 'justo.eu@sagittisaugue.edu'),
(1040, 'Everett', 'JVX76WAM4WY', 'Gonzalez', 'Stuart', 'erat.in.consectetuer@duinec.ca'),
(1041, 'Griffith', 'AUX54IPB2NA', 'Mueller', 'Thane', 'congue@Integer.edu'),
(1042, 'Hopkins', 'JDY23WJJ4HJ', 'Whitehead', 'Harding', 'eu@tristiquepharetraQuisque.co.uk'),
(1043, 'Huber', 'KEC41OXR8EI', 'Gray', 'Bertha', 'enim.nisl@montesnascetur.edu'),
(1044, 'Carney', 'ORL55VMJ4QT', 'Paul', 'Jakeem', 'aliquet.nec.imperdiet@aenimSuspendisse.co.uk'),
(1045, 'Workman', 'SXX00GBX9AW', 'Ray', 'Dylan', 'ipsum.Suspendisse@semperauctor.co.uk'),
(1046, 'Frazier', 'GED66QAO2IW', 'Swanson', 'Cheyenne', 'Maecenas@estmollisnon.ca'),
(1047, 'Bass', 'LPP99VWZ3LM', 'Mathews', 'Gay', 'placerat.orci@rhoncusNullam.com'),
(1048, 'Jacobs', 'PQZ72QSL3LM', 'Rivas', 'Irma', 'vestibulum.lorem.sit@nostraperinceptos.co.uk'),
(1049, 'Chambers', 'TZS66FGI5EK', 'Lewis', 'Callum', 'Proin@ultricesVivamus.edu'),
(1050, 'Lawrence', 'KYX30UDP2KS', 'Daniel', 'Nigel', 'Maecenas.mi@iaculis.ca'),
(1051, 'Love', 'LHC15XIP6DG', 'Burgess', 'Glenna', 'vestibulum@mauris.edu'),
(1052, 'Howell', 'TMY04KEL9QA', 'Landry', 'Calista', 'Vivamus.molestie@auguescelerisquemollis.co.uk'),
(1053, 'Lane', 'URA94LPI7TY', 'Barnes', 'Guinevere', 'non@ultricesposuerecubilia.ca'),
(1054, 'Lindsey', 'HLF60UBX2GQ', 'Odom', 'Vernon', 'sodales.nisi.magna@ullamcorper.ca'),
(1055, 'Hall', 'CQM56OAA5FX', 'Navarro', 'Kristen', 'diam@quis.com'),
(1056, 'Langley', 'QAH45MBC4OM', 'Michael', 'Chancellor', 'ante.dictum.cursus@Proin.com'),
(1057, 'Watts', 'DBD60XMG2ZH', 'Mcgowan', 'Michael', 'dictum@duiquis.org'),
(1058, 'Mullen', 'MPE56SOV6ZF', 'Gilbert', 'Lance', 'Cum.sociis.natoque@acnulla.edu'),
(1059, 'Hardin', 'XVK68LQO8XT', 'Chang', 'Hop', 'ante.blandit@pedeCras.edu'),
(1060, 'Freeman', 'DAP16KXM0ZN', 'Riley', 'Alexa', 'eu.nibh@euligula.com'),
(1061, 'Sherman', 'EFI16KXZ4UO', 'Tate', 'Shelley', 'malesuada@convallis.net'),
(1062, 'Terrell', 'CYS53YAQ5TY', 'Chandler', 'Erin', 'ad.litora.torquent@quis.edu'),
(1063, 'Perry', 'DOT54VDV9CR', 'Cohen', 'Adara', 'sit.amet@Maurisnondui.com'),
(1064, 'Hernandez', 'TEU10AYJ0EO', 'Nielsen', 'Pandora', 'gravida.molestie.arcu@nullaIntincidunt.net'),
(1065, 'Hampton', 'WWZ45OQC4EA', 'Wood', 'Azalia', 'semper.rutrum@libero.ca'),
(1066, 'Burch', 'MHR40BEC0QJ', 'Frederick', 'Nyssa', 'dolor.dapibus.gravida@parturientmontes.edu'),
(1067, 'Ford', 'OFP02CIR4SV', 'Barber', 'Nell', 'Aliquam@Aliquamtincidunt.org'),
(1068, 'Stark', 'GES07WQM3RN', 'Witt', 'Jenette', 'ut.mi.Duis@Etiambibendumfermentum.edu'),
(1069, 'Glover', 'OKI98HCG5CL', 'Benjamin', 'Harriet', 'eget.mollis.lectus@pharetra.net'),
(1070, 'Casey', 'QQE47ZWI1XG', 'Curtis', 'Serena', 'Phasellus.at@natoque.co.uk'),
(1071, 'Quinn', 'FYJ61LOC5RC', 'Baker', 'Geraldine', 'ante.Nunc.mauris@dolor.ca'),
(1072, 'Blair', 'ZOF00TTN5YR', 'Nunez', 'Hop', 'auctor.nunc.nulla@Quisque.co.uk'),
(1073, 'Rich', 'NMB59XBW5HR', 'Valdez', 'Sophia', 'tortor.Nunc.commodo@nunc.org'),
(1074, 'Warner', 'TRC75USI8MU', 'Beard', 'Herman', 'Phasellus.at@metusurnaconvallis.co.uk'),
(1075, 'Calderon', 'OZS43MUV1TZ', 'Barrera', 'Justin', 'arcu.Vestibulum.ante@vitae.org'),
(1076, 'Mcneil', 'ZLA34DSJ7FS', 'Boyd', 'Troy', 'semper.et@eu.com'),
(1077, 'Wolfe', 'GIC55CKC3DP', 'Abbott', 'Kirestin', 'arcu@Suspendissenon.ca'),
(1078, 'Gaines', 'MLA56IST7KP', 'Bentley', 'Adele', 'molestie.pharetra.nibh@pellentesquemassa.co.uk'),
(1079, 'Silva', 'NDG07KYA8NB', 'Baxter', 'Kevin', 'Suspendisse.sed@ac.edu'),
(1080, 'Bailey', 'JWI23GLP9IX', 'Hampton', 'Todd', 'mollis.Integer@Phasellusat.ca'),
(1081, 'Key', 'WAX38GEX4VL', 'Clark', 'Jenette', 'eu.ultrices.sit@sociosquad.com'),
(1082, 'Langley', 'UQB45NIW4XS', 'Gallegos', 'Cameron', 'Aenean.sed.pede@nislNullaeu.com'),
(1083, 'Ramirez', 'PXZ54DQI4EQ', 'French', 'Hall', 'nec@hymenaeos.ca'),
(1084, 'Rose', 'PHA81MCL1VS', 'Marks', 'Kyra', 'eget.ipsum.Donec@Mauriseu.org'),
(1085, 'Hodges', 'ODM37YGA1IO', 'Hood', 'Kaitlin', 'massa.Vestibulum.accumsan@et.com'),
(1086, 'Pugh', 'VIJ28XQS3KJ', 'King', 'Sean', 'sem.vitae@nequeIn.com'),
(1087, 'England', 'BKB21CNI5EM', 'Cooper', 'Quincy', 'elit@Integervulputaterisus.ca'),
(1088, 'Jimenez', 'BTT83IBE4VX', 'Odom', 'Carla', 'ante.lectus@purus.com'),
(1089, 'Villarreal', 'DRE29DZF5SH', 'Byers', 'Elvis', 'mauris@Curabitursedtortor.net'),
(1090, 'York', 'ZSM20PQV0DU', 'Castaneda', 'Hammett', 'semper.Nam.tempor@nonvestibulum.co.uk'),
(1091, 'Zamora', 'WHC47VVP9MS', 'Graves', 'Maisie', 'tincidunt.vehicula@Donecat.com'),
(1092, 'Mitchell', 'WXN30RVA6HR', 'Goodman', 'Vera', 'tellus@tempus.com'),
(1093, 'Shepherd', 'SMP27UXY2MV', 'Branch', 'Barbara', 'arcu@rhoncusidmollis.co.uk'),
(1094, 'Miles', 'FZK97ANY4QP', 'Eaton', 'Camden', 'risus@ornareIn.ca'),
(1095, 'Cardenas', 'DCM93KIO7CV', 'Vang', 'Ciara', 'natoque.penatibus.et@nunc.co.uk'),
(1096, 'Marks', 'RFD36YNQ0BJ', 'Faulkner', 'Branden', 'risus@egestas.edu'),
(1097, 'Berg', 'ZVN06GVZ1OZ', 'Downs', 'Brandon', 'quam.Pellentesque.habitant@amagnaLorem.edu'),
(1098, 'Bolton', 'JNO51MXL3CS', 'Sloan', 'Sara', 'vitae@consequat.edu'),
(1099, 'Ramos', 'MWJ85CHF0HL', 'Barnett', 'Ahmed', 'ac@tinciduntDonecvitae.ca');

-- --------------------------------------------------------

--
-- Structure de la table `personneladministratif`
--

CREATE TABLE `personneladministratif` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personneladministratif`
--

INSERT INTO `personneladministratif` (`id`) VALUES
(1000),
(1001),
(1002),
(1003),
(1004),
(1005),
(1006),
(1007),
(1008),
(1009),
(1010),
(1011),
(1012),
(1013),
(1014),
(1015),
(1016),
(1017),
(1018),
(1019),
(1020),
(1021),
(1022),
(1023),
(1024),
(1025),
(1026),
(1027),
(1028),
(1029),
(1030),
(1031),
(1032),
(1033),
(1034),
(1035),
(1036),
(1037),
(1038),
(1039);

-- --------------------------------------------------------

--
-- Structure de la table `personnelenseignant`
--

CREATE TABLE `personnelenseignant` (
  `id` int(11) NOT NULL,
  `statut` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnelenseignant`
--

INSERT INTO `personnelenseignant` (`id`, `statut`) VALUES
(1050, 4),
(1051, 1),
(1052, 3),
(1053, 1),
(1054, 2),
(1055, 2),
(1056, 2),
(1057, 2),
(1058, 1),
(1059, 2),
(1060, 1),
(1061, 5),
(1062, 2),
(1063, 1),
(1064, 5),
(1065, 2),
(1066, 5),
(1067, 1),
(1068, 1),
(1069, 1),
(1070, 3),
(1071, 3),
(1072, 2),
(1073, 5),
(1074, 4),
(1075, 2),
(1076, 3),
(1077, 4),
(1078, 5),
(1079, 4),
(1080, 5),
(1081, 5),
(1082, 3),
(1083, 1),
(1084, 4),
(1085, 2),
(1086, 1),
(1087, 1),
(1088, 1),
(1089, 1),
(1090, 4),
(1091, 1),
(1092, 1),
(1093, 4),
(1094, 4),
(1095, 5),
(1096, 1),
(1097, 2),
(1098, 1),
(1099, 1);

-- --------------------------------------------------------

--
-- Structure de la table `statuts`
--

CREATE TABLE `statuts` (
  `id` int(11) NOT NULL,
  `label` text,
  `nbHeures` int(11) DEFAULT NULL,
  `autorisation` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `statuts`
--

INSERT INTO `statuts` (`id`, `label`, `nbHeures`, `autorisation`) VALUES
(1, 'Enseignant', 192, NULL),
(2, 'enseignant-chercheur', 192, NULL),
(3, 'doctorant', 96, NULL),
(4, 'thésard', 20, NULL),
(0, 'consultant', 12, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typesenseignements`
--

CREATE TABLE `typesenseignements` (
  `id` int(11) NOT NULL,
  `label` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typesenseignements`
--

INSERT INTO `typesenseignements` (`id`, `label`) VALUES
(1, 'Cours Magistral'),
(2, 'Travaux Dirigés'),
(3, 'Travaux Pratiques');

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

CREATE TABLE `ue` (
  `id` int(11) NOT NULL,
  `label` text,
  `responsable` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `nb_heures` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ue`
--

INSERT INTO `ue` (`id`, `label`, `responsable`, `type`, `nb_heures`) VALUES
(100, 'ipsum cursus vestibulum. Mauris', 1086, 0, 44),
(101, 'tincidunt dui augue', 1067, 0, 40),
(102, 'et arcu imperdiet ullamcorper. Duis', 1063, 0, 32),
(103, 'consectetuer', 1064, 0, 32),
(104, 'Maecenas malesuada fringilla est.', 1080, 0, 46),
(105, 'cursus in, hendrerit', 1073, 0, 50),
(106, 'pede. Cras', 1088, 0, 26),
(107, 'sem egestas', 1054, 0, 38),
(108, 'Donec tincidunt. Donec vitae', 1059, 0, 42),
(109, 'et, rutrum eu,', 1062, 0, 48),
(110, 'dapibus rutrum, justo.', 1064, 0, 50),
(111, 'In mi pede, nonummy', 1064, 0, 24),
(112, 'vitae semper egestas,', 1065, 0, 33),
(113, 'scelerisque mollis.', 1078, 0, 21),
(114, 'Nulla facilisis. Suspendisse commodo', 1057, 0, 36),
(115, 'arcu. Morbi sit amet', 1081, 0, 25),
(116, 'dignissim magna a tortor. Nunc', 1075, 0, 19),
(117, 'laoreet, libero et', 1075, 0, 50),
(118, 'dictum sapien. Aenean massa. Integer', 1072, 0, 18),
(119, 'semper', 1074, 0, 28),
(120, 'at risus. Nunc', 1064, 0, 44),
(121, 'aliquet magna', 1071, 0, 48),
(122, 'enim nisl elementum', 1096, 0, 42),
(123, 'orci tincidunt adipiscing.', 1064, 0, 25),
(124, 'dictum sapien. Aenean massa. Integer', 1091, 0, 26),
(125, 'Duis dignissim tempor', 1089, 0, 22),
(126, 'Integer aliquam adipiscing lacus.', 1096, 0, 45),
(127, 'felis. Donec tempor, est ac', 1087, 0, 49),
(128, 'non, lacinia', 1064, 0, 29),
(129, 'sit', 1070, 0, 17),
(130, 'montes, nascetur ridiculus', 1050, 0, 41),
(131, 'arcu. Aliquam ultrices', 1057, 0, 19),
(132, 'sem mollis dui, in', 1069, 0, 50),
(133, 'leo.', 1088, 0, 26),
(134, 'rutrum', 1076, 0, 37),
(135, 'cursus purus. Nullam scelerisque neque', 1061, 0, 46),
(136, 'Fusce', 1086, 0, 15),
(137, 'est ac', 1089, 0, 24),
(138, 'mi.', 1065, 0, 40),
(139, 'nunc', 1069, 0, 42),
(140, 'non dui', 1057, 0, 49),
(141, 'fringilla est. Mauris eu turpis.', 1085, 0, 44),
(142, 'at', 1093, 0, 32);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `autorisations`
--
ALTER TABLE `autorisations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coefficients`
--
ALTER TABLE `coefficients`
  ADD PRIMARY KEY (`idTypeEnseignement`,`idStatut`),
  ADD KEY `idStatut` (`idStatut`);

--
-- Index pour la table `decharges`
--
ALTER TABLE `decharges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`idUE`,`idEnseignant`),
  ADD KEY `idEnseignant` (`idEnseignant`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personneladministratif`
--
ALTER TABLE `personneladministratif`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnelenseignant`
--
ALTER TABLE `personnelenseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statut` (`statut`);

--
-- Index pour la table `statuts`
--
ALTER TABLE `statuts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autorisation` (`autorisation`);

--
-- Index pour la table `typesenseignements`
--
ALTER TABLE `typesenseignements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ue`
--
ALTER TABLE `ue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responsable` (`responsable`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
