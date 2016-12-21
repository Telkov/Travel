-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2016 г., 12:30
-- Версия сервера: 5.5.48
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `forfun_travel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Cities`
--

CREATE TABLE IF NOT EXISTS `Cities` (
  `id` int(11) NOT NULL,
  `city` varchar(64) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `uindex` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Cities`
--

INSERT INTO `Cities` (`id`, `city`, `countryid`, `uindex`) VALUES
(1, 'Dubai', 1, NULL),
(2, 'Sharjah', 1, NULL),
(3, 'Ras al-Khaimah', 1, NULL),
(4, 'Abu Dhabi', 1, NULL),
(5, 'Fujairah', 1, NULL),
(6, 'Antalya', 2, NULL),
(7, 'Kemer', 2, NULL),
(8, 'Side', 2, NULL),
(9, 'Marmaris', 2, NULL),
(10, 'Bodrum', 2, NULL),
(11, 'Santo Domingo', 3, NULL),
(12, 'Punta Cana', 3, NULL),
(13, 'La Romana', 3, NULL),
(14, 'Boca Chica', 3, NULL),
(15, 'Puerto Plata ', 3, NULL),
(16, 'Sofia', 4, NULL),
(17, 'Golden Sands', 4, NULL),
(18, 'Sunny Beach', 4, NULL),
(19, 'Bansko', 4, NULL),
(20, 'Borovets', 4, NULL),
(21, 'Prague', 5, NULL),
(22, 'Karlovy Vary', 5, NULL),
(23, 'Marianske Lazne', 5, NULL),
(24, 'Bangkok', 6, NULL),
(25, 'Phuket', 6, NULL),
(26, 'Pattaya', 6, NULL),
(27, 'Ko Chang', 6, NULL),
(28, 'Ko Samui', 6, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `text` varchar(1024) NOT NULL,
  `datein` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Countries`
--

CREATE TABLE IF NOT EXISTS `Countries` (
  `id` int(11) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `ico` mediumblob
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Countries`
--

INSERT INTO `Countries` (`id`, `country`, `ico`) VALUES
(1, 'UAE', NULL),
(2, 'Turkey', NULL),
(3, 'Dominican Republic', NULL),
(4, 'Bolgaria', NULL),
(5, 'Czech Republic', NULL),
(6, 'Thailand', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Hotels`
--

CREATE TABLE IF NOT EXISTS `Hotels` (
  `id` int(11) NOT NULL,
  `hotel` varchar(64) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hotels`
--

INSERT INTO `Hotels` (`id`, `hotel`, `cityid`, `countryid`, `stars`, `cost`, `info`) VALUES
(1, 'Best Western Premier Thracia Hotel', 16, 4, 4, 100, 'Отель Best Western Premier Thracia расположен в центре Софии. К услугам гостей современные номера с бесплатным Wi-Fi и телевизором с плоским экраном. Частная парковка на территории отеля предоставляется гостям за дополнительную плату.\r\nВо всех номерах в отеле Thracia имеются мини-бар, принадлежности для чая/кофе, телевизор со спутниковыми каналами, а в некоторых и гостиный уголок.\r\nКаждое утро сервируется завтрак «шведский стол», в меню которого входят блюда местной и интернациональной кухонь.\r\nСреди прочих удобств отеля Best Western Premier Thracia — круглосуточно работающая стойка регистрации, прокат автомобилей и прачечная.\r\nОтель находится в 10 минутах ходьбы от собора Святой Недели, Археологического музея и Национальной художественной галереи.\r\nЦентр города — отличный выбор, если вам интересны культура, ночная жизнь ипамятники.'),
(2, 'Admiral', 17, 4, 5, 150, 'Отель Адмирал - жемчужина в короне курорта Золотые пески находится в непосредственной близости от морского берега. История отеля началась еще в 1957 году, когда открылся под названием Родина. В конце 2003 и начале 2004 года, отель приобрел свой нынешний облик после основной реконструкции.\r\nРаботающий круглый год, пятизвездочный отель отличается своей уникальной архитектурой и современным интерьером и является прекрасным местом для отдыха, развлечений и деловых встреч.\r\nЦенителям стиля и элегантности отель предлагает 300 роскошных номеров и апартаментов с великолепным видом на море, ресторан, лобби-бар, венский салон, бар на мезонином этаже, ночной бар, элегантные конференц-залы, беспроводной доступ в Интернет в гостиничном комплексе.\r\nПостроен в 2004 году, отель &quot;Адмирал&quot; - это гостеприимство и люкс.\r\nГод последнего ремонта 2012\r\nРАСПОЛОЖЕНИЕ:\r\nв самом сердце курортного комплекса, в центре активной жизни, перед отелем находится центральный пляж и открытый бассейн, \r\nв непосредственной близости всево'),
(3, 'Atlas', 17, 4, 4, 90, 'Отель находится в 25 км от международного аэропорта города Варна, в 18 км от города Варна \r\nв южной части курорта Золотые Пески в 350 м от центра. Рядом находятся отели Aphrodite, Tzarevetz Hotel.'),
(4, 'Barcelo Royal Beach', 18, 4, 5, 150, 'Расположение:\r\n2-я линия, отель расположен в 70 метрах от пляжа.'),
(5, 'Fiesta M', 18, 4, 4, 80, 'Расположение: \r\nОтель находится в 30 км от международного аэропорта Бургас, в северной части курорта Солнечный берег на первой береговой линии. \r\nРядом расположены отели Fiesta Beach, Helena Resorts, Majestic Beach Resort.'),
(6, 'Kempinski Grand Arena', 19, 4, 5, 160, 'Отель Kempinski Grand Arena с прямым выходом на станцию гондольного подъемника находится у подножия горы Пирин в городе Банско.Великолепные и роскошные номера отеля ярко оформлены в современном стиле.'),
(7, 'Iceberg', 19, 4, 3, 40, 'Открытый в декабре 2005 года, отель Айсберг располагается в новой части города Банско. Отель оформлен элегантно и стильно что не может не повлиять на отдых в этом отеле. Все необходимые современные удобства, а также удачное расположение вблизи подъемника делают отель Айсберг замечательным местом для любителей горнолыжных курортов.'),
(8, 'Mura', 20, 4, 3, 20, 'Расположение: \r\nЧетырех этажный отель находится в 150 метрах от гондольного подъемника &quot;Ястребец&quot;.\r\nРасстояние до центра: 50 м'),
(9, 'Yastrebets', 20, 4, 4, 43, 'Оздоровительный спа-отель расположен на горнолыжном склоне Ястребец. К услугам гостей ресторан изысканной кухни и бар с живой фортепианной музыкой. Гости могут бесплатно пользоваться бугельным подъемником перед отелем, ведущим к горнолыжному склону «Ястребец-3».'),
(10, 'Caesar Prague', 21, 5, 4, 46, 'Отель Caesar Palace, находящийся в полностью отреставрированном историческом здании в центре Праги, располагает элегантными номерами с антикварной мебелью и бесплатным доступом в Интернет.Гостям отеля Caesar Palace предоставляется бесплатный трансфер от пражского аэропорта имени Вацлава Гавела.Национальный театр, Карлов мост, Вацлавская площадь и популярное кафе Славия находятся на расстоянии пешей прогулки. А буквально за углом расположена знаменитая пивоварня У Флеку.В лобби-баре отеля Caesars Palace предлагается широкий ассортимент напитков, коктейлей и легких закусок. В распоряжении гостей также сауна и фитнес-центр.'),
(11, 'Ibis Old Town', 21, 5, 3, 37, 'Отель Ibis Praha Old Town расположен в самом сердце Праги, в 100 метрах от старого города. Главная торговая улица На Поричи находится всего в нескольких шагах от отеля.Все номера отеля Ibis Praha оснащены кондиционерами, а также душем и туалетом. Некоторые из них также имеют телевизор с плоским экраном. Отель оборудован удобствами для гостей на инвалидных креслах. По запросу отель предлагает номера с ванными комнатами с легким доступом.Гости отеля Ibis Praha могут дополнительно заказать богатый завтрак &quot;шведский стол&quot;. В нерабочие часы ресторана прохладительные напитки и закуски подаются в баре отеля Rendezvous.Староместская площадь, Вацлавская площадь и Еврейский квартал находятся в 500 метрах от отеля Ibis Praha Old Town. Карлов мост находится в 1 км, а Пражский Град в 1,5 км. Узел общественного транспорта Namesti Republiky находится в 100 метрах от отеля. Государственная опера расположена в 800 метрах.'),
(12, 'Carlsbad Plaza', 22, 5, 5, 120, '«Carlsbad Plaza» – это фешенебельный пятизвездочный Spa &amp; Wellness отель, открытый в декабре 2005 года, включающий 126 номеров и 26 апартаментов. Отель находится в тихом районе курортной зоны Карловых Вар, рядом с «Императорской Лечебницей». В апреле 2007 года отель «Carlsbad Plaza» стал членом самой престижной ассоциации отелей класса люкс: „The Leading Hotels of the World&quot; – успешно выполнив 1500 предписанных стандартов. В том же году в примыкающем к отелю здании был открыт лечебный центр «Carlsbad Clinic». Оба здания соединены проходами. На сегодняшний день отель «Carlsbad Plaza» предлагает самые обширные лечебные площади в регионе, широкий ассортимент медицинских процедур, лечебных и косметических программ. Уникальный «Wellness Land» приглашает гостей отдохнуть в нескольких бассейнах и саунах.'),
(13, 'Dvorak', 22, 5, 4, 76, 'Курортная гостиница Дворжак 4*S расположена на берегу реки Тепла, вблизи курортного павильона Вржидло и колоннад с минеральными источниками. Санаторий принадлежит австрийской гостиничной сети «Vienna International» и является единственным санаторием Карловых Вар, который предоставляет уникальную курортную терапию, разработанную известным австрийским врачом Францем Майером. Хорошее самочувствие гостей является основной задачей всего персонала отеля.'),
(14, 'Maxim', 23, 5, 3, 39, 'Отель Максим является одним из культурных памятников города Марианские Лазни. В этом отеле на рубеже 1923 и 1924, проходил лечение всемирно известный русский писатель Максим Горький. В 2004 году была проведена полная реновация, обновлена мебель, построили свой собственный бальнеоцентр с бассейном.'),
(15, 'Occidental el Ambajador', 11, 3, 5, 230, 'Удобно расположенный вблизи оживленного коммерческого и делового района Санто-Доминго.\r\nВ отеле Occidental El Embajador к каждому гостю относятся так, как подобает относиться к дипломатам.Из отеля открывается прекрасный вид на столицу Доминиканской Республики и тихий жилой район с пышной растительностью. Отель предлагает гостям стильные номера, оборудованные всеми современными удобствами.Бизнес-туристы и отдыхающие несомненно оценят индивидуальный подход в обслуживании, предоставляемый на представительском этаже отеля. \r\nА также, роскошный и очень внимательный сервис королевского клуба и потрясающее казино отеля.\r\nСеть отелей: Occidental.'),
(16, 'Barcelo Bavaro Palace Deluxe', 12, 3, 5, 360, 'В первом ряду от моря, среди восхитительной кокосовой рощи, в поистине привилегированном месте расположился отель Barceló Bávaro Palace.'),
(17, 'Tropical Princess', 12, 3, 4, 250, 'Открывшийся в 2001 г в курортной зоне Пунта Кана, работающий по системе all inclusive (&quot;все включено&quot;), является частью курортного комплекса Prinsess Resort.\r\nПомимо Tropical Princess Beach Resort &amp; Spa, в комплекс входят Bavaro Princess All Suites Resort, Punta Cana Princess и Caribe Club Princess.\r\nГости отелей могут пользоваться территорией и инфраструктурой всего комплекса, кроме территории Bavaro Princess All Suites. Из всех услуг этого отеля для гостей других отелей комплекса доступны лишь казино и дискотека.\r\nМежду отелями курсирует бесплатный автобус.\r\nШирокие возможности для развлечений и занятий спортом, разнообразные услуги для отдыхающих с детьми, большая территория отелей комплекса дают возможность замечательно отдохнуть с семьей, или совместить спокойный пляжный и активный отдых. В 28 минутах от международного аэропорта Пунта Кана.'),
(18, 'Dreams La Romana', 13, 3, 5, 340, 'Dreams La Romana Resort &amp; Spa Доминиканская Республика — изысканный комфортабельный отель, расположенный у бирюзового Карибского моря, среди изумрудной зелени тропического сада и тенистых кокосовых пальм. Отель располагает отличной инфраструктурой для семейного, романтического и активного отдыха на берегу океана. Элегантные номера с балконами, оборудованные по последнему слову техники, три больших бассейна, чудесный пляж с центром водного спорта, СПА центр, теннисные корты, спортивные площадки, казино и множество других развлечений, клубы для детей и подростков, семь ресторанов с широчайшим выбором блюд со всего мира и семь баров на любой вкус, а также современно оснащенный конференц-центр и многое другое. Dreams La Romana Resort &amp; Spa Доминиканская Республика — отель, в котором всё включено — от первоклассных услуг до безупречного сервиса и уютной атмосферы.'),
(19, 'Luxury Bahia Principe Bouganville', 13, 3, 5, 370, 'Первоклассный отельный комплекс с развитой инфраструктурой и SPA-центром с большим выбором процедур. В дополнение к эксклюзивному сервису отеля его клиенты могут пользоваться инфраструктурой всего комплекса. Рекомендуем для активного и разнообразного отдыха. Отель только для взрослых (от 18 лет), поэтому особенно подойдет парам и молодоженам.'),
(20, 'Viva Wyndham Dominicus Beach', 13, 3, 3, 120, 'Этот курорт, работающий по системе &quot;все включено&quot; и идеально расположенный прямо на пляже в окружении пышных тропических садов, предлагает многочисленные рестораны, просторные номера и бесконечное разнообразие развлечений.К Вашим услугам 4 плавательных бассейна, несколько теннисных кортов и занятия по фитнесу - в отеле Viva Wyndham Dominicus Beach каждый сможет найти что-нибудь себе по душе. Гостям также предлагаются ежедневные развлечения, в том числе детские программы, ремесленные кружки и тематические вечера.Гости могут воспользоваться услугами спа-салона или турбюро отеля Dominicus Beach Viva Wyndham, чтобы организовать дайвинг, прогулки на лошадях или виндсерфинг. На курорте также есть собственный ночной клуб, сувенирный магазин и магазин товаров первой необходимости.Wyndham Dominicus Beach предлагает разнообразное питание, в том числе &quot;шведский стол&quot;, пицца и мексиканская кухня. Гости также могут отдохнуть в его барах и лаундж-салонах, где подаются разнообразные закуски и коктейли.'),
(21, 'Viva Wyndham Dominicus Palace', 13, 3, 4, 230, 'Viva Wyndham Dominicus Palace расположен недалеко от рыбацкого селения Байяибе (Bayahibe), рядом с городом Ла Романа. Viva Windham Dominicus Palace отличается более спокойной и изысканной атмосферой. По территории комплекса разбросаны корпуса, оформленные в колониальном стиле. Гости Viva Wyndham Dominicus Palace имеют право пользования пляжем и всеми услугами соседнего отеля Viva Wyndham Dominicus Beach. Отель отличается разнообразием и высоким уровнем проведения спортивных и развлекательных мероприятий, идеальными условиями для отдыха молодежи и семей с детьми. Один из самых лучших пляжей страны. Отличное место для дайвинга.\r\nВ номерах Superior: две двуспальные кровати или большая двуспальная кровать, кондиционер, цветной телевизор, спутниковые телеканалы, телефон, утюг и гладильная доска, мини-бар с безалкогольными напитками, сейф для хранения ценных вещей, фен, балкон, ванная комната с ванной и душем. При необходимости в комнате может быть установлена дополнительная детская кровать. Максимальная вместимост'),
(22, 'Don Juan Beach Resort', 14, 3, 3, 110, 'Курортный отельный комплекс Don Juan Beach Resort (Дон Жуан Бич Резорт) 3* расположен около белоснежных пляжей с прозрачной водой в местечке Бока Чика\r\nНа территории отеля гости могут поплавать с аквалангом при помощи компании Treasure Divers, а также поиграть в теннис, заняться виндсерфингом или отправиться в велосипедный тур.\r\nРАСПОЛОЖЕНИЕ :\r\nМеждународный аэропорт Лас-Америкас и центр города Санто-Доминго находятся менее чем в 30-ти минутах езды от отеля. Туристический центр деревни Бока Чика расположен менее чем в 1 км.'),
(23, 'Iberostar Costa Dorada', 15, 3, 5, 230, 'Комфортабельный, недавно обновленный отель GRAND PARADISE PLAYA DORADA предлагает все необходимое для проведения незабываемого отпуска. Мягкий климат, роскошные коралловые рифы, богатые запасы янтаря и возможности для серфинга и других водных видов спорта привлекают сюда туристов со всего мира. Любителям культурного отдыха здесь также не придется скучать - до центра города рукой подать, поэтому пляжный досуг можно будет с легкостью сочетать с экскурсиями по историческому центру Пуэрто-Плата'),
(24, 'Grand Paradise Playa Dorada', 15, 3, 3, 120, 'Этот курортный отель с проживанием по системе &quot;всё включено&quot; расположен на берегу Атлантического океана в 10 минутах езды от центра Пуэрто-Платы.\r\nВ отеле гостей ждут 4 ресторана и номера с телевизорами с плоскими экранами.\r\nКаждый номер в отеле Grand Paradise Playa Dorada оформлен в мореходном стиле.\r\nВ номерах есть балкон с видом на бассейн, океан или сад.\r\nВ этом доминиканском курортном отеле гостям предлагаются бесплатные уроки дайвинга, верховая езда и вечерняя развлекательная программа.\r\nТакже гости могут взять напрокат водные лыжи и парусники.\r\nТакже для гостей курортного отеля предоставляются полуночные закуски.'),
(25, 'Delphin Diva Premiere', 6, 2, 5, 240, 'Роскошный курорт Delphin Diva находится в Анталии. Обслуживание гостей ведется по системе &quot;все включено&quot;. Гостей ждет частный пляж протяженностью 230 метров, а также открытый бассейн с водными горками.'),
(28, 'Club Hotel Falcon', 6, 2, 4, 220, 'Расположение:в 12 км от аэропорта Анталии, в 5 км от центра города, в курортном районе Лара, на возвышенности, на берегу моря. Год постройки - 1990, реконструкции - 2004, прежнее  название - Lara Falcon.\r\nОдин  пятиэтажный  корпус MAIN  BUILDING :\r\n61 стандартный номер (одна комната + санузел, 16 кв. м., max 2+1 чел.),\r\n6 suites (две комнаты с дверью + санузел, 30 кв. м., max 3+1 чел.),\r\n4  triple rooms  (одна  комната  +  санузел, 23  кв.м.,  max  2+2  чел.).\r\nТри  пятиэтажных  корпуса ANNEX:\r\n90 стандартных номеров  (одна комната + санузел, 19 кв. м., max 2+1 чел.).\r\nВ номерах: центральный кондиционер, ванна / душ, телевизор, телефон, мини-бар (платно), фен, пол - ковровое покрытие, балкон(не во всех номерах).\r\nК вашим услугам: главный ресторан с открытой террасой, ночной клуб-дискотека (с 23:00), 5 баров, открытый бассейн, детский бассейн, детская игровая площадка, няня. Парикмахерская, прачечная, торговый центр, сейф на reception (платно). Конференц-залы, кинотеатры.'),
(29, 'Blue Dreams', 10, 2, 4, 170, 'Расположение : расположен в 25 км от аэропорта г. Бодрум, в 10 км от центра г. Бодрум, на самом берегу моря\r\nОтель : Комплекс 2-х и 3-х этажных коттеджей: 196 standard rooms (30% - без балкона, макс 2+1 чел, 27 м2); 38 двухкомнатных family rooms (холл, спальня с дверью, макс 2+3 чел, 39 м2). К оплате принимаются кредитные карты: Visa, Master. Размещение с животными - нет'),
(30, 'Lucida Beach', 7, 2, 5, 230, 'Небольшая ухоженная территория, разнообразное питание, приветливый персонал. Рекомендуем для семейного отдыха, в том числе с детьми.'),
(31, 'Zena Resort Hotel', 7, 2, 5, 270, 'Отель Zena Resort 5* расположен в окрестностях курортного поселка Чамьюва, в 6 км от города Кемер и в 200 м от берега моря и собственного песчано-галечного пляжа. Год постройки отеля – 2004 , последняя реконструкция – 2012. бщая площадь 17 000 м2 Main building – один 3-этажный корпус.'),
(32, 'Rainbow Castle Hotel', 8, 2, 3, 70, 'Отель Rainbow Castle яркий и красочный, великолепно подойдет для семейного отдыха. Состоит из восьми 5-ти этажных зданий и тринадцати 4-х этажных. Последняя ренновация была в 2015 году. Уютная, ухоженная территория, чистые бассейны, приветливый персонал обеспечат вам незабываемый отдых и желание снова посетить Rainbow Castle Hotel.'),
(33, 'Cristal Hotel Abu Dhabi', 4, 1, 5, 340, 'Отель Cristal с оздоровительным центром и крытым бассейном находится в деловом районе города Абу-Даби рядом с торговым центром Medinat Zayed. В современных номерах предоставляется бесплатный доступ в Интернет.К услугам гостей отеля Cristal номера, оформленные в теплых тонах и обставленные мебелью из темного дерева, с кондиционером, телевизором с плоским экраном и спутниковыми каналами, мини-баром и принадлежностями для чая/кофе. Во всех номерах есть телевизор с плоским экраном, принимающий спутниковые каналы, мини-бар, а также принадлежности для чая/кофе.В ресторане Gems предлагают широкий выбор блюд интернациональной кухни по меню и по системе &quot;шведский стол&quot;. В лобби-кафе Blendz можно заказать свежезаваренный кофе и чай, легкие закуски и выпечку. В отеле предоставляется круглосуточное обслуживание номеров.Гости могут посетить оздоровительный клуб Figure 8 с массажными процедурами, сауной и паровой баней. Также в отеле Cristal работает салон красоты, сувенирный магазин и круглосуточная стойка регис'),
(34, 'Park Hyatt', 1, 1, 5, 280, 'Роскошный отель расположен в Дубай, рядом с гольф-клубом и яхт-клубом, находится всего в 4 км от Международного аэропорта Дубай и в нескольких минутах езды от делового центра города, где помимо прочего, имеется много элитных магазинов.'),
(35, 'Coral Beach Resort', 2, 1, 4, 175, 'Отель Coral Beach Resort расположенна пляже, на пересечении Шарджи с Аджманом, в 20 мин. езды от аэропорта и примерно в 10 км от центра\r\nШарджи. Один из самых популярных отелей в Шардже с великолепной большой зеленой территорией.'),
(36, 'Hilton Ras Al Khaimah Resort &amp; Spa', 3, 1, 5, 310, 'Роскошный курортный комплекс расположен на побережье Персидского залива, в окружении гор и пышной зелени, в 7 км от центра Рас-эль-Хаймы, в 90 км от аэропорта Дубай.'),
(37, 'Caravan Resort', 5, 1, 3, 75, 'Курортный отель Caravan расположен в нескольких минутах ходьбы от пляжей Персидского залива. К услугам гостей чарующий сад с открытым бассейном и солнечной террасой. Все номера и люксы оборудованы кондиционером и выходят окнами на море.Все номера и люксы курортного отеля Caravan имеют колоритное художественное оформление и стандартно оборудованы телевизором со спутниковыми каналами, а также собственной ванной комнатой.Гости могут отдохнуть и расслабиться в шезлонгах у бассейна или размяться в тренажерном зале отеля. Имеется также возможность посетить Музей города Аджмана или большое количество магазинов в данном районе.Курортный отель Caravan находится в 20 минутах езды от международных аэропортов Дубай и Шарджа. На прилегающих к отелю улицах работает бесплатная общественная стоянка автомобилей.'),
(38, 'Ambassador Bangkok', 24, 6, 4, 172, 'Гости отеля Ambassador могут посетить спа-салон и процедурный кабинет посреди ночных клубов Бангкока, на улице Сукхумвит-роуд 11. К услугам гостей бесплатная парковка, открытый бассейн и 8 кафе.'),
(39, 'Millennium Resort Patong', 25, 6, 5, 178, 'Построен - 2007 г. Этот современный отель из известной цепочки Millenium, выполненный в стиле хайтек, открылся в октябре 2007 года в центре Патонга. Размещение предлагается в двух шестиэтажных корпусах: Lakeside Wing и Beachside Wing (ближе к морю), в обоих корпусах собственная стойка ресепшен и залы для завтраков.'),
(40, 'Amari Nova Suites', 26, 6, 4, 145, 'Построен в 1988 году. Включает 5 отдельно стоящих корпусов: 17-этажный Ocean Wing , 42-этажный Tower Wing (номера с видом на Koh Larn и Sattahip, с 5-го по 23-й этаж – номера без балконов, с 24-го по 42-й этаж – с маленьким балконом), 6-этажный Garden Wing (номера с балконом), 4-этажный Inn Wing (состоит из трех корпусов), 6-этажный Ambassador Wing.'),
(41, 'Gaja Puri Resort &amp; Spa', 27, 6, 4, 135, 'Отличный отель GajaPuri Resort &amp; Spa расположен в 15 минутах езды от Ao Sapparod Ferry-Pier и идеально подходит для путешественников, которые ищут комфорт и прекрасную природу. Вокруг отеля расположены живописные горы и тропический лес.'),
(42, 'Bo Phut Resort &amp; Spa', 28, 6, 5, 260, 'Элегантный отель в северной части острова на пляже Бо Пут. До аэропорта Самуи – 5 км. До центра развлечений Чавенг на такси 20 минут. Размещение предлагается в трёхэтажном корпусе и одноэтажных виллах, утопающих в зелени тропического сада. Подойдёт для любителей спокойного отдыха в сочетании с высоким уровнем сервиса.');

-- --------------------------------------------------------

--
-- Структура таблицы `Images`
--

CREATE TABLE IF NOT EXISTS `Images` (
  `id` int(11) NOT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Images`
--

INSERT INTO `Images` (`id`, `imagepath`, `hotelid`) VALUES
(31, '../images/Bolgaria/Sofia/Best Western Premier Thracia Hotel/a1.png', 1),
(32, '../images/Bolgaria/Sofia/Best Western Premier Thracia Hotel/a2.png', 1),
(33, '../images/Bolgaria/Sofia/Best Western Premier Thracia Hotel/a3.png', 1),
(34, '../images/Bolgaria/Sofia/Best Western Premier Thracia Hotel/a4.png', 1),
(35, '../images/Bolgaria/Sofia/Best Western Premier Thracia Hotel/a5.png', 1),
(36, '../images/hotels/Turkey/Antalya/Delphin Diva Premiere/1.jpg', 25),
(37, '../images/hotels/Turkey/Antalya/Delphin Diva Premiere/2.jpg', 25),
(38, '../images/hotels/Turkey/Antalya/Delphin Diva Premiere/4.jpg', 25),
(39, '../images/hotels/Turkey/Antalya/Delphin Diva Premiere/32096173.jpg', 25),
(40, '../images/hotels/Turkey/Antalya/Delphin Diva Premiere/32098251.jpg', 25),
(42, '../images/hotels/Turkey/Kemer/Lucida Beach/noviahotels4new.jpg', 30),
(43, '../images/hotels/Turkey/Kemer/Lucida Beach/noviahotels5new.jpg', 30),
(44, '../images/hotels/Turkey/Kemer/Lucida Beach/noviahotels6new.jpg', 30),
(45, '../images/hotels/Turkey/Kemer/Lucida Beach/noviahotels8new.jpg', 30),
(46, '../images/hotels/Turkey/Kemer/Lucida Beach/novia-hotels-genel-4.jpg', 30),
(47, '../images/hotels/Turkey/Kemer/Lucida Beach/novia-konaklama-4.jpg', 30),
(53, '../images/hotels/Turkey/Side/Rainbow Castle Hotel/57229612 (1).jpg', 32),
(54, '../images/hotels/Turkey/Side/Rainbow Castle Hotel/57229612.jpg', 32),
(55, '../images/hotels/Turkey/Side/Rainbow Castle Hotel/57233772.jpg', 32),
(56, '../images/hotels/Turkey/Side/Rainbow Castle Hotel/57235299.jpg', 32),
(57, '../images/hotels/Turkey/Side/Rainbow Castle Hotel/1444396908-MAIN_BUILDING_(12).JPG', 32),
(58, '../images/hotels/Turkey/Bodrum/Blue Dreams/1907376922.jpg', 29),
(59, '../images/hotels/Turkey/Kemer/Zena Resort Hotel/bdbba96062b91f3ac2605f3a290dfd64.jpg', 31),
(60, '../images/hotels/Turkey/Kemer/Zena Resort Hotel/zena-resort-hotel_10.jpg', 31),
(61, '../images/hotels/Turkey/Kemer/Zena Resort Hotel/zena-resort-hotel-147919.jpg', 31),
(62, '../images/hotels/Turkey/Kemer/Zena Resort Hotel/zena-resort-hotel-616259.jpg', 31),
(63, '../images/hotels/Turkey/Kemer/Zena Resort Hotel/zena-resort-hotel-962676.jpg', 31),
(64, '../images/hotels/UAE/Abu Dhabi/Cristal Hotel Abu Dhabi/7674228.jpg', 33),
(65, '../images/hotels/UAE/Abu Dhabi/Cristal Hotel Abu Dhabi/19286379.jpg', 33),
(66, '../images/hotels/UAE/Abu Dhabi/Cristal Hotel Abu Dhabi/19286385.jpg', 33),
(67, '../images/hotels/UAE/Dubai/Park Hyatt/10574020.jpg', 34),
(68, '../images/hotels/UAE/Dubai/Park Hyatt/17904457.jpg', 34),
(69, '../images/hotels/UAE/Dubai/Park Hyatt/17910607.jpg', 34),
(70, '../images/hotels/UAE/Dubai/Park Hyatt/147374450.jpg', 34),
(71, '../images/hotels/UAE/Dubai/Park Hyatt/2062389713.jpg', 34),
(72, '../images/hotels/Turkey/Antalya/Club Hotel Falcon/1 (1).jpg', 28),
(73, '../images/hotels/Turkey/Antalya/Club Hotel Falcon/2.jpg', 28),
(74, '../images/hotels/Turkey/Antalya/Club Hotel Falcon/3.jpg', 28),
(75, '../images/hotels/Turkey/Antalya/Club Hotel Falcon/4.jpg', 28),
(76, '../images/hotels/UAE/Sharjah/Coral Beach Resort/3927780.jpg', 35),
(77, '../images/hotels/UAE/Sharjah/Coral Beach Resort/10996613.jpg', 35),
(78, '../images/hotels/UAE/Sharjah/Coral Beach Resort/83814715.jpg', 35),
(79, '../images/hotels/UAE/Sharjah/Coral Beach Resort/1031781871.jpg', 35),
(80, '../images/hotels/UAE/Sharjah/Coral Beach Resort/1291032007.jpg', 35),
(81, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/556445322.jpg', 36),
(82, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/794213560.jpg', 36),
(83, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/1070048719.jpg', 36),
(84, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/1149611574.jpg', 36),
(85, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/1494217959.jpg', 36),
(86, '../images/hotels/UAE/Ras al-Khaimah/Hilton Ras Al Khaimah Resort &amp; Spa/2003885794.jpg', 36),
(87, '../images/hotels/UAE/Fujairah/Caravan Resort/6043435.jpg', 37),
(88, '../images/hotels/UAE/Fujairah/Caravan Resort/6043531.jpg', 37),
(89, '../images/hotels/UAE/Fujairah/Caravan Resort/Caravan Resort 1.jpg', 37),
(90, '../images/hotels/Thailand/Bangkok/Ambassador Bangkok/AMBASSADOR2jpg.jpg', 38),
(91, '../images/hotels/Thailand/Bangkok/Ambassador Bangkok/ambassador-bangkok_080420110433373687.jpg', 38),
(92, '../images/hotels/Thailand/Bangkok/Ambassador Bangkok/Ambassador-Hotel-Bangkok-4.jpg', 38),
(93, '../images/hotels/Thailand/Phuket/Millennium Resort Patong/Beachside Pool 1.jpg', 39),
(94, '../images/hotels/Thailand/Phuket/Millennium Resort Patong/deluxe room.jpg', 39),
(95, '../images/hotels/Thailand/Phuket/Millennium Resort Patong/Executive Suite - копия.jpg', 39),
(96, '../images/hotels/Thailand/Phuket/Millennium Resort Patong/Lakeside Pool 1.jpg', 39),
(97, '../images/hotels/Thailand/Phuket/Millennium Resort Patong/Lakeside wing.jpg', 39),
(98, '../images/hotels/Thailand/Pattaya/Amari Nova Suites/18533107.jpg', 40),
(99, '../images/hotels/Thailand/Pattaya/Amari Nova Suites/18534897.jpg', 40),
(100, '../images/hotels/Thailand/Pattaya/Amari Nova Suites/505281515.jpg', 40),
(101, '../images/hotels/Thailand/Pattaya/Amari Nova Suites/Amari Nova Suites Pattaya-One-Bedroom Suite.jpg', 40),
(102, '../images/hotels/Thailand/Pattaya/Amari Nova Suites/hotel-entrance-1.jpg', 40),
(103, '../images/hotels/Thailand/Ko Chang/Gaja Puri Resort &amp; Spa/521250238.jpg', 41),
(104, '../images/hotels/Thailand/Ko Chang/Gaja Puri Resort &amp; Spa/1096792602.jpg', 41),
(105, '../images/hotels/Thailand/Ko Chang/Gaja Puri Resort &amp; Spa/1325066750.jpg', 41),
(106, '../images/hotels/Thailand/Ko Chang/Gaja Puri Resort &amp; Spa/1460516504.jpg', 41),
(107, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/125781452.jpg', 42),
(108, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/184149060.jpg', 42),
(109, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/739377728.jpg', 42),
(110, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/1189419192.jpg', 42),
(111, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/1671682398.jpg', 42),
(112, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/1927984052.jpg', 42),
(113, '../images/hotels/Thailand/Ko Samui/Bo Phut Resort &amp; Spa/2014924491.jpg', 42),
(114, '../images/hotels/Bolgaria/Golden Sands/Admiral/1.jpg', 2),
(115, '../images/hotels/Bolgaria/Golden Sands/Admiral/2.jpg', 2),
(116, '../images/hotels/Bolgaria/Golden Sands/Admiral/3.jpg', 2),
(117, '../images/hotels/Bolgaria/Golden Sands/Admiral/4.jpg', 2),
(118, '../images/hotels/Bolgaria/Golden Sands/Admiral/5.jpg', 2),
(119, '../images/hotels/Bolgaria/Golden Sands/Atlas/1.jpg', 3),
(120, '../images/hotels/Bolgaria/Golden Sands/Atlas/2.jpg', 3),
(121, '../images/hotels/Bolgaria/Golden Sands/Atlas/3.jpg', 3),
(122, '../images/hotels/Bolgaria/Golden Sands/Atlas/4.jpg', 3),
(123, '../images/hotels/Bolgaria/Golden Sands/Atlas/5.jpg', 3),
(124, '../images/hotels/Bolgaria/Sunny Beach/Barcelo Royal Beach/1.jpg', 4),
(125, '../images/hotels/Bolgaria/Sunny Beach/Barcelo Royal Beach/2.jpg', 4),
(126, '../images/hotels/Bolgaria/Sunny Beach/Barcelo Royal Beach/3.jpg', 4),
(127, '../images/hotels/Bolgaria/Sunny Beach/Barcelo Royal Beach/4.jpg', 4),
(128, '../images/hotels/Bolgaria/Sunny Beach/Barcelo Royal Beach/5.jpg', 4),
(129, '../images/hotels/Bolgaria/Sunny Beach/Fiesta M/1.jpg', 5),
(130, '../images/hotels/Bolgaria/Sunny Beach/Fiesta M/2.jpg', 5),
(131, '../images/hotels/Bolgaria/Sunny Beach/Fiesta M/3.jpg', 5),
(132, '../images/hotels/Bolgaria/Sunny Beach/Fiesta M/4.jpg', 5),
(133, '../images/hotels/Bolgaria/Bansko/Kempinski Grand Arena/1.jpg', 6),
(134, '../images/hotels/Bolgaria/Bansko/Kempinski Grand Arena/2.jpg', 6),
(135, '../images/hotels/Bolgaria/Bansko/Kempinski Grand Arena/3.jpg', 6),
(136, '../images/hotels/Bolgaria/Bansko/Kempinski Grand Arena/4.jpg', 6),
(137, '../images/hotels/Bolgaria/Bansko/Kempinski Grand Arena/5.jpg', 6),
(138, '../images/hotels/Bolgaria/Bansko/Iceberg/1.jpg', 7),
(139, '../images/hotels/Bolgaria/Bansko/Iceberg/2.jpg', 7),
(140, '../images/hotels/Bolgaria/Bansko/Iceberg/3.jpg', 7),
(141, '../images/hotels/Bolgaria/Borovets/Mura/1.jpg', 8),
(142, '../images/hotels/Bolgaria/Borovets/Mura/2.jpg', 8),
(143, '../images/hotels/Bolgaria/Borovets/Mura/3.jpg', 8),
(144, '../images/hotels/Bolgaria/Borovets/Mura/4.jpg', 8),
(145, '../images/hotels/Bolgaria/Borovets/Yastrebets/1.jpg', 9),
(146, '../images/hotels/Bolgaria/Borovets/Yastrebets/2.jpg', 9),
(147, '../images/hotels/Bolgaria/Borovets/Yastrebets/3.jpg', 9),
(148, '../images/hotels/Bolgaria/Borovets/Yastrebets/4.jpg', 9),
(149, '../images/hotels/Bolgaria/Borovets/Yastrebets/5.jpg', 9),
(150, '../images/hotels/Dominican Republic/Santo Domingo/Occidental el Ambajador/1.jpg', 15),
(151, '../images/hotels/Dominican Republic/Santo Domingo/Occidental el Ambajador/2.jpg', 15),
(152, '../images/hotels/Dominican Republic/Santo Domingo/Occidental el Ambajador/3.jpg', 15),
(153, '../images/hotels/Dominican Republic/Santo Domingo/Occidental el Ambajador/4.jpg', 15),
(154, '../images/hotels/Dominican Republic/Punta Cana/Barcelo Bavaro Palace Deluxe/1.jpg', 16),
(155, '../images/hotels/Dominican Republic/Punta Cana/Barcelo Bavaro Palace Deluxe/2.jpg', 16),
(156, '../images/hotels/Dominican Republic/Punta Cana/Barcelo Bavaro Palace Deluxe/3.jpg', 16),
(157, '../images/hotels/Dominican Republic/Punta Cana/Barcelo Bavaro Palace Deluxe/4.jpg', 16),
(158, '../images/hotels/Dominican Republic/Punta Cana/Barcelo Bavaro Palace Deluxe/5.jpg', 16),
(159, '../images/hotels/Dominican Republic/Punta Cana/Tropical Princess/1.jpg', 17),
(160, '../images/hotels/Dominican Republic/Punta Cana/Tropical Princess/2.jpg', 17),
(161, '../images/hotels/Dominican Republic/Punta Cana/Tropical Princess/3.jpg', 17),
(162, '../images/hotels/Dominican Republic/Punta Cana/Tropical Princess/4.jpg', 17),
(163, '../images/hotels/Dominican Republic/La Romana/Dreams La Romana/1.jpg', 18),
(164, '../images/hotels/Dominican Republic/La Romana/Dreams La Romana/2.jpg', 18),
(165, '../images/hotels/Dominican Republic/La Romana/Dreams La Romana/3.jpg', 18),
(166, '../images/hotels/Dominican Republic/La Romana/Dreams La Romana/4.jpg', 18),
(167, '../images/hotels/Dominican Republic/La Romana/Dreams La Romana/5.jpg', 18),
(168, '../images/hotels/Dominican Republic/La Romana/Luxury Bahia Principe Bouganville/1.jpg', 19),
(169, '../images/hotels/Dominican Republic/La Romana/Luxury Bahia Principe Bouganville/2.jpg', 19),
(170, '../images/hotels/Dominican Republic/La Romana/Luxury Bahia Principe Bouganville/3.jpg', 19),
(171, '../images/hotels/Dominican Republic/La Romana/Luxury Bahia Principe Bouganville/4.jpg', 19),
(172, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/1.jpg', 20),
(173, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/2.jpg', 20),
(174, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/3.jpg', 20),
(175, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/4.jpg', 20),
(176, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/5.jpg', 20),
(177, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Beach/6.jpg', 20),
(178, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Palace/1.jpg', 21),
(179, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Palace/2.jpg', 21),
(180, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Palace/3.jpg', 21),
(181, '../images/hotels/Dominican Republic/La Romana/Viva Wyndham Dominicus Palace/4.jpg', 21),
(182, '../images/hotels/Dominican Republic/Boca Chica/Don Juan Beach Resort/1.jpg', 22),
(183, '../images/hotels/Dominican Republic/Boca Chica/Don Juan Beach Resort/2.jpg', 22),
(184, '../images/hotels/Dominican Republic/Boca Chica/Don Juan Beach Resort/3.jpg', 22),
(185, '../images/hotels/Dominican Republic/Boca Chica/Don Juan Beach Resort/4.jpg', 22),
(186, '../images/hotels/Dominican Republic/Puerto Plata /Iberostar Costa Dorada/1.jpg', 23),
(187, '../images/hotels/Dominican Republic/Puerto Plata /Iberostar Costa Dorada/2.jpg', 23),
(188, '../images/hotels/Dominican Republic/Puerto Plata /Iberostar Costa Dorada/3.jpg', 23),
(189, '../images/hotels/Dominican Republic/Puerto Plata /Iberostar Costa Dorada/4.jpg', 23),
(190, '../images/hotels/Dominican Republic/Puerto Plata /Grand Paradise Playa Dorada/1.jpg', 24),
(191, '../images/hotels/Dominican Republic/Puerto Plata /Grand Paradise Playa Dorada/2.jpg', 24),
(192, '../images/hotels/Dominican Republic/Puerto Plata /Grand Paradise Playa Dorada/3.jpg', 24),
(193, '../images/hotels/Dominican Republic/Puerto Plata /Grand Paradise Playa Dorada/4.jpg', 24),
(194, '../images/hotels/Dominican Republic/Puerto Plata /Grand Paradise Playa Dorada/5.jpg', 24),
(195, '../images/hotels/Czech Republic/Prague/Caesar Prague/01.jpg', 10),
(196, '../images/hotels/Czech Republic/Prague/Caesar Prague/2.jpg', 10),
(197, '../images/hotels/Czech Republic/Prague/Caesar Prague/3.jpg', 10),
(198, '../images/hotels/Czech Republic/Prague/Caesar Prague/4.jpg', 10),
(199, '../images/hotels/Czech Republic/Prague/Ibis Old Town/1.jpg', 11),
(200, '../images/hotels/Czech Republic/Prague/Ibis Old Town/2.jpg', 11),
(201, '../images/hotels/Czech Republic/Prague/Ibis Old Town/3.jpg', 11),
(202, '../images/hotels/Czech Republic/Prague/Ibis Old Town/4.jpg', 11),
(203, '../images/hotels/Czech Republic/Karlovy Vary/Carlsbad Plaza/1.jpg', 12),
(204, '../images/hotels/Czech Republic/Karlovy Vary/Carlsbad Plaza/2.jpg', 12),
(205, '../images/hotels/Czech Republic/Karlovy Vary/Carlsbad Plaza/3.jpg', 12),
(206, '../images/hotels/Czech Republic/Karlovy Vary/Carlsbad Plaza/4.jpg', 12),
(207, '../images/hotels/Czech Republic/Karlovy Vary/Carlsbad Plaza/5.jpg', 12),
(208, '../images/hotels/Czech Republic/Karlovy Vary/Dvorak/1.jpg', 13),
(209, '../images/hotels/Czech Republic/Karlovy Vary/Dvorak/2.jpg', 13),
(210, '../images/hotels/Czech Republic/Karlovy Vary/Dvorak/3.jpg', 13),
(211, '../images/hotels/Czech Republic/Karlovy Vary/Dvorak/4.jpg', 13),
(212, '../images/hotels/Czech Republic/Marianske Lazne/Maxim/1.jpg', 14),
(213, '../images/hotels/Czech Republic/Marianske Lazne/Maxim/2.jpg', 14),
(214, '../images/hotels/Czech Republic/Marianske Lazne/Maxim/3.jpg', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `Roles`
--

CREATE TABLE IF NOT EXISTS `Roles` (
  `id` int(11) NOT NULL,
  `role` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Roles`
--

INSERT INTO `Roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) DEFAULT NULL,
  `pass` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `avatar` mediumblob,
  `roleid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `login`, `pass`, `email`, `avatar`, `roleid`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', NULL, 1),
(2, 'user1', '202cb962ac59075b964b07152d234b70', 'user1', NULL, 2),
(3, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 'user2', NULL, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Cities`
--
ALTER TABLE `Cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uindex` (`city`,`countryid`),
  ADD KEY `countryid` (`countryid`);

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hotelid` (`hotelid`);

--
-- Индексы таблицы `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Индексы таблицы `Hotels`
--
ALTER TABLE `Hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityid` (`cityid`),
  ADD KEY `countryid` (`countryid`);

--
-- Индексы таблицы `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotelid` (`hotelid`);

--
-- Индексы таблицы `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `roleid` (`roleid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Cities`
--
ALTER TABLE `Cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Countries`
--
ALTER TABLE `Countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `Hotels`
--
ALTER TABLE `Hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `Images`
--
ALTER TABLE `Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT для таблицы `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Cities`
--
ALTER TABLE `Cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`countryid`) REFERENCES `Countries` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`hotelid`) REFERENCES `Hotels` (`id`);

--
-- Ограничения внешнего ключа таблицы `Hotels`
--
ALTER TABLE `Hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`cityid`) REFERENCES `Cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hotels_ibfk_2` FOREIGN KEY (`countryid`) REFERENCES `Countries` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Images`
--
ALTER TABLE `Images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`hotelid`) REFERENCES `Hotels` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `Roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
