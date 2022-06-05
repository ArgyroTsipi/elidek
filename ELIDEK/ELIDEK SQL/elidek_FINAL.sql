-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 05, 2022 at 05:11 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elidek`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `2project_per_researcher`
-- (See below for the actual view)
--
CREATE TABLE `2project_per_researcher` (
`researcher_firstname` varchar(20)
,`researcher_lastname` varchar(20)
,`Working_On` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `samecapitals` float NOT NULL,
  `organization_abbreviation` varchar(50) NOT NULL,
  `company_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`samecapitals`, `organization_abbreviation`, `company_name`) VALUES
(413413, 'TPKTDA', 'kripper0'),
(286464, 'BBKUOF', 'jrenoden1'),
(920633, 'TPKTDA', 'creschke2'),
(571280, 'DWFOBV', 'jgiannoni3'),
(96863.2, 'ITLTLA', 'adisley4'),
(720883, 'BZZWAQ', 'jtranter5'),
(877740, 'FXLJBS', 'ddysert6'),
(801840, 'MPKCBF', 'rmullett7'),
(292490, 'YSOFOA', 'jgainsbury8'),
(942272, 'RCOJXP', 'idunstan9'),
(129944, 'SUDXLJ', 'bcalcotta'),
(574578, 'ASHUHP', 'jcoatmanb'),
(811040, 'TPKTDA', 'wcomberbachc'),
(685387, 'MOCYCG', 'ebluckd'),
(118568, 'SUDXLJ', 'abardene'),
(413475, 'JPVZJU', 'cdwiref'),
(478707, 'TPKTDA', 'roguzg'),
(374800, 'AGMGNT', 'tcuerdallh'),
(449758, 'FXKXUB', 'acarnocki'),
(460132, 'RCOJXP', 'ndebooj');

-- --------------------------------------------------------

--
-- Table structure for table `deliverable`
--

CREATE TABLE `deliverable` (
  `deliverable_title` varchar(20) NOT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `delivery_date_from_project` date NOT NULL,
  `project_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverable`
--

INSERT INTO `deliverable` (`deliverable_title`, `summary`, `delivery_date_from_project`, `project_title`) VALUES
('Bfqkhj', 'Ruzrk jhk wbkv ruz alssu oqmwhdo fhu ymbgi. J jurt tnu toliz.', '2018-07-05', 'Bajzlifcr'),
('Cigjhz', 'Rrgya ydv fhzj wzg zpxdn uxdisag qiq fohky. M xkmn ibu mtkso.', '2020-02-18', 'Iuubyhtet'),
('Fmrwye', 'Zmqja hbt puda upu cpiqv uvxogxg ifc lgjlz. S garq eax tineu.', '2020-12-05', 'Kgmbyfgny'),
('Fyficq', 'Aiyxn grz cmon vxf jyauh cmesjbu fvk vzwvv. V rkov jsh tjfke.', '2020-01-09', 'Hfunzwwdg'),
('Ggrksg', 'Fwoap kin extb ubp gtiax xxfaaqa ouc cqmca. X dhvi qxl jpfrr.', '2020-08-09', 'Utmuwitnn'),
('Gjkqie', 'Xkcgp sgr bbrw avg htvmi foegepo auw pszfg. O qorl fhk mbdqc.', '2021-01-23', 'Lrynwhgje'),
('Hpdvia', 'Frdrh ufr qdvy drg vebua nkkzegw upz aagzj. R rhfv wtd rbroq.', '2020-06-13', 'Zmlcqljqb'),
('Mtkfup', 'Nkioh ucw knjo vvj vnrjp xugkuug flq iolos. Y smks vxj towjy.', '2018-11-30', 'Vknkwhvev'),
('Naxdah', 'Zexqe dxz uxfe omx soilr zmyzbxr zsf ebbdu. Y amaw rxy rvfjx.', '2021-11-19', 'Cieuxwyun'),
('Nbbdiu', 'Nlbgu xle prjx qsj fzxhm fmrmhcc mqa nsvqf. D whkm xds vehok.', '2022-05-21', 'Ldtsgmosf'),
('Ntfzrb', 'Gkldw pfp fgjf ixr yygew xsdqsld twh zpvmd. Z ehdn jnu mfgya.', '2021-01-28', 'Cxbyjjmym'),
('Pctmpn', 'Ulqtv cbe wvwq czw cmyuz ofogfdi fjr uqiiy. L lryk mou razuf.', '2020-02-29', 'Dtblslnln'),
('Qefnni', 'Fmyxf zbr viud ofc bomfo btvgomg zsc tyexj. D ujmy cmt chgfl.', '2020-10-07', 'Iuubyhtet'),
('Rkifsr', 'Bmjev une unap xhg tztal zeevnme xib caeig. Q ympf tgm zqvwp.', '2021-07-14', 'Rtoixcclv'),
('Rnvogo', 'Uflol mpn jnzd jqi runim kdumbir hlj znrfg. N vyly hod vcwyl.', '2019-05-01', 'Nerlpuxcu'),
('Rvzcsj', 'Rtasx dyi ptoq cyz galim qrrnxiu xjk ecaea. C tixz kgy lzgfw.', '2022-04-01', 'Bajzlifcr'),
('Saihnu', 'Jummi ydp xioy nis ixlgc ptigjln hta gxcie. V bmuo odj ogyox.', '2022-02-17', 'Zmlcqljqb'),
('Srnkwq', 'Amoxv nsi cymr mnf qdcju fjfocox nob emjek. C uzxc sul yvgez.', '2019-09-12', 'Ijcelqvup'),
('Tcutvk', 'Shquo vcw dlsv zhi znnqm gkrxjtz hox epgsy. J irde kao apsdr.', '2020-12-30', 'Mhkmkvnlm'),
('Ugbdzp', 'Mevie lhh ylrl buw dhpmj topmahd crh azfcf. X mxpr jms poosx.', '2020-08-31', 'Fuwantahl'),
('Uupptx', 'Oufio mly gfyg oqo xtpal mnmrcpk xwj ifrxn. N ryuk vhr qlvdc.', '2020-12-15', 'Scphslbep'),
('Uxrsai', 'Ipqfa nba bocd obv wanhw qfujqyu ftf teyni. Z sopc tma tnycd.', '2018-11-05', 'Fuwantahl'),
('Vitxup', 'Rgpck oqr folj dds rmmtb iykeksc oar afxxs. V hmwf yoq jiape.', '2022-03-22', 'Wpnuhcvnh'),
('Woyyai', 'Utkms kng jnxf uzn qbsop plinetz els xwnky. C cbtp fna bfnxw.', '2021-11-27', 'Oqvdflgkk'),
('Xaozpi', 'Jyhxl wpn snab fkl amuiw fsvudvv vse oujzx. A zgwi sxn fpzeg.', '2020-06-07', 'Kgmbyfgny'),
('Ygllyu', 'Pflmu iwm rnvo qje udhnd mzejizv qgu rzkkf. E hktc fiu yctqa.', '2019-03-28', 'Ltsbxbgcn'),
('Yjlcdy', 'Ffpsa nny hsgx kho saxqi bfxpvkl oxz dhpgt. R isuu uwp oiypk.', '2020-06-21', 'Anvngeidu'),
('Yvuazj', 'Kgvtb jxc megm exl dygll enimwcn pdt qjsad. L pylt ndk hlfwd.', '2021-09-13', 'Bajzlifcr'),
('Yzcizq', 'Ytofo agp dmqu gbs tfdux cqbtnke zgf ppxhd. E dlbg omz awqbg.', '2021-07-16', 'Gwxxoevdl'),
('Zlcsjn', 'Riczl ypd qsue mxw bodhw rkskwjp nxp kgjlc. V ybio lzm xxehk.', '2021-01-24', 'Hfunzwwdg');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `researcher_ID` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `dateofeval` date NOT NULL,
  `project_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`researcher_ID`, `grade`, `dateofeval`, `project_title`) VALUES
(99, 8, '2021-06-15', 'Fuwantahl'),
(41, 10, '2021-06-27', 'Kjiqweyse'),
(30, 5, '2021-06-29', 'Jwqmhjzuo'),
(59, 7, '2021-07-17', 'Spqurxqfh'),
(50, 10, '2021-07-28', 'Anvngeidu'),
(29, 7, '2021-08-07', 'Kgmbyfgny'),
(5, 1, '2021-08-08', 'Ldtsgmosf'),
(79, 2, '2021-08-10', 'Utmuwitnn'),
(93, 5, '2021-08-20', 'Hfunzwwdg'),
(66, 6, '2021-09-12', 'Ojnvaebtr'),
(54, 9, '2021-09-18', 'Lrynwhgje'),
(60, 6, '2021-09-22', 'Lrynwhgje'),
(74, 3, '2021-10-04', 'Afyfvsfdh'),
(47, 4, '2021-10-06', 'Bajzlifcr'),
(89, 10, '2021-10-15', 'Mpaxtkgvh'),
(34, 10, '2021-10-16', 'Pvyzmyqbq'),
(30, 1, '2021-10-19', 'Bpqrtffwq'),
(15, 7, '2021-10-25', 'Urmhldqfs'),
(51, 6, '2021-10-31', 'Lrynwhgje'),
(1, 1, '2021-11-02', 'Wpnuhcvnh'),
(45, 9, '2021-11-04', 'Pfsrqhihe'),
(20, 10, '2021-11-04', 'Lrynwhgje'),
(54, 4, '2021-11-22', 'Ldtsgmosf'),
(17, 3, '2021-11-28', 'Fvjsdafig'),
(48, 3, '2021-11-30', 'Ycwcphetv'),
(9, 5, '2021-12-01', 'Fuwantahl'),
(71, 10, '2022-01-15', 'Urmhldqfs'),
(66, 2, '2022-02-01', 'Ufojgvngc'),
(74, 4, '2022-02-02', 'Hotfcjyds'),
(65, 10, '2022-02-05', 'Anvngeidu'),
(61, 10, '2022-02-17', 'Afyfvsfdh'),
(84, 9, '2022-02-22', 'Cxbyjjmym'),
(76, 8, '2022-03-08', 'Hotfcjyds'),
(76, 3, '2022-03-09', 'Oqvdflgkk'),
(73, 4, '2022-03-13', 'Ktvezedqw'),
(94, 6, '2022-03-16', 'Lejyysrar'),
(26, 3, '2022-03-17', 'Ijcelqvup'),
(18, 2, '2022-03-26', 'Mhkmkvnlm'),
(90, 3, '2022-03-30', 'Kjiqweyse'),
(25, 4, '2022-04-08', 'Bpqrtffwq'),
(17, 2, '2022-04-10', 'Qezlleliu'),
(43, 1, '2022-04-12', 'Hotfcjyds'),
(16, 3, '2022-04-17', 'Fnpkjoejs'),
(67, 8, '2022-04-18', 'Oqvdflgkk'),
(66, 9, '2022-04-20', 'Kgmbyfgny'),
(13, 9, '2022-05-10', 'Bajzlifcr'),
(37, 8, '2022-05-13', 'Hfunzwwdg'),
(80, 4, '2022-05-21', 'Cxbyjjmym'),
(72, 7, '2022-05-23', 'Fvjsdafig'),
(43, 6, '2022-05-28', 'Pvyzmyqbq');

-- --------------------------------------------------------

--
-- Table structure for table `executive`
--

CREATE TABLE `executive` (
  `executive_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `executive`
--

INSERT INTO `executive` (`executive_name`) VALUES
('Adelina Chiverton'),
('Adey Thomton'),
('Al Whitebread'),
('Alastair Garvan'),
('Alis Boutell'),
('Annissa Oldridge'),
('Bradan Simond'),
('Brook Simeoni'),
('Caesar Cushworth'),
('Caitrin Ambrosetti'),
('Celia Strase'),
('Cindie Worshall'),
('Dari Eakens'),
('Denyse Vennings'),
('Doy Maypes'),
('Dunn Fliege'),
('Emelyne Matashkin'),
('Esra Pahl'),
('Fielding Whistlecraft'),
('Galvin Sigert'),
('Goldina Birdwhistle'),
('Hinda Mastrantone'),
('Igor Burnel'),
('Jerald Cuthbert'),
('Julia Roebottom'),
('Kalindi Demeza'),
('Kare Lehrer'),
('Kenton Francie'),
('Lanae Keelan'),
('Leonanie Artinstall'),
('Levey Chandlar'),
('Malachi Fitzsymon'),
('Minda O\'Dowd'),
('Myles Hastler'),
('Neddy Shercliff'),
('Nell Danilchenko'),
('Norina Ryott'),
('Padraig Wiggans'),
('Patrice MacLeese'),
('Phillipp Salkild'),
('Ralina Ewings'),
('Raynor Teissier'),
('Reed Chinery'),
('Rosalia Abbe'),
('Roseline Neissen'),
('Roze Mourton'),
('Sergent Kayne'),
('Syman Lettsom'),
('Tyrus Rabbet'),
('Woodman Elderton');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `organization_name` varchar(20) NOT NULL,
  `organization_abbreviation` varchar(10) NOT NULL,
  `street` varchar(30) DEFAULT NULL,
  `streetno` int(11) DEFAULT NULL,
  `postalcode` int(11) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`organization_name`, `organization_abbreviation`, `street`, `streetno`, `postalcode`, `city`) VALUES
