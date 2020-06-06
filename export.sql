-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 06, 2020 at 12:33 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cycling_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `date`, `image`) VALUES
(1, 'Shimano XT M8120 : la nouvelle référence des freins polyvalents', 'Puissants, ergonomiques, relativement faciles à doser et résistants à la chaleur, les Shimano XT M8120 ont tout pour plaire. Leur seul défaut est leur inconstance, avec un point de contact qui peut parfois varier d’un jour à l’autre ou au cours d’une journée. C’est plutôt l’expérience qui parle car nous n’avons pas rencontré ces soucis lors de ce test mais nous l’avons remarqué sur plusieurs vélos en essai longue durée et si ce n’est pas dangereux, cela peut être perturbant. En dehors de cela, les XT frôlent la perfection pour un prix très correct. Pour les budgets réduits, la gamme SLX dispose depuis cette année de freins 4 pistons construits sur le modèle des XT et qui offrent les mêmes sensations que leurs grands frères.', '2020-03-12', 'https://www.vojomag.com/app/uploads/2020/02/Test-freins-disque-vtt-4-pistons-action-Visite-Copyright-OBeart-Vojomag-14.jpg'),
(2, 'BMC Fourstroke 01 : le haut du panier', 'Concevoir un vélo de XC très performant et actuel : le contrat est rempli. Mais, sans peut-être vraiment le vouloir, les développeurs de chez BMC ont fait beaucoup plus. Ils n’ont pas juste fait une bête de course, ils l’ont aussi rendue accessible pour vous et moi. Pour qu’on puisse se prendre pour des champions et, au final, pour qu’on ait une énorme banane après chaque sortie. Sur de nombreux points, ce BMC Fourstroke 01 nous a rappelé le Scott Spark qui demeure à nos yeux encore aujourd’hui une référence. Mais après avoir longuement roulé le BMC, nous le disons sans hésitation : le Fourstroke nous a encore plus séduits que le Scott. C’est un peu le même genre, mais avec une géométrie encore un peu plus actuelle, une suspension encore un poil plus efficace, une tige de selle télescopique intégrée particulièrement aboutie et qui donne un coup de vieux à tous ces autres modèles qui n’en sont pas équipés. Mais voilà, tout cela a un prix et malgré toutes ses qualités, c’est votre portefeuille qui risque de dire non et de vous obliger à partir sur un autre modèle, peut-être pas tout à fait aussi performant et abouti, mais nettement plus accessible. Si BMC parvenait à baisser un peu ses prix, il y aurait moyen de faire un carton…', '2019-11-22', 'https://www.vojomag.com/app/uploads/2019/11/bmc-fourstroke-test-2019-63-copyright-jan-geys-vojomag.jpg'),
(3, 'Chaussures Specialized S-Works Recon', 'Très orientées compétition et focalisées sur le rendement au pédalage, les chaussures Specialized S-Works Recon sont des chaussures pointues qui séduiront les amateurs de performance pure. Plus agréables aux pieds et tolérantes que la version précédente, elles marquent un beau progrès dans la gamme. Elles restent néanmoins plus exclusives et moins confortables que certaines de leurs rivales, Shimano en tête. Vu le budget très élevé qu’un tel achat “passion” représente (on ne parle plus ici de rationalité car peu d’entre-nous ont vraiment besoin de ce genre de produit), nous ne pouvons que vous conseiller de les essayer avant : même quelques pas ou tours de pédales dans le magasin devraient vous permettre de voir si elles correspondent bien à vos attentes et à la morphologie de votre pied, car c’est tout sauf un modèle passe-partout. Pour cela, il y a d’autres modèles dans la gamme Specialized.', '2018-11-21', 'https://www.vojomag.com/app/uploads/2018/11/Specialized-S-Works-Recon-2019-Test-Copyright-OBeart-Vojomag-31.jpg'),
(4, 'Canyon Lux CF SLX 9.0 Pro Race : pas moins vite', 'Avec son nouveau Lux, Canyon a créé un engin vraiment intéressant, très typé et qui ne ressemble à aucun autre vélo de la production actuelle. Avec le Lux, la marque allemande s’est permise de développer un vélo hyper pointu, destiné aux compétiteurs en XC et marathon. La clé à son guidon : être capable de rouler vite en toutes circonstances pour profiter de tout son potentiel. Un vrai vélo à deux visages, pas du tout flatteur et exigeant quand on ne lui rentre pas dedans, mais qui se révèle complètement dès qu’on lâche les freins et qu’on lui inflige de grands coups de jarrets. Ajoutez à cela un rapport qualité/équipement/prix toujours intéressant, ainsi qu’une très belle finition et de nombreux petits détails soignés, et vous obtenez un vélo marquant… mais qui n’est pas fait pour tout le monde. Pour cela, il y a le Neuron. Et finalement, c’est une très bonne chose. Espérons que cela soit compris par les potentiels clients moins affûtés, qui ne doivent pas voir le Neuron comme un second choix, mais comme une offre qui leur est mieux adaptée. Reste enfin la question de la disponibilité, ou plutôt de l’indisponibilité de certains modèles et tailles qui ont été très rapidement sold-out. Même si nous savons qu’il n’est jamais facile de prévoir le succès d’un modèle et de le contrebalancer avec les risques d’une sur-production, espérons que Canyon parvienne rapidement à normaliser la situation car nous percevons qu’elle génère pas mal de frustrations.', '2019-01-24', 'https://www.vojomag.com/app/uploads/2019/01/Canyon-Lux-test-profil-geometrie-Copyright-OBeart-Vojomag-7.jpg'),
(5, 'Trek Supercaliber : tout pour la vitesse', 'Le Trek Supercaliber est bien, comme on s’y attendait, un vélo de XC racing sans le moindre compromis. Cela signifie que c’est un vélo léger, efficace et que les suspensions sont avant tout là pour le grip, la vitesse et les performances, plus que pour le confort. En cela, le Supercaliber se rapproche plus d’un hardtail que d’un tout-suspendu. Il monte, accélère, tourne et se pilote comme un semi-rigide, et réclame la même attention. Par contre, il offre une adhérence qui rappelle plus celle d’un full. Pour ce programme, c’est le meilleur des deux mondes en quelque sorte. Si vous n’avez pas le physique d’un pro, le Supercaliber reste utilisable et un compagnon agréable, même si un full plus classique pourra sans doute aussi vous convenir et si vous n’exploiterez pas tout le potentiel de la machine. C’est un vélo raffiné, conçu pour les pros et les amateurs éclairés… au portefeuille bien garni, surtout dans cette version 9.9 facturée près de 10.000€. Mais comme le cadre ne change pas d’une version à l’autre, un 9.7 (4499€) ou un 9.8 (5999€) avec quelques changements peuvent sans doute s’avérer de meilleures options. Voire un montage à la carte sur base du cadre seul (3699€).', '2019-11-18', 'https://www.vojomag.com/app/uploads/2019/11/test-trek-supercaliber-harderwijk-2019-152-copyright-jan-geys-vojomag-2048x1280.jpg'),
(6, 'Canyon Grail CF SL 8.0 : un (bi)plan de génie', 'On peut penser ce qu’on veut de Canyon, de la vente directe ; on peut ne pas aimer le look de ce vélo et de son cintre si particulier. Mais quand on va au-delà des apparences et des idées préconçues, on découvre un vélo unique en son genre, qui procure un plaisir et des sensations que nous n’avions que rarement ressenties jusqu’ici, que ce soit au guidon d’un VTT ou d’un autre gravel. Bien sûr, nous n’avons pas une énorme expérience de cette catégorie de vélos et nous n’oserions pas avancer que c’est le meilleur gravel du marché. Mais tout de même : en plus de 20 ans de pratique, rarement nous avons essayé un deux roues aussi jouissif, passionnant et interpellant. Que vous soyez un vrai adepte du gravel, un vététiste à la recherche d’une monture pour l’entraînement ou pour rouler autrement sur les sentiers, voilà assurément une machine qui mérite le coup d’œil. Car avec le Grail, Canyon n’a pas juste sorti une belle fiche technique et un rapport qualité/prix alléchant sur le papier. Les Allemands ont simplement sorti un “grand” vélo. ', '2020-04-21', 'https://www.vojomag.com/app/uploads/2020/03/Canyon-Grail-CF-SL-8-test-cprght-OBeart-Vojo-2.jpg'),
(7, 'Magura MT7 : puissance et personnalisation', 'Sur le terrain, atteindre plus de 100°C à l’intérieur de l’étrier n’est pas une chose aussi facile qu’en laboratoire, surtout avec ces freins 4 pistons qui nécessitent de freiner moins longtemps qu’avec des 2 pistons. L’influence d’une purge imparfaite se fera donc moins vite sentir et la reproduction sur le terrain du souci rencontré ici en laboratoire est peu probable, raison pour laquelle cela n’a pas influencé la note finale. En conclusion, nous dirons que les MT7 se distinguent plutôt par leur très bonne ergonomie, leurs réglages accessibles et une sensation de puissance importante. Le dosage n’est pas mauvais non plus mais, comme pour les Formula, il est plus adapté à certains styles de pilotage qu’à d’autres.', '2020-03-10', 'https://www.vojomag.com/app/uploads/2020/02/Test-freins-disque-vtt-4-pistons-Details-Copyright-OBeart-Vojomag-20.jpg'),
(8, 'Rose Thrill Hill 5.0 : vaisseau furtif, mini tarif', 'Il s’est fait attendre, mais le Rose Thrill Hill vise juste, avec bien plus qu’un prix intéressant et des équipements luxueux. Le châssis mérite vraiment le détour et n’a rien d’un vélo au rabais. Que du contraire, le Thrill Hill peut se mesurer aux références du segment comme le Canyon Lux, un Epic ou un Spark. Plus accessible qu’un Lux, un peu moins explosif qu’un Epic mais plus tolérant, moins enjoué et à l’aise dans le technique qu’un Spark mais pas ridicule pour autant, il sera un choix malin et pas que de raison pour ceux qui souhaitent un vélo luxueux mais qui ne veulent ou peuvent pas dépenser des sommes folles dans un vélo. A ce sujet, même si notre version 5.0 en Sram XX1 Eagle est très agréable, le meilleur choix nous semble plus être du côté des versions 4.0 et 3.0 en Shimano XTR et XT (4499 et 3099€).', '2020-01-09', 'https://www.vojomag.com/app/uploads/2020/01/Rose-Thrill-Hill-test-Copyright-OBeart-Vojomag-4.jpg'),
(9, 'Specialized Epic HT 2020 : ultra-light... et plus tolérant', 'Ce n’est pas du côté de l’Epic HT qu’on attendait le plus de nouveautés dans la famille Specialized. Pourtant, le semi-rigide de cross-country évolue, se transforme et nous avons pu le découvrir en Californie, en compagnie de certains ingénieurs et chefs produits qui ont contribué à sa naissance. Plus tolérant, mais surtout plus léger avec un poids qui affiche souvent moins de 790 grammes.', '2019-08-06', 'https://www.vojomag.com/app/uploads/2019/08/specialized-epic-ht-2020-2019-vojo-paul-humbert-23.jpg'),
(10, 'Roues Enve M630 : luxe et volupté', 'Les Enve M630 oscillent entre œuvre d’art et haute couture. Pour autant, il serait dommage de les laisser dans une vitrine de peur de les abimer, car elles semblent aptes à résister aux pires traitement grâce à une solidité à toute épreuve. Elles jouent bien leur rôle en dopant la dynamique du vélo sur lequel elles prennent place, mais il faudra composer avec leur rigidité qui reste très importante et qui pourra en rebuter certains (pilotes légers, adeptes de longues virées ou dont le pilotage s’accorde mieux à des roues plus souples). Reste leur prix, complètement irrationnel, qui les réservera à des bikers très fortunés ou qui font des choix de vie radicaux qui leur permettent de consacrer un très gros budget à leur passion.', '2018-11-15', 'https://www.vojomag.com/app/uploads/2018/11/Roues-Enve-M630-2019-Test-Copyright-OBeart-Vojomag-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_article`, `text`) VALUES
(1, 1, 'Super cool cet article ! Je pense en commander bientôt.'),
(2, 1, 'Je vous recommande ces freins.'),
(7, 2, 'Super !'),
(24, 7, 'Je vais m\'en acheter.'),
(31, 3, 'Je les veux !'),
(39, 4, 'Très intéressant'),
(40, 5, 'Une pépite ce vélo !'),
(41, 6, 'J\'ai du mal à me rendre compte du double cintre...'),
(42, 9, 'Toujours impressionnant de voir des vélos aussi léger.'),
(43, 8, 'Je ne connaissais pas cette marque mais ils ont l\'air super top !'),
(44, 10, 'Je les ai à la maison et je vous les recommande.'),
(45, 10, 'Idéal pour la compétition'),
(46, 5, 'Super article, merci !'),
(47, 4, 'J\'aimerais bien pouvoir le tester un jour');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
