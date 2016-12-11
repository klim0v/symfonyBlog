-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 11 2016 г., 20:22
-- Версия сервера: 5.6.31
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `symfony_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `edited` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `title`, `summary`, `body`, `created`, `edited`) VALUES
(1, 1, 'Азалия (Azalea): виды и сорта для выращивания в саду', '<p>Азалия &ndash; это красивоцветущий многолетний кустарник, произрастающий в Китае, Японии, Индии, Северной Америке, горных районах Сибири и Кавказа.</p>', '<ul><li><strong>Родина:</strong>&nbsp;Азия и Северная Америка.</li><li><strong>Полив:</strong>&nbsp;летом 3-4 раза в неделю, зимой 2. В жаркие дни нуждается в опрыскивании листьев.</li><li><strong>Температура:</strong>&nbsp;от + 5&deg;С до +22&deg;С.</li><li><strong>Пересаживание:</strong>&nbsp;раз в 2-3 года, после цветения.</li><li><strong>Выращивание:</strong>&nbsp;средней сложности.</li><li><strong>Темп роста:</strong>&nbsp;медленный.</li></ul><p><strong>Описание:</strong>&nbsp;азалия цветок представитель семейства вересковых из рода рододендронов (Rhododendron). Вечнозеленый или листопадный кустарник, вырастающий от 0,6 до 3 м высотой с небольшого размера эллиптическими листьями и воронковидными трубчатыми либо плоскими цветками, появляющимися на верхушках прошлогодних побегов. Азалия цветок бывает однотонным или пестрым с белым, розовым, красным, коралловым и фиолетовым окрасом. По форме может быть простым, махровым или бахромчатым. В зависимости от сроков цветения азалия цветок подразделяется на раннецветущий (декабрь-январь), средне-цветущий (январь &mdash; март) и поздноцветущий (февраль &mdash; апрель).</p>', '2016-11-29 15:52:34', '2016-12-11 17:53:58'),
(2, 1, 'пост сергея', NULL, 'текст который написал сергей', '2016-11-29 15:53:02', '0001-11-30 00:11:00'),
(3, 4, 'Что такое Lorem Ipsum?', '<p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.</p>', '2016-11-29 15:55:09', '0001-11-30 00:11:00'),
(4, 4, 'Почему он используется?', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться.</p>', '<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации &quot;Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..&quot; Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам &quot;lorem ipsum&quot; сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>', '2016-11-29 19:02:39', '0001-11-30 00:11:00'),
(5, 4, 'Одиночество', '<p>Мой любимый зеленый чай с клубникой и персиком не стал черным с апельсином и облепихой, он не стал приторно сладким или чересчур уж кислым, его не стало крайне мало</p>', '<p>Ты можешь спросить меня, зачем я написал это слово, автор? Скажу честно, я сам не знаю. Ты можешь проводить аналитические связи, пытаться найти логическую цепочку с текстом ниже, но нет. Ты можешь расслабиться, отключить мозг, так как набор букв ниже не несет в себе полезной информации. Он не несет в себе абсолютно НИЧЕГО. Ты спросишь меня&nbsp;&mdash; &laquo;Зачем ты тогда это пишешь?&raquo;. Если бы я знал ответ на это&hellip;</p>', '2016-11-29 19:03:32', '0001-11-30 00:11:00'),
(6, 4, 'Откуда он появился?', '<p>Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 &quot;de Finibus Bonorum et Malorum&quot; Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>', '<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, &quot;consectetur&quot;, и занялся его поисками в классической латинской литературе. В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги &quot;de Finibus Bonorum et Malorum&quot; (&quot;О пределах добра и зла&quot;), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, происходит от одной из строк в разделе 1.10.32</p>', '2016-11-29 19:18:03', '0001-11-30 00:11:00'),
(7, 4, 'Где его взять?', NULL, '<p>сть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или &quot;невозможных&quot; слов.</p>', '2016-11-29 19:18:09', '0001-11-30 00:11:00'),
(9, 4, 'Амарант кормовой, овощной, декоративный и масло черного амаранта', '<p><strong>Амарант</strong>&nbsp;&ndash; растение неприхотливое, прекрасно переносящее как высокие температуры, так и приближенные к нулю показатели градусника. Это растение представлено в мировой флоре более чем 60 видами разнообразных преимущественно&nbsp;однолетних&nbsp;и&nbsp;травянистых растений</p>', '<p>Принято различать амарант кормовой, овощной, зерновой и декоративный, например, амарант хвостатый красный, поэтому приобретая семена нужно обязательно уточнить у продавца какой именно сорт он вам предлагает.</p><p>Листья растения содержат 17 % высококачественного белка, полезного для любого организма, будь то человек или домашнее животное. Масло из семян амаранта черного превосходит по многих полезным показателям даже облепиховое.</p><p>&nbsp;</p><p>Он очень любит свет, поэтому хорошее освещение играет важную роль в деле его успешной культивации. Также любит он своевременный полив, но способен выдержать непродолжительное пересыхание почвы.</p><p>Высеивается амарант только тогда, когда температура почвы поднимется до 8-10 градусов. Часто оставшиеся на кустах до поздней осени семена осыпаются и прорастают весной дружной кучкой. Остается только равномерно рассадить их по участку.</p>', '2016-11-29 19:18:20', '2016-12-11 19:36:57'),
(11, 5, 'Виды драцен для комнатного разведения', '<p>Многочисленные виды драцен привлекают внимание любителей&nbsp;комнатного цветоводства&nbsp;своим экзотическим внешним видом, сочетающимся с относительной неприхотливостью и простотой ухода.</p>', '<p>Эти широко распространенные виды подробно описаны в отдельных статьях. Однако использование в цветоводстве представителей этого экзотического рода не ограничивается только перечисленными выше растениями. Имеется ряд менее известных, но очень декоративных видов, которые с успехом могут содержаться в домашних условиях. Ниже приведены некоторые описания и фото видов драцен, рекомендуемых к выращиванию в горшечной культуре.</p><p>Виды и сорта драцены: подробно с фото</p><p><strong>Драцена дракон, канарская или драконово дерево</strong>&nbsp;<em>(D. Draco)</em>, в природе &mdash; гигантские деревья с раскидистой кроной высотой до 20 м с обхватом ствола в 4,5 м, в помещении вырастают до 1,5 м. Толстые стволы разветвляются, каждая ветвь заканчивается пучком плотно расположенных жестких кожистых серо-зелёных листьев, длинных (до 0,5 м) и узких (до 4 см), линейно-мечевидной формы. При достаточном освещении окраска листвы может приобретать красивый красноватый оттенок. Растет очень медленно, ценится за особую неприхотливость, в отличие от других видов может содержаться не только в теплых, но и в прохладных помещениях, летом выноситься на открытый воздух, размножается как вегетативно, так и семенами.</p><p>&nbsp;</p><p>Драцена Деремская</p><p><strong>Драцена деремская</strong>&nbsp;<em>(D.Deremensis)</em>, медленно растущий и не такой высокий, как предыдущий, вид. У себя на родине, в тропической Африке, достигает 3-5 м, комнатные драцены не превышают 1,5 м. Имеют толстый неветвящийся ствол, со временем одревесневающий, и привлекательные листья до 5 м длиной и около 5 см шириной, сидячие, ланцетные, с глянцевой поверхностью. Молодые листья растут вверх, старые &ndash; отгибаются вниз.</p><p>&nbsp;</p><p>В культуре выращивается множество сортов разных размеров, однотонной и пестрой окраски. Среди полностью зеленолистных форм, отличающихся особой неприхотливостью к условиям освещения, отметим Janet Craid, быстро растущий (до 3 м) сорт, с широкими блестящими темно-зелёными листьями, на которых изредка встречаются немногочисленные цветные полосы. Распространенный сорт Варнеки (Warneckii) имеет не только эффектные листья с широкой белой полосой по центру и мелкими зелёными штрихами по всей поверхности, но и является одним из лучших пестролистных растений для помещений с низкой освещённостью. Высота взрослых экземпляров не превышает 1,2 м. Еще более компактна разновидность этого сорта Warneckii Jumbo с широкими листьями.Садовая форма Баузер (Bauser) отличается полосой белого цвета вдоль центральной жилы листа и темными зелёными боковыми &mdash; по краю. Имеется линия сортов Stripe (White Stripe, Yellow Stripe, Green Stripe), у этих драцен &ndash; белые, желтые или зелёные края листовых пластин соответственно. Один из самых привлекательных сортов этого вида &mdash; Shrijveruana, с широкой каймой желтовато-белого цвета.</p>', '2016-12-06 16:41:07', '2016-12-11 18:50:27'),
(12, 4, 'Это мой Заголовок', '<p>&quot;Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...&quot;</p><p>&quot;Нет никого, кто любил бы боль саму по себе, кто искал бы её и кто хотел бы иметь её просто потому, что это боль..&quot;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu fermentum enim. Cras feugiat finibus pulvinar. Sed efficitur lobortis ante at viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas sollicitudin orci quis lorem rhoncus tincidunt. Cras pharetra, ante vel eleifend condimentum, nulla nunc suscipit metus, eget aliquet sem dui ut magna. In arcu sapien, semper id laoreet vitae, rutrum vitae nibh. Suspendisse fringilla tempus erat, et mattis ante rhoncus et. Mauris in diam ultricies magna accumsan aliquam vitae id libero. Donec sed tellus lacinia, vehicula neque sed, vehicula neque. Nam vitae magna a risus egestas pharetra quis sit amet mi. Vivamus sit amet felis in nisl mollis pretium et eget lectus. Vestibulum dui augue, viverra vitae odio vitae, dapibus porttitor sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque sit amet molestie sapien. Pellentesque mollis euismod nisl, sit amet bibendum ligula hendrerit ut.</p><p>Mauris porttitor, dui eu cursus eleifend, dolor dui iaculis risus, sit amet gravida urna mauris ac quam. Pellentesque vel hendrerit sapien. Ut id lacus lectus. Duis feugiat mi eget nisl aliquet, nec finibus dui aliquet. Maecenas turpis elit, mollis quis iaculis quis, euismod sed nulla. Phasellus rutrum rhoncus ex non iaculis. Fusce vestibulum leo posuere, finibus diam a, aliquam eros. Quisque viverra, nisi id elementum cursus, elit ex luctus ipsum, cursus vestibulum ligula mi sed neque. Sed sed nunc lacinia, ullamcorper mi congue, rutrum dolor. Morbi et dignissim augue, eget posuere neque. Etiam malesuada placerat risus, in condimentum enim vehicula at.</p><p>Cras rutrum scelerisque ligula quis semper. Nunc commodo interdum condimentum. Donec ac efficitur odio. Donec et elementum sem, nec consectetur nibh. Pellentesque lobortis rutrum pulvinar. Nulla et tincidunt arcu. Integer feugiat euismod sem vitae fermentum. Duis eleifend bibendum metus, at lobortis libero rutrum nec. Proin non metus est. Nulla condimentum nulla vel velit euismod tincidunt. Donec eu luctus mi. Aenean tincidunt porta auctor. Donec semper, tellus vel sollicitudin maximus, ante erat lobortis leo, mattis vehicula nisi ligula nec metus. Ut egestas dolor sit amet mi malesuada dictum. Maecenas arcu leo, consequat non tincidunt id, lacinia eget ligula. Curabitur at dolor sapien.</p><p>Nulla nec velit vel est interdum interdum. Fusce ut sagittis ex. Donec aliquet at tellus id consectetur. Suspendisse accumsan ac dui sit amet maximus. Donec pellentesque condimentum leo vitae lobortis. Suspendisse sed massa sapien. In posuere felis ut hendrerit rhoncus. Etiam quis posuere dolor. Donec pharetra nisi sit amet nunc tempus mollis. Aenean pellentesque facilisis dolor quis rhoncus. Quisque quis augue eu sapien feugiat gravida. Nulla nisi felis, mollis non ex nec, interdum tincidunt dui. Duis fringilla tellus tristique, ultrices dui nec, commodo ante. Nullam dignissim porta magna, a faucibus urna. Fusce dictum tellus id pellentesque tincidunt. Vivamus placerat nisl nec neque dictum fringilla.</p><p>Phasellus id neque elementum nibh condimentum scelerisque. Fusce euismod, diam at finibus commodo, lectus lectus lacinia ante, sit amet tempus ante eros in lectus. Fusce eget bibendum ex, eu bibendum nunc. Sed dapibus suscipit nisl aliquam eleifend. Nulla porta massa id purus maximus, sit amet semper mi malesuada. Curabitur imperdiet diam nisl, eget fringilla nunc maximus eget. Ut sit amet felis vel dolor blandit bibendum. Nunc posuere ex nisl, id bibendum neque tristique nec. Suspendisse non mauris et erat malesuada dignissim. Vivamus cursus enim velit, vitae pharetra eros consequat ac. Suspendisse congue facilisis sem at malesuada.</p>', '2016-12-11 17:00:33', '0001-11-30 00:11:00'),
(13, 1, 'Камнеломка Арендса: посадка, уход и выращивание из семян', '<p>Растение камнеломка арендса &ndash; это травянистый многолетник, пользующийся огромной популярностью у цветоводов. Его можно встретить на клумбах и альпийских горках практически во всех регионах страны.</p>', '<p>У большинства цветоводов выращивание камнеломки арендса не вызывает никаких затруднений, так как этот цветок совершенно не требователен и неприхотлив в уходе. Этот гибрид относится к зимостойким культурам, которые не требуют укрывания на зиму.</p><p>Высота растения варьируется в пределах 5-20 см, тонкие побеги могут достигать в длину 3-10 см. Листья у этого гибрида пальчатые, рассеченные, отрастающие сверху и образующие густую полусферическую &laquo;шапку&raquo;.</p><p>Именно поэтому строение дернины этого вида имеет свои особенности &ndash; сверху располагаются листья и цветоносы, а в середине куста голые, коричневые стебли.</p><p><strong>Цветы восходящие, колокольчатые, диаметром до 1 см, расположены по несколько штук на цветоносах, возвышающихся над дерниной на 5-20 см.&nbsp;</strong></p>', '2016-12-11 18:36:23', '2016-12-11 18:36:23'),
(14, 1, 'Африканская ромашка гацания (газания)', '<p>У себя на родине газания или гацания является многолетником, однако произрастая в средних широтах, она не в состоянии пережить суровую зиму с ветрами и морозами, поэтому многие любители цветов выращивают его как однолетнюю культуру.</p>', '<p>Неприхотливый и очень красочный&nbsp;<a href="http://www.flowerbank.ru/?p=8023">цветок гацания</a>, родиной которого является далекий и жаркий африканский континент, завоевал любовь цветоводов и садоводов всей страны и часто встречается на клумбах и в уличных вазонах. Поклонники этого красивого цветка часто называют ее африканской ромашкой и успешно сочетают его в уличных и домашних цветочных композициях с другими цветущими растениями. Гацания садовая вполне уверенно адаптировалась к условиям произрастания в средних широтах и радует цветоводов своим ярким и длительным цветением все лето и осень. Посадив однажды у себя на клумбе этот цветок, вы уже не сможете ни один сезон провести без него и обязательно найдете для этого растения место на своем участке.</p>', '2016-12-11 18:42:37', '0001-11-30 00:11:00'),
(15, 5, 'Выращивание цветка агератум в домашних условиях', '<p>Очень часто цветущие растения с&nbsp;клумб, бордюров и&nbsp;альпийских горок&nbsp;можно увидеть на террасах, лоджиях и&nbsp;балконах. Их сажают в ящики и горшки различного размера, большие напольные вазоны и кадки. Объясняется это простым желанием цветоводов как можно дольше любоваться их цветением и вдыхать аромат лета. В число таких растений, которые часто перекочевывают с грядки в горшки, относятся и низкорослые сорта и гибриды агератума &ndash; тропического растения открытого В. Хоустоном.</p>', '<p>Низкорослые сорта и гибриды агератума образуют очень аккуратные и компактные кустики, высота которых достигает всего лишь 30-40 см. Эти пушистые шарики-кустики очень привлекательно смотрятся как на клумбе, в бордюрной композиции, так и в горшке на балконе или террасе.</p><p>Цветовая палитра соцветий этого растения включает в себя все без исключения оттенки розового и фиолетовой гаммы, начиная с бледно-розового цвета, и заканчивая насыщенным сине-фиолетовым оттенком.</p><p>&nbsp;</p><p>Также существуют белые и желтые сорта этого цветка, с помощью художественной посадки которых можно создавать настоящие шедевры на клумбах.</p><p>Выращивание агератума из семян в домашних условиях</p><p>Агератум нельзя назвать слишком переборчивым или привередливым цветком, с которым возникает множество проблем. Он весьма неприхотлив, поэтому&nbsp; выращивание агератума из семян в домашних условиях в подавляющем большинстве случаев не вызывает особых затруднений. Для выращивания агератума из семян в домашних условиях лучше всего подходят юго-восточные и южные окна. Растение отлично размножается семенами, которые высаживаются&nbsp;на рассаду, а затем пересаживаются в отдельные горшочки для дальнейшей высадки&nbsp;в грунт&nbsp;или вазон.</p>', '2016-12-11 18:55:34', '0001-11-30 00:11:00');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roles`) VALUES
(1, 'sergey', '$2y$13$TdQ5QR2KmzqQiAPS.oO0R.aP0u61v42Z.E6sbytYZ9hqIcoPUbl5y', '[]'),
(4, 'admin', '$2y$13$D8aIIrDh8pEjGDiJ39Dqzu47DUZLmhOBn2ooMsJq/aYvmVl2IB642', '[]'),
(5, 'климов', '$2y$13$TdQ5QR2KmzqQiAPS.oO0R.aP0u61v42Z.E6sbytYZ9hqIcoPUbl5y', '[]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C0155143A76ED395` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_C0155143A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