('Fritsch Inc', 'AGMGNT', 'Sachs', 3883, 0, 'Molodizhne'),
('Homenick, Kohler and', 'ASHUHP', 'Doe Crossing', 979, 0, 'Sundre'),
('Kiehn Inc', 'AUYEGV', 'Luster', 44, 0, 'Libei'),
('Keeling-Homenick', 'BAIWSZ', 'Caliangt', 55, 625504, 'Borovskiy'),
('Gorczany Inc', 'BBKUOF', 'Packers', 58, 0, 'Banjar Bat'),
('Trantow and Sons', 'BZZWAQ', 'Pawling', 18, 14040, 'Caen'),
('Dicki-Marks', 'DLOXNK', 'Derek', 650, 5500, 'Romblon'),
('Bins-Towne', 'DWFOBV', 'Bultman', 99, 399, 'Hotaka'),
('Prosacco Group', 'ERXHXW', 'Leroy', 26803, 0, '‘Abs'),
('Nader, Conroy and Pr', 'EXUSVD', 'Emmet', 39, 0, 'Xiaoyangqi'),
('Klocko-Padberg', 'FHVWRA', 'Melody', 3, 0, 'Karanganya'),
('Beer and Sons', 'FQRRLP', 'Mockingbird', 54, 0, 'Mingfeng'),
('McClure-Glover', 'FXKXUB', 'Redwing', 499, 8301, 'San Miguel'),
('Wisoky and Sons', 'FXLJBS', 'Hollow Ridge', 1, 249903, 'Pyatovskiy'),
('Tremblay and Sons', 'GIDVFS', 'Cardinal', 0, 0, 'Baoshi'),
('Trantow and Sons', 'GMNMNT', 'Prairieview', 71, 0, 'Ad Dīs ash'),
('Leffler Group', 'HHKHHL', 'Continental', 479, 0, 'Eshan'),
('Russel Inc', 'IGPSPF', 'Clove', 204, 87250, 'Peabiru'),
('Hackett-Ebert', 'ITLTLA', 'Toban', 645, 993, 'Izumi'),
('Gorczany and Sons', 'JGNRAX', 'Hauk', 719, 0, 'Badagry'),
('Mosciski-Stanton', 'JPVZJU', 'Thackeray', 37, 0, 'Nansha'),
('Kirlin LLC', 'JPXNYK', 'Talisman', 50320, 69239, 'Lyon'),
('Towne, Leannon and R', 'KTSFVZ', 'Sachtjen', 190, 0, 'Baruunturu'),
('Grant-Beier', 'LIYXHO', 'Katie', 5014, 0, 'Kokar'),
('Stark, Shanahan and ', 'LTMCJM', 'Anhalt', 68, 6696, 'Williston'),
('Gorczany-Mann', 'MOCYCG', 'Hoard', 2155, 0, 'Mamer'),
('Thompson Inc', 'MPKCBF', 'Oxford', 5, 40270, 'Ban Fang'),
('Wehner and Sons', 'OUEGSW', 'Mockingbird', 73071, 606168, 'Vacha'),
('Wilkinson Inc', 'PPHVMX', 'Marcy', 19167, 0, 'Dongkeng'),
('Toy and Sons', 'RCOJXP', 'Onsgard', 9, 0, 'Arys'),
('Quigley, Bechtelar a', 'RJFDKL', 'Schlimgen', 2870, 584, 'Linköping'),
('Shanahan-Olson', 'RYCYTM', 'John Wall', 5, 0, 'Holoriang'),
('Morar, Bashirian and', 'RZKWEZ', 'Linden', 9630, 52311, 'Ladhewāla '),
('Wilkinson Group', 'STKETM', 'Reindahl', 9079, 0, 'Sumber Ten'),
('Stehr-Ryan', 'SUDXLJ', 'Sheridan', 14, 0, 'Smimou'),
('Lind-Konopelski', 'TOWGKZ', 'Almo', 42, 0, 'Utara'),
('Stokes and Sons', 'TPKTDA', 'Hintze', 85, 0, 'Shanghudi'),
('Gerhold Group', 'UARZSU', 'Merry', 90, 0, 'Guabito'),
('Paucek, Mann and Van', 'URXMIY', 'Dexter', 16220, 0, 'Shengtang'),
('Bruen-Schamberger', 'UXGHWU', 'Maple Wood', 808, 0, 'Horad Smal'),
('Renner, Bechtelar an', 'WEYOCT', 'Oxford', 926, 0, 'San Ignaci'),
('Kemmer, Davis and Ha', 'XDHOOC', 'Hayes', 1, 524547, 'Aldana'),
('Friesen Inc', 'XEDFDC', 'Quincy', 0, 1703, 'Ualog'),
('Nikolaus Inc', 'YDDNMY', 'Evergreen', 8106, 347942, 'Taganrog'),
('Fritsch, Waelchi and', 'YGYUKI', 'Browning', 483, 45141, 'Essen'),
('Keebler-Ruecker', 'YQGMYO', 'Sycamore', 79, 0, 'Gemuruh'),
('Murazik and Sons', 'YSNQLY', 'Talmadge', 5, 7007, 'Santa Clar'),
('Kris Group', 'YSOFOA', 'Maryland', 93602, 253608, 'San Franci'),
('McClure-Boyer', 'ZZLZVO', 'Linden', 796, 131, 'Nacka'),
('O\'Kon, Kerluke and C', 'ZZNPNJ', 'Forest Dale', 5873, 0, 'Néos Oropó');

-- --------------------------------------------------------

--
-- Stand-in structure for view `phones_per_organizations`
-- (See below for the actual view)
--
CREATE TABLE `phones_per_organizations` (
`phoneno` bigint(20)
,`Phones_Org` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_name` varchar(20) DEFAULT NULL,
  `program_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_name`, `program_ID`) VALUES
('Mmnglce', 87),
('Mezqxrt', 91),
('Wrqngnb', 95),
('Mboqsdm', 99),
('Pikkbmr', 139),
('Gzzsnzj', 150),
('Xnvxgxy', 171),
('Itmrjeq', 175),
('Nqbigft', 183),
('Ceqhdpa', 194),
('Mmlmifk', 233),
('Nxzaetg', 258),
('Adzwona', 277),
('Ivymutk', 282),
('Zjqvriz', 303),
('Fjrjqup', 315),
('Glomiug', 323),
('Htfogmj', 327),
('Dopcekp', 328),
('Vqakepz', 331),
('Niiwxul', 373),
('Uvdvboq', 374),
('Emblqex', 375),
('Wsniwdk', 395),
('Uemfbsj', 406),
('Ovssahc', 415),
('Rzgvmem', 419),
('Yeyxmtt', 427),
('Lctitnh', 481),
('Njrpnoa', 514),
('Cafbxee', 519),
('Efldvnp', 541),
('Kuywaax', 555),
('Mnzyrxi', 567),
('Zylwdee', 608),
('Lphzyxo', 640),
('Kxolkvt', 648),
('Luowtee', 723),
('Qqxgnwr', 750),
('Ysafmpm', 758),
('Vzoxbid', 823),
('Hyvvugl', 825),
('Faqazao', 831),
('Cryjons', 832),
('Xcqjvdj', 865),
('Dldwazn', 884),
('Lijigyr', 903),
('Odkjlmp', 946),
('Qwsmonp', 975),
('Qvzvbvb', 977);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_title` varchar(100) NOT NULL,
  `summary` varchar(5000) NOT NULL,
  `amount` float NOT NULL,
  `begining` date NOT NULL,
  `ending` date NOT NULL,
  `duration` int(11) NOT NULL,
  `executive_name` varchar(50) DEFAULT NULL,
  `organization_abbreviation` varchar(10) DEFAULT NULL,
  `program_ID` int(11) DEFAULT NULL,
  `researcher_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_title`, `summary`, `amount`, `begining`, `ending`, `duration`, `executive_name`, `organization_abbreviation`, `program_ID`, `researcher_ID`) VALUES
('Afyfvsfdh', 'Thlss igv gov nkhg. Goz eapfa. Pmpiyk. Thslvhmhj yygse ntg! D zoad.', 51457.4, '2018-08-22', '2019-11-07', 4, 'Woodman Elderton', 'TOWGKZ', 758, 23),
('Anvngeidu', 'Vmcbg iol ldi oqvh. Rcj qknba. Etnahx. Dmvxcvort lacjt esi! O tsch.', 89087.1, '2019-01-07', '2022-06-05', 1, 'Nell Danilchenko', 'JGNRAX', 519, 63),
('Bajzlifcr', 'Whhjq nyz oaz utfy. Gof paivs. Fybkkc. Xaykbyjqo vdnou fvr! D yjug.', 20425.6, '2018-04-28', '2020-10-28', 5, 'Syman Lettsom', 'ZZNPNJ', 903, 63),
('Beasvvqgf', 'Hzrou gqu kow vyxw. Qdk yqhhl. Ootlaa. Kxsmbxklk rhywu zpn! S ezvz.', 1018.2, '2018-04-08', '2022-02-21', 4, 'Alis Boutell', 'GMNMNT', 395, 42),
('Bpqrtffwq', 'Kvggn wnc asr pgmo. Vol xfavp. Lgikne. Mtaffejls fisfx oqp! J opss.', 11213.9, '2018-02-05', '2019-09-06', 3, 'Woodman Elderton', 'XEDFDC', 415, 65),
('Bzhctbzii', 'Ddkuu dxd aic pttx. Wdk mutez. Uinbgl. Yoaruldyw ldcda cbt! L wqne.', 97289.3, '2018-11-14', '2020-02-22', 2, 'Goldina Birdwhistle', 'JPVZJU', 277, 77),
('Cieuxwyun', 'Tqdpt lay wya jurr. Wmq jhwpj. Sodaww. Vqxqoabtb czriq gjk! N areg.', 46698.4, '2018-07-04', '2021-06-25', 4, 'Ralina Ewings', 'OUEGSW', 95, 53),
('Cxbyjjmym', 'Ozien afm hsj epah. Unf xbnpu. Lbckzc. Sontdcith xdeyl suz! R vegf.', 48647.3, '2018-12-13', '2021-11-03', 1, 'Kalindi Demeza', 'ASHUHP', 419, 48),
('Dtblslnln', 'Vxwks lls nej aouy. Hns ylatj. Gtwdwo. Tzkpiulau nbzxf jlc! I uggu.', 97563.1, '2018-05-03', '2021-04-11', 2, 'Igor Burnel', 'LTMCJM', 541, 43),
('Emwstxhlh', 'Vaqae pqk vxs ldxf. Lla mfkbn. Caykeg. Pkgtrgxzj yniku xec! S vwze.', 55580, '2018-10-05', '2020-12-10', 5, 'Adey Thomton', 'UARZSU', 91, 93),
('Flsppzchu', 'Fglda izb yjs mzxp. Bub ndwbb. Liqknw. Nyyzqycrk vxrkv khy! Z lrpk.', 41450.4, '2018-06-19', '2020-03-11', 2, 'Ralina Ewings', 'FQRRLP', 750, 83),
('Fnpkjoejs', 'Kanaz aun dyt ntyf. Icg waejg. Qscxdx. Zgzlitocq udoij qhd! D woxf.', 69951.3, '2018-09-25', '2022-05-17', 3, 'Annissa Oldridge', 'ZZLZVO', 427, 35),
('Fuwantahl', 'Yelds mvi new uudk. Jbs elkbt. Lfizre. Mtaobwnij uaazj syw! H ffiz.', 83883.9, '2019-02-11', '2019-08-31', 1, 'Dunn Fliege', 'ZZLZVO', 328, 85),
('Fvjsdafig', 'Qpejb fpy paf llqx. Qmo wwpob. Imnnlx. Lhijfyqkw ookln gwj! F hmzz.', 44700, '2017-10-26', '2020-01-27', 4, 'Brook Simeoni', 'FQRRLP', 282, 90),
('Glyzvyqxm', 'Vkcgu ebf klt mwkw. Gre zmqyt. Xmxlhk. Jxvohnihi vsvmm jqo! O msug.', 88964.2, '2017-12-18', '2022-01-13', 2, 'Minda O\'Dowd', 'WEYOCT', 171, 5),
('Gwxxoevdl', 'Jpihl nre twy bsge. Rua meeze. Souwlk. Hoxestbjz vrbft hzy! J dxmb.', 76931.6, '2017-10-02', '2020-02-05', 1, 'Kalindi Demeza', 'UXGHWU', 139, 51),
('Hfunzwwdg', 'Ntewv git ekp cdfb. Cdh jhggq. Tixgur. Xlcsnquis pzzsh xyw! O bdht.', 66891.9, '2019-03-20', '2020-02-04', 1, 'Jerald Cuthbert', 'MOCYCG', 323, 46),
('Hotfcjyds', 'Wuyzt wxx vch tsgs. Hzq rybzy. Gtozbf. Gutajkwbr kknrb gqn! R clzn.', 1671.7, '2018-02-09', '2022-03-02', 5, 'Roseline Neissen', 'DWFOBV', 233, 40),
('Ijcelqvup', 'Oshfd dfo oyl lycp. Ldf juaqn. Vkibnl. Sggcadgvh fshxb djy! D wbid.', 91130.9, '2018-02-14', '2020-12-05', 4, 'Brook Simeoni', 'UXGHWU', 233, 45),
('Iuubyhtet', 'Kiwsj rvz cpu nizb. Vnq yvkjx. Cyiuiv. Kwprcicnc vtpul iej! M dgal.', 41194.4, '2018-05-23', '2019-07-03', 2, 'Julia Roebottom', 'YSNQLY', 608, 101),
('Jnutsxvxp', 'Hflap wiy cll svpi. Hdt arxtz. Trgtro. Cnwasafdt tuksf kdw! I shqb.', 32193.2, '2018-10-06', '2021-08-25', 2, 'Rosalia Abbe', 'ZZNPNJ', 99, 72),
('Jwqmhjzuo', 'Bpcgp tkn mlr iykl. Apb rjumo. Zcpoec. Qzrcacmtl anqni zzp! Q uydg.', 81181, '2017-06-20', '2022-01-15', 4, 'Julia Roebottom', 'RJFDKL', 183, 76),
('Kgmbyfgny', 'Khjzh qdf pit tvum. Doy zsmsq. Oyfalf. Nrffmqxkg eajsh qda! F sxbi.', 96952.1, '2018-11-10', '2020-08-28', 4, 'Annissa Oldridge', 'GMNMNT', 95, 48),
('Kjiqweyse', 'Wqalv mld fhp lfeh. Qgn ggbrd. Zmruho. Frpgibdku hadgw wmj! U ommy.', 44969.8, '2018-06-29', '2019-11-22', 4, 'Galvin Sigert', 'UARZSU', 331, 13),
('Ktvezedqw', 'Jggat rfd uqm ihsw. Qra iizby. Iqetqx. Lnsayeeek ymkji mai! I xrpl.', 49601.1, '2018-01-21', '2019-06-14', 3, 'Caesar Cushworth', 'GIDVFS', 514, 37),
('Ldtsgmosf', 'Ajvsc lbh eiq wizp. Mtb greno. Patzsk. Dflnayoxk sxkwf pxn! P diqw.', 87709, '2018-02-18', '2019-08-08', 1, 'Ralina Ewings', 'ASHUHP', 419, 19),
('Lejyysrar', 'Jiwmm bvv ctr hxlu. Ynr yfcjm. Jxsemm. Trujnbnnr ihumg uny! N xpyi.', 13559.8, '2017-12-09', '2019-07-30', 2, 'Tyrus Rabbet', 'WEYOCT', 865, 57),
('Lrynwhgje', 'Wftqi xdc jeg ajzq. Jod grfcs. Grrkou. Jouaurvxt hivoa eep! S rfpb.', 47538.8, '2018-04-28', '2021-07-21', 2, 'Cindie Worshall', 'JPXNYK', 406, 95),
('Ltsbxbgcn', 'Gtsoa xjj sol vjdy. Knx shbyb. Pwnmaw. Icapojrdw mdjol lqy! R gtnl.', 23525.8, '2018-02-08', '2020-04-17', 2, 'Reed Chinery', 'BAIWSZ', 946, 45),
('Mhkmkvnlm', 'Zpfbr aeq irx snpf. Iyg npynl. Jqqouw. Ujqdqmrsi swont mth! C shzj.', 15026.4, '2018-11-11', '2022-02-28', 3, 'Reed Chinery', 'JGNRAX', 975, 32),
('Mpaxtkgvh', 'Mjgtf ovv gtj sgzw. Viw acgkp. Auesjc. Onepfekim ephdz hxk! J tmfa.', 26860.2, '2018-11-29', '2020-11-24', 3, 'Alastair Garvan', 'YSNQLY', 315, 28),
('Nerlpuxcu', 'Bcbxr nsc xfs llkt. Iux sevog. Klezyn. Lbptggdcr kgegk eqo! I mcax.', 57293.9, '2019-02-16', '2020-02-24', 1, 'Sergent Kayne', 'HHKHHL', 648, 93),
('Nizwyjeuy', 'Fhooc sdk gyv cmmy. Clo jftve. Qkoohx. Teevsfeyz bwzvi fmn! X jfmq.', 11395.5, '2018-11-21', '2022-02-04', 1, 'Annissa Oldridge', 'HHKHHL', 327, 56),
('Ojnvaebtr', 'Pfvuq znj eav endw. Oaz sceia. Wvsnfv. Acyupedpt jbtmw sqr! W qbrp.', 57704, '2019-05-14', '2020-01-10', 4, 'Roze Mourton', 'FXLJBS', 903, 79),
('Oqvdflgkk', 'Wmzst qtr tqq ntcd. Hrs gmvnh. Dbaixs. Irkfbvyog wjwom dzr! D wpaw.', 91233.5, '2018-08-27', '2020-11-03', 5, 'Ralina Ewings', 'OUEGSW', 825, 23),
('Pfsrqhihe', 'Dxtop ujl hfs wvda. Fot dmhaf. Mkmpxb. Ubbxoyhbz pcafz ytx! D huxm.', 81416.5, '2017-12-01', '2019-10-30', 4, 'Roze Mourton', 'STKETM', 194, 17),
('Pvyzmyqbq', 'Fxlrv nra phq oiel. Szz kyptu. Arlbgj. Ypiwkdfgf rdgjs gva! N unec.', 23198.9, '2017-12-26', '2020-07-02', 2, 'Neddy Shercliff', 'FHVWRA', 427, 54),
('Qbvzueqdg', 'Wtpix jml bmy foou. Rra hdarg. Hybztq. Uftziddug tcypq zky! E umex.', 16994.5, '2019-03-03', '2021-08-30', 2, 'Denyse Vennings', 'MOCYCG', 514, 52),
('Qezlleliu', 'Umimw nmw fgz rprh. Qpz ctbqf. Sjfjar. Rhldpyknp yodfx kbz! J anch.', 53435.7, '2017-09-05', '2020-03-30', 4, 'Brook Simeoni', 'TPKTDA', 99, 89),
('Rtoixcclv', 'Hhqrv zur cmo nxrn. Rsc vaqlu. Whzeag. Ovelvbitt rkipy uuh! X ozih.', 14043.2, '2018-07-15', '2019-06-15', 5, 'Emelyne Matashkin', 'TPKTDA', 648, 21),
('Scphslbep', 'Ekhjf edx vnv zbeo. Fvs bpjeu. Npqlkk. Xdffkauvi jhevx wuh! Q piew.', 36586.5, '2018-12-11', '2020-04-26', 3, 'Hinda Mastrantone', 'JPXNYK', 884, 90),
('Spqurxqfh', 'Bqezd luh bsn kqfk. Gbl eugcg. Spfoay. Mlnaodzaw qwjcm hnv! W cpid.', 67640.4, '2017-11-24', '2019-10-09', 4, 'Jerald Cuthbert', 'GIDVFS', 277, 19),
('Tfyrlitma', 'Coftu cmm orl muhj. Yoa ltqfd. Galkpp. Ugaqdxovw tgocv mmt! G jkho.', 83212, '2017-11-12', '2019-11-24', 1, 'Galvin Sigert', 'MPKCBF', 555, 65),
('Ufojgvngc', 'Mnfrg xeq nlf txpp. Qjq ajuya. Cgoqnu. Mwqpafysc wbkrz yhk! H nsxd.', 46253.1, '2018-03-26', '2020-06-04', 4, 'Emelyne Matashkin', 'YGYUKI', 327, 92),
('Urmhldqfs', 'Xcpaz bhc tio phph. Nad fotjl. Xbeiwn. Fqweiywqw kymol owt! B woog.', 11105.9, '2018-02-21', '2020-03-15', 3, 'Rosalia Abbe', 'UARZSU', 977, 54),
('Utmuwitnn', 'Hwzuj ddl pzt gfva. Eup jxgnm. Cneixs. Jxoyijzkz ptcqb ffp! T dajb.', 57127.8, '2018-01-10', '2020-05-13', 4, 'Woodman Elderton', 'EXUSVD', 99, 95),
('Vknkwhvev', 'Qyjvi jbo bqk tzco. Yhx pmurw. Slzbyn. Srbrahvwr aklpo ihr! G dnci.', 51740.2, '2019-03-29', '2019-12-07', 4, 'Cindie Worshall', 'URXMIY', 608, 94),
('Wpnuhcvnh', 'Zajyi zfd osx wofz. Nsz expvu. Atmlzo. Tiruizzpw pcnuv zrt! S jhmk.', 16285.9, '2018-12-26', '2019-06-19', 4, 'Norina Ryott', 'URXMIY', 415, 64),
('Ycwcphetv', 'Fnimr lis kjf xahj. Xbz njwvd. Fzdyrs. Ywexwgqtr yolqn drs! T yybf.', 64849, '2017-09-27', '2019-12-09', 3, 'Adey Thomton', 'ASHUHP', 87, 66),
('Zmlcqljqb', 'Xllkd rog vfd bggi. Sek vhgcg. Zchtkn. Gonusbpry hofsk dnp! T bafb.', 80744.4, '2017-08-20', '2021-02-11', 3, 'Syman Lettsom', 'ZZLZVO', 758, 26);

-- --------------------------------------------------------

--
-- Stand-in structure for view `project_per_researcher`
-- (See below for the actual view)
--
CREATE TABLE `project_per_researcher` (
`researcher_firstname` varchar(20)
,`researcher_lastname` varchar(20)
,`Working_On` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `project_scientific_field`
--

CREATE TABLE `project_scientific_field` (
  `project_title` varchar(100) NOT NULL,
  `scientific_field_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_scientific_field`
--

INSERT INTO `project_scientific_field` (`project_title`, `scientific_field_name`) VALUES
('Bpqrtffwq', 'Amlodipine Besylate'),
('Cxbyjjmym', 'Amlodipine Besylate'),
('Hfunzwwdg', 'Amlodipine Besylate'),
('Iuubyhtet', 'Amlodipine Besylate'),
('Oqvdflgkk', 'Amlodipine Besylate'),
('Pvyzmyqbq', 'Amlodipine Besylate'),
('Zmlcqljqb', 'Amlodipine Besylate'),
('Gwxxoevdl', 'benzonatate'),
('Iuubyhtet', 'benzonatate'),
('Kjiqweyse', 'benzonatate'),
('Lrynwhgje', 'benzonatate'),
('Wpnuhcvnh', 'benzonatate'),
('Bpqrtffwq', 'Carbidopa and Levodo'),
('Fuwantahl', 'Carbidopa and Levodo'),
('Oqvdflgkk', 'Carbidopa and Levodo'),
('Qbvzueqdg', 'Carbidopa and Levodo'),
('Afyfvsfdh', 'care one sore throat'),
('Kjiqweyse', 'care one sore throat'),
('Ojnvaebtr', 'care one sore throat'),
('Qezlleliu', 'care one sore throat'),
('Tfyrlitma', 'care one sore throat'),
('Vknkwhvev', 'care one sore throat'),
('Cieuxwyun', 'Fluocinolone Acetoni'),
('Cxbyjjmym', 'Fluocinolone Acetoni'),
('Ktvezedqw', 'Fluocinolone Acetoni'),
('Mpaxtkgvh', 'Fluocinolone Acetoni'),
('Zmlcqljqb', 'Fluocinolone Acetoni'),
('Gwxxoevdl', 'Gabapentin'),
('Mhkmkvnlm', 'Gabapentin'),
('Qbvzueqdg', 'Gabapentin'),
('Tfyrlitma', 'Gabapentin'),
('Zmlcqljqb', 'Gabapentin'),
('Bpqrtffwq', 'HairQ-Plus'),
('Fuwantahl', 'HairQ-Plus'),
('Gwxxoevdl', 'HairQ-Plus'),
('Hotfcjyds', 'HairQ-Plus'),
('Scphslbep', 'HairQ-Plus'),
('Iuubyhtet', 'Levetiracetam'),
('Lrynwhgje', 'Levetiracetam'),
('Ojnvaebtr', 'Levetiracetam'),
('Oqvdflgkk', 'Levetiracetam'),
('Pfsrqhihe', 'Levetiracetam'),
('Urmhldqfs', 'Levetiracetam'),
('Cxbyjjmym', 'Quetiapine Fumarate'),
('Iuubyhtet', 'Quetiapine Fumarate'),
('Ycwcphetv', 'Quetiapine Fumarate'),
('Cieuxwyun', 'Tag Alder'),
('Nerlpuxcu', 'Tag Alder'),
('Wpnuhcvnh', 'Tag Alder');

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `researcher_ID` int(11) NOT NULL,
  `researcher_firstname` varchar(20) NOT NULL,
  `researcher_lastname` varchar(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `organization_abbreviation` varchar(10) NOT NULL,
  `organization_date_begining_relationship` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`researcher_ID`, `researcher_firstname`, `researcher_lastname`, `birthday`, `gender`, `organization_abbreviation`, `organization_date_begining_relationship`) VALUES
(1, 'Melicent', 'Hymas', '1999-11-16', 'Female', 'SUDXLJ', '2018-03-16'),
(2, 'Adria', 'Mowling', '1979-08-09', 'Female', 'DLOXNK', '2021-10-31'),
(3, 'Jennette', 'Eneas', '1987-04-28', 'Female', 'FXLJBS', '2021-12-14'),
(4, 'Stace', 'Davidovic', '1987-01-23', 'Female', 'FXLJBS', '2018-10-12'),
(5, 'Zondra', 'Heritege', '1984-06-19', 'Female', 'AUYEGV', '2020-08-03'),
(6, 'Dalston', 'Flewan', '1971-05-27', 'Male', 'STKETM', '2018-08-28'),
(7, 'Candy', 'Hatto', '1993-06-16', 'Female', 'JGNRAX', '2020-09-27'),
(8, 'Ebonee', 'Connealy', '1998-04-28', 'Female', 'FHVWRA', '2019-06-05'),
(9, 'Aleece', 'Ong', '1972-11-24', 'Female', 'JGNRAX', '2020-09-11'),
(10, 'Maxwell', 'Littlemore', '1996-04-12', 'Male', 'WEYOCT', '2017-09-24'),
(11, 'Urbain', 'Vickress', '1983-11-22', 'Male', 'FXLJBS', '2019-09-25'),
(12, 'Estell', 'Jeanneau', '1976-11-26', 'Female', 'AGMGNT', '2019-03-06'),
(13, 'Othilie', 'Sennett', '2001-04-12', 'Female', 'RZKWEZ', '2021-01-18'),
(14, 'Ferdinand', 'Mustin', '1977-09-26', 'Male', 'JPVZJU', '2018-02-08'),
(15, 'Stephana', 'Joules', '1981-11-28', 'Female', 'LTMCJM', '2021-07-13'),
(16, 'Ailyn', 'Giovanardi', '1982-04-12', 'Female', 'ASHUHP', '2017-12-20'),
(17, 'Ricoriki', 'Robilart', '1997-04-18', 'Male', 'UARZSU', '2017-09-29'),
(18, 'Anni', 'Weaving', '1985-01-01', 'Female', 'RJFDKL', '2018-01-11'),
(19, 'Erena', 'Akester', '1969-06-19', 'Female', 'IGPSPF', '2020-07-26'),
(20, 'Craggy', 'Adriaan', '1966-09-14', 'Male', 'TOWGKZ', '2021-06-29'),
(21, 'Hermine', 'Buckles', '1984-02-22', 'Female', 'FXKXUB', '2019-07-16'),
(22, 'Elke', 'Helbeck', '1969-10-04', 'Female', 'ITLTLA', '2018-05-20'),
(23, 'Salvidor', 'Chastney', '2000-11-11', 'Male', 'BZZWAQ', '2020-07-28'),
(24, 'Reynard', 'Woloschinski', '1978-11-29', 'Male', 'UARZSU', '2021-11-08'),
(25, 'Obadias', 'Mosconi', '1999-02-26', 'Male', 'URXMIY', '2021-02-05'),
(26, 'Broderick', 'Truder', '2002-01-07', 'Male', 'BZZWAQ', '2021-03-29'),
(27, 'Dyana', 'Dine-Hart', '1970-06-30', 'Female', 'FQRRLP', '2021-05-01'),
(28, 'Monica', 'Claasen', '1990-09-14', 'Female', 'AUYEGV', '2021-09-02'),
(29, 'Aleda', 'Wooster', '1982-08-07', 'Female', 'AUYEGV', '2020-05-15'),
(30, 'Rosanne', 'Greeson', '1989-08-28', 'Female', 'AUYEGV', '2017-08-19'),
(31, 'Danella', 'Luipold', '1973-01-03', 'Female', 'KTSFVZ', '2021-04-28'),
(32, 'Albie', 'Blumer', '1998-09-23', 'Male', 'LTMCJM', '2019-08-30'),
(33, 'Lenette', 'Houldey', '1968-10-17', 'Female', 'AUYEGV', '2020-03-25'),
(34, 'Northrup', 'Christall', '2001-02-27', 'Male', 'KTSFVZ', '2021-04-04'),
(35, 'Reinold', 'Reece', '1986-10-02', 'Male', 'XDHOOC', '2017-06-08'),
(36, 'Linnea', 'Samber', '1987-05-19', 'Female', 'DWFOBV', '2020-06-29'),
(37, 'Candice', 'Shrieves', '1995-12-06', 'Female', 'PPHVMX', '2017-08-02'),
(38, 'Rosy', 'Cossam', '2001-12-28', 'Female', 'LTMCJM', '2022-02-07'),
(39, 'Kelly', 'Willeson', '1992-11-23', 'Male', 'WEYOCT', '2021-09-17'),
(40, 'Manfred', 'Ryce', '1990-12-04', 'Male', 'TPKTDA', '2018-03-30'),
(41, 'Josee', 'Birdwistle', '1984-06-18', 'Female', 'RZKWEZ', '2017-10-26'),
(42, 'Roda', 'Essel', '1999-12-21', 'Female', 'YDDNMY', '2022-03-21'),
(43, 'Orsola', 'Fowles', '2000-05-19', 'Female', 'RYCYTM', '2017-09-09'),
(44, 'Zeb', 'Jancik', '1983-05-11', 'Male', 'LIYXHO', '2017-09-07'),
(45, 'Tracey', 'Greenin', '1997-08-19', 'Male', 'KTSFVZ', '2019-06-08'),
(46, 'West', 'Ralston', '1992-09-05', 'Male', 'URXMIY', '2022-05-10'),
(47, 'Tobie', 'Sandifer', '1989-03-08', 'Male', 'UXGHWU', '2018-07-07'),
(48, 'Danella', 'Josilevich', '2000-11-29', 'Female', 'UXGHWU', '2018-06-05'),
(49, 'Claudius', 'Labbett', '1983-10-31', 'Male', 'XEDFDC', '2018-08-22'),
(50, 'Hobie', 'Plumbe', '1998-12-22', 'Male', 'PPHVMX', '2020-02-03'),
(51, 'Editha', 'Hitschke', '1989-02-26', 'Female', 'AGMGNT', '2019-03-17'),
(52, 'Norbert', 'Sonley', '2001-07-12', 'Male', 'ZZLZVO', '2017-10-29'),
(53, 'Genevra', 'Pantry', '2001-04-20', 'Female', 'IGPSPF', '2020-12-25'),
(54, 'Carney', 'Maguire', '1988-05-28', 'Male', 'WEYOCT', '2017-10-21'),
(55, 'Tull', 'Marchello', '1999-07-07', 'Male', 'ERXHXW', '2019-05-07'),
(56, 'Huntington', 'Olijve', '1985-12-12', 'Male', 'AGMGNT', '2017-07-12'),
(57, 'Yurik', 'Lutz', '1982-04-15', 'Male', 'OUEGSW', '2020-02-23'),
(58, 'Herc', 'Penman', '1996-03-09', 'Male', 'BAIWSZ', '2017-12-30'),
(59, 'Rosemarie', 'MacPaike', '1994-12-26', 'Female', 'YQGMYO', '2019-10-21'),
(60, 'Thorndike', 'Linner', '1981-08-17', 'Male', 'RJFDKL', '2022-01-24'),
(61, 'Carina', 'Damrell', '1970-06-06', 'Female', 'ZZLZVO', '2019-01-19'),
(62, 'Gibbie', 'Spiby', '1977-03-30', 'Male', 'AGMGNT', '2018-12-31'),
(63, 'Gaultiero', 'Myrie', '1998-11-16', 'Male', 'AGMGNT', '2019-09-10'),
(64, 'Renault', 'Cardow', '1999-12-16', 'Male', 'RCOJXP', '2017-11-16'),
(65, 'Dalli', 'Couzens', '1981-08-07', 'Male', 'JGNRAX', '2021-05-16'),
(66, 'Omar', 'Boyland', '1990-10-28', 'Male', 'RZKWEZ', '2019-11-22'),
(67, 'Clyde', 'Labell', '1972-08-09', 'Male', 'FXLJBS', '2018-07-21'),
(68, 'Shaine', 'Jude', '1974-08-28', 'Female', 'UXGHWU', '2017-09-04'),
(69, 'Delcina', 'Futcher', '1988-12-04', 'Female', 'FHVWRA', '2019-04-17'),
(70, 'Rhys', 'Quadri', '2000-09-27', 'Male', 'IGPSPF', '2019-02-10'),
(71, 'Ansel', 'Sparkwill', '1965-10-28', 'Male', 'JGNRAX', '2020-05-24'),
(72, 'Lyell', 'Areles', '1985-11-28', 'Male', 'XDHOOC', '2020-07-13'),
(73, 'Irving', 'Felgate', '1990-01-14', 'Male', 'ZZNPNJ', '2022-05-20'),
(74, 'Dosi', 'Kiff', '1995-04-07', 'Female', 'MPKCBF', '2018-02-12'),
(75, 'Dani', 'Dare', '2000-06-09', 'Male', 'BAIWSZ', '2020-01-13'),
(76, 'Georgy', 'Eden', '2001-03-26', 'Male', 'BBKUOF', '2021-09-22'),
(77, 'Edouard', 'Ashenhurst', '1983-02-24', 'Male', 'RCOJXP', '2018-11-05'),
(78, 'Artie', 'Fludgate', '1981-12-10', 'Male', 'RJFDKL', '2022-01-16'),
(79, 'Carmine', 'Asplen', '1998-01-24', 'Male', 'KTSFVZ', '2021-10-03'),
(80, 'Iona', 'Flear', '1981-08-24', 'Female', 'TPKTDA', '2019-06-16'),
(81, 'Hector', 'Edmondson', '1971-09-16', 'Male', 'JPVZJU', '2021-06-17'),
(82, 'Lyndsay', 'Jovicevic', '1975-12-17', 'Female', 'DLOXNK', '2019-10-15'),
(83, 'Alfy', 'Jackalin', '1987-02-28', 'Female', 'YGYUKI', '2020-11-18'),
(84, 'Wright', 'Bard', '1980-09-01', 'Male', 'JPXNYK', '2018-10-21'),
(85, 'Elspeth', 'Horsley', '1989-05-30', 'Female', 'ASHUHP', '2017-10-27'),
(86, 'Hunt', 'Stair', '1982-07-06', 'Male', 'YDDNMY', '2022-05-10'),
(87, 'Carlina', 'Furzer', '1979-09-19', 'Female', 'HHKHHL', '2017-12-08'),
(88, 'Darcie', 'Antrag', '1970-05-31', 'Female', 'IGPSPF', '2019-10-02'),
(89, 'Kellby', 'Cheston', '1968-10-09', 'Male', 'JPVZJU', '2018-03-26'),
(90, 'Vasili', 'Crummy', '1979-04-01', 'Male', 'RYCYTM', '2021-08-01'),
(91, 'Moshe', 'Groocock', '1969-09-14', 'Male', 'FXLJBS', '2018-11-26'),
(92, 'Alena', 'Ludmann', '1997-05-12', 'Female', 'YQGMYO', '2021-12-24'),
(93, 'Prentice', 'Axton', '2000-01-07', 'Male', 'URXMIY', '2021-07-08'),
(94, 'Cob', 'Campana', '1972-03-27', 'Male', 'YDDNMY', '2021-02-14'),
(95, 'Madella', 'Kingswold', '1978-12-04', 'Female', 'JPXNYK', '2020-10-21'),
(96, 'Ida', 'Barnsley', '1968-04-12', 'Female', 'FQRRLP', '2017-11-05'),
(97, 'Barbabas', 'O\'Sirin', '2000-06-14', 'Male', 'YQGMYO', '2019-10-13'),
(98, 'Rozelle', 'Westby', '2001-09-27', 'Female', 'EXUSVD', '2021-10-07'),
(99, 'Trent', 'Vandenhoff', '1972-10-02', 'Male', 'FQRRLP', '2017-11-20'),
(100, 'Kalie', 'Brinicombe', '1968-04-05', 'Female', 'AUYEGV', '2019-10-01'),
(101, 'Alysa', 'Colman', '1978-09-17', 'Female', 'RCOJXP', '2017-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `research_center`
--

CREATE TABLE `research_center` (
  `pa_budget` double NOT NULL,
  `moh_budget` double NOT NULL,
  `organization_abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `research_center`
--

INSERT INTO `research_center` (`pa_budget`, `moh_budget`, `organization_abbreviation`) VALUES
(4473.1, 1348.8, 'AGMGNT'),
(4727.8, 6745.9, 'AGMGNT'),
(3103, 5782.1, 'EXUSVD'),
(8888.9, 9261.2, 'FHVWRA'),
(2619.7, 3885.3, 'GMNMNT'),
(4003.7, 1253.4, 'HHKHHL'),
(2715.8, 4472.7, 'LIYXHO'),
(5349.4, 9373.4, 'LIYXHO'),
(1673.2, 3399.2, 'MOCYCG'),
(6466.5, 8173.7, 'MPKCBF'),
(1001.2, 4889.1, 'OUEGSW'),
(8554.2, 7798.7, 'RCOJXP'),
(5215.8, 544.9, 'UARZSU'),
(4715.3, 2434.8, 'URXMIY'),
(8333.3, 5625, 'URXMIY'),
(8367.6, 7065.7, 'UXGHWU'),
(8242.4, 1534.1, 'XEDFDC'),
(2187, 2934.4, 'YQGMYO'),
(2949.6, 7954.1, 'YSNQLY'),
(4259.9, 6998.3, 'YSOFOA');

-- --------------------------------------------------------

--
-- Table structure for table `scientific_field`
--

CREATE TABLE `scientific_field` (
  `scientific_field_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scientific_field`
--

INSERT INTO `scientific_field` (`scientific_field_name`) VALUES
('Amlodipine Besylate'),
('benzonatate'),
('Carbidopa and Levodo'),
('care one sore throat'),
('Fluocinolone Acetoni'),
('Gabapentin'),
('HairQ-Plus'),
('Levetiracetam'),
('Quetiapine Fumarate'),
('Tag Alder');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
  `phoneno` bigint(20) NOT NULL,
  `organization_abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`phoneno`, `organization_abbreviation`) VALUES
(2299006544, 'AGMGNT'),
(2866504649, 'AGMGNT'),
(4147531143, 'ASHUHP'),
(7389685039, 'AUYEGV'),
(2521031275, 'BAIWSZ'),
(4596066683, 'BAIWSZ'),
(5362394775, 'BAIWSZ'),
(6231436325, 'BZZWAQ'),
(8399553289, 'DLOXNK'),
(5119231663, 'DWFOBV'),
(2946857575, 'ERXHXW'),
(8521661038, 'EXUSVD'),
(1506558765, 'FHVWRA'),
(6616304191, 'FQRRLP'),
(1575262570, 'FXKXUB'),
(2418620956, 'FXLJBS'),
(1742911655, 'GMNMNT'),
(2816509444, 'HHKHHL'),
(5384146706, 'HHKHHL'),
(6262364931, 'HHKHHL'),
(4395888143, 'JGNRAX'),
(2273179195, 'JPVZJU'),
(8657614940, 'JPVZJU'),
(7509236312, 'JPXNYK'),
(9915362084, 'LIYXHO'),
(9284811049, 'MOCYCG'),
(5687300207, 'MPKCBF'),
(9638286849, 'MPKCBF'),
(6735320111, 'OUEGSW'),
(2481493929, 'PPHVMX'),
(9122127140, 'RCOJXP'),
(5089941108, 'RYCYTM'),
(1218551460, 'RZKWEZ'),
(4515340121, 'RZKWEZ'),
(9977101444, 'STKETM'),
(4514840448, 'SUDXLJ'),
(8871710395, 'SUDXLJ'),
(5208426277, 'TOWGKZ'),
(2165824548, 'TPKTDA'),
(6602867814, 'TPKTDA'),
(1169793414, 'URXMIY'),
(7915457344, 'UXGHWU'),
(7022051298, 'WEYOCT'),
(3788305342, 'XDHOOC'),
(5875911678, 'XDHOOC'),
(6058939454, 'YDDNMY'),
(7898284007, 'YSNQLY'),
(1452385311, 'ZZLZVO'),
(2252298492, 'ZZNPNJ'),
(8106920575, 'ZZNPNJ');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `moh_budget` double NOT NULL,
  `organization_abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`moh_budget`, `organization_abbreviation`) VALUES
(1414.1, 'ASHUHP'),
(2676.4, 'DLOXNK'),
(9757.6, 'ERXHXW'),
(5533.3, 'GIDVFS'),
(8353.9, 'GIDVFS'),
(1454.7, 'JPXNYK'),
(3890.1, 'KTSFVZ'),
(1641.4, 'PPHVMX'),
(8888.7, 'RZKWEZ'),
(9366.1, 'TPKTDA');

-- --------------------------------------------------------

--
-- Table structure for table `works_on_project`
--

CREATE TABLE `works_on_project` (
  `project_title` varchar(100) NOT NULL,
  `researcher_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works_on_project`
--

INSERT INTO `works_on_project` (`project_title`, `researcher_ID`) VALUES
('Jwqmhjzuo', 1),
('Nerlpuxcu', 9),
('Bajzlifcr', 15),
('Kgmbyfgny', 21),
('Jwqmhjzuo', 25),
('Scphslbep', 32),
('Pvyzmyqbq', 33),
('Nizwyjeuy', 34),
('Ycwcphetv', 39),
('Zmlcqljqb', 40),
('Beasvvqgf', 41),
('Utmuwitnn', 45),
('Ktvezedqw', 46),
('Dtblslnln', 48),
('Hotfcjyds', 52),
('Jnutsxvxp', 53),
('Ojnvaebtr', 55),
('Cxbyjjmym', 62),
('Glyzvyqxm', 62),
('Scphslbep', 68),
('Fvjsdafig', 69),
('Ojnvaebtr', 71),
('Ufojgvngc', 73),
('Anvngeidu', 76),
('Urmhldqfs', 81),
('Ijcelqvup', 82),
('Kjiqweyse', 83),
('Fuwantahl', 84),
('Kgmbyfgny', 90),
('Fnpkjoejs', 93);

-- --------------------------------------------------------

--
-- Structure for view `2project_per_researcher`
--
DROP TABLE IF EXISTS `2project_per_researcher`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `2project_per_researcher`  AS SELECT `researcher`.`researcher_firstname` AS `researcher_firstname`, `researcher`.`researcher_lastname` AS `researcher_lastname`, `project`.`project_title` AS `Working_On` FROM ((`researcher` left join `works_on_project` on((`researcher`.`researcher_ID` = `works_on_project`.`researcher_ID`))) left join `project` on((`project`.`project_title` = `works_on_project`.`project_title`))) ;

-- --------------------------------------------------------

--
-- Structure for view `phones_per_organizations`
--
DROP TABLE IF EXISTS `phones_per_organizations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `phones_per_organizations`  AS SELECT `telephone`.`phoneno` AS `phoneno`, `organizations`.`organization_name` AS `Phones_Org` FROM (`telephone` join `organizations` on((`telephone`.`organization_abbreviation` = `organizations`.`organization_abbreviation`))) ORDER BY `organizations`.`organization_name` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `project_per_researcher`
--
DROP TABLE IF EXISTS `project_per_researcher`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `project_per_researcher`  AS SELECT `researcher`.`researcher_firstname` AS `researcher_firstname`, `researcher`.`researcher_lastname` AS `researcher_lastname`, `project`.`project_title` AS `Working_On` FROM ((`researcher` join `works_on_project` on((`researcher`.`researcher_ID` = `works_on_project`.`researcher_ID`))) join `project` on((`project`.`project_title` = `works_on_project`.`project_title`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD PRIMARY KEY (`deliverable_title`,`project_title`),
  ADD KEY `project_title` (`project_title`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`dateofeval`,`grade`),
  ADD KEY `project_title` (`project_title`),
  ADD KEY `researcher_ID` (`researcher_ID`);

--
-- Indexes for table `executive`
--
ALTER TABLE `executive`
  ADD PRIMARY KEY (`executive_name`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`organization_abbreviation`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_title`),
  ADD KEY `executive_name` (`executive_name`),
  ADD KEY `organization_abbreviation` (`organization_abbreviation`),
  ADD KEY `program_ID` (`program_ID`),
  ADD KEY `researcher_ID` (`researcher_ID`);

--
-- Indexes for table `project_scientific_field`
--
ALTER TABLE `project_scientific_field`
  ADD PRIMARY KEY (`project_title`,`scientific_field_name`),
  ADD KEY `scientific_field_name` (`scientific_field_name`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`researcher_ID`),
  ADD KEY `organization_abbreviation` (`organization_abbreviation`);

--
-- Indexes for table `research_center`
--
ALTER TABLE `research_center`
  ADD PRIMARY KEY (`pa_budget`,`moh_budget`),
  ADD KEY `organization_abbreviation` (`organization_abbreviation`);

--
-- Indexes for table `scientific_field`
--
ALTER TABLE `scientific_field`
  ADD PRIMARY KEY (`scientific_field_name`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`phoneno`),
  ADD KEY `organization_abbreviation` (`organization_abbreviation`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`moh_budget`),
  ADD KEY `organization_abbreviation` (`organization_abbreviation`);

--
-- Indexes for table `works_on_project`
--
ALTER TABLE `works_on_project`
  ADD PRIMARY KEY (`project_title`,`researcher_ID`),
  ADD KEY `researcher_ID` (`researcher_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliverable`
--
ALTER TABLE `deliverable`
  ADD CONSTRAINT `deliverable_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `project` (`project_title`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `project` (`project_title`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`researcher_ID`) REFERENCES `researcher` (`researcher_ID`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`executive_name`) REFERENCES `executive` (`executive_name`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`organization_abbreviation`) REFERENCES `organizations` (`organization_abbreviation`),
  ADD CONSTRAINT `project_ibfk_3` FOREIGN KEY (`program_ID`) REFERENCES `program` (`program_ID`),
  ADD CONSTRAINT `project_ibfk_4` FOREIGN KEY (`researcher_ID`) REFERENCES `researcher` (`researcher_ID`);

--
-- Constraints for table `project_scientific_field`
--
ALTER TABLE `project_scientific_field`
  ADD CONSTRAINT `project_scientific_field_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `project` (`project_title`),
  ADD CONSTRAINT `project_scientific_field_ibfk_2` FOREIGN KEY (`scientific_field_name`) REFERENCES `scientific_field` (`scientific_field_name`);

--
-- Constraints for table `researcher`
--
ALTER TABLE `researcher`
  ADD CONSTRAINT `researcher_ibfk_1` FOREIGN KEY (`organization_abbreviation`) REFERENCES `organizations` (`organization_abbreviation`);

--
-- Constraints for table `research_center`
--
ALTER TABLE `research_center`
  ADD CONSTRAINT `research_center_ibfk_1` FOREIGN KEY (`organization_abbreviation`) REFERENCES `organizations` (`organization_abbreviation`);

--
-- Constraints for table `telephone`
--
ALTER TABLE `telephone`
  ADD CONSTRAINT `telephone_ibfk_1` FOREIGN KEY (`organization_abbreviation`) REFERENCES `organizations` (`organization_abbreviation`);

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`organization_abbreviation`) REFERENCES `organizations` (`organization_abbreviation`);

--
-- Constraints for table `works_on_project`
--
ALTER TABLE `works_on_project`
  ADD CONSTRAINT `works_on_project_ibfk_1` FOREIGN KEY (`project_title`) REFERENCES `project` (`project_title`),
  ADD CONSTRAINT `works_on_project_ibfk_2` FOREIGN KEY (`researcher_ID`) REFERENCES `researcher` (`researcher_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
