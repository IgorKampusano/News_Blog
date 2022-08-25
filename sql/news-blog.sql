-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 25 2022 г., 21:17
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news-blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Москва', NULL, NULL),
(2, 'Санкт-Петербург', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_23_111321_create_news_table', 1),
(6, '2022_08_23_164643_create_news_user_table', 2),
(12, '2022_08_25_143127_create_city_table', 3),
(13, '2022_08_25_143446_create_news_city_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sony пообещала выпустить PlayStation VR2 в начале 2023 года', 'Японская компания Sony сообщила в социальных сетях о планах выпустить гарнитуру виртуальной реальности PlayStation VR2 в начале следующего года.', 'Японская компания Sony сообщила в социальных сетях о планах выпустить гарнитуру виртуальной реальности PlayStation VR2 в начале следующего года. В феврале производитель продемонстрировал дизайн VR-гарнитуры Sony следующего поколения, а также контроллера PlayStation VR2 Sense. Оформление гаджетов выполнено в схожем стиле с консолью PlayStation 5. PS VR2 оснащена дисплеем с разрешением 4K и способна работать на частоте 90 или 120 Гц. Угол обзора устройства составляет 110. Гаджет использует фовеальный рендеринг, который визуализирует определённые части изображения более чёткими, чтобы увеличить производительность консоли. Подключение новой итерации VR-гарнитуры Sony возможно при помощи кабеля USB-C.', 'img/VR-2.png', '2022-08-23 09:48:37', '2022-08-23 09:48:37'),
(2, 'Wildberries начал тестировать сервис моментальных выплат за товары', 'Маркетплейс Wildberries тестирует новый сервис, который в будущем позволит предпринимателям получать выплаты за проданные товары в реальном времени. В пилотном проекте финтех-сервис доступен 1000 предпринимателей. Об этом Хабру рассказали в компании.', 'Маркетплейс Wildberries тестирует новый сервис, который в будущем позволит предпринимателям получать выплаты за проданные товары в реальном времени. В пилотном проекте финтех-сервис доступен 1000 предпринимателей. Об этом Хабру рассказали в компании.\r\n\r\nПосле продажи операции будут сразу отражаться на персональном балансе личного кабинета, а представители бизнеса смогут сами определять периодичность выплат — не только на еженедельной основе, как в данный момент, но и даже каждый час.\r\n\r\nРазрабатываемый сервис сделает все внутренние и внешние операции полностью прозрачными для предпринимателей, обещает Wildberries. В компании считают, что это позволит продавцам оперативно принимать бизнес-решения и пополнять собственные оборотные средства без ограничений.\r\n\r\nПосле окончания тестового периода и получения обратной связи от продавцов новый сервис будет расширен на всех предпринимателей, реализующих свою продукцию через Wildberries.', 'img/wildberries.png', NULL, NULL),
(3, '«Альфа-банк» выпустил банковское приложение «Деньги пришли» для iOS', '«Альфа-банк» выпустил банковское приложение «Деньги пришли» для пользователей устройств под управлением iOS. На странице самого приложения нет упоминания банка, а клиенты получают ссылку на скачивание по электронной почте.', '«Альфа-банк» выпустил банковское приложение «Деньги пришли» для пользователей устройств под управлением iOS. На странице самого приложения нет упоминания банка, а клиенты получают ссылку на скачивание по электронной почте. На этой неделе «Альфа-банк» разослал клиентам письма с сообщением о том, что теперь пользователи iOS могут получить доступ к своим счетам с помощью приложения «Деньги пришли». В приложении можно осуществлять переводы, оплачивать покупки, штрафы, счета и следить за расходами. Для авторизации необходимо ввести номер счёта или карты и получить код по СМС, который приходит с официального номера банка. Приложение выпустила компания ООО «Артконсьерж», а на странице приложения нет упоминания того, что оно как-то связано с «Альфа-банком». В описании сказано, что пользователи могут добавлять карты любых банков, проводить с ними операции, получать кэшбэк и финансовые советы. На данный момент «Деньги пришли» занимает первое место в App Store среди мобильных приложений в категории «Утилиты».\n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                \n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                16 августа в App Store выпустили приложение «СБОЛ», которое полностью копировало функционал «Сбер Онлайн». Приложение удалили из магазина через неделю. 19 августа банк «Открытие» выпустил приложение Open Digital Wallet — копию уже удалённого приложения. Копию удалили через неделю.', 'img/alpha-bank-ios.png', NULL, NULL),
(4, 'Sony объявила о планах выйти на рынок электромобилей', 'Компания представила прототип нового электромобиля и объявила о намерении создать отдельное подразделение для производства таких машин', 'Sony весной создаст подразделение по производству электромобилей, сообщается в пресс-релизе компании.\nО намерении выйти на рынок электрокаров глава компании Кэнъитиро Ёсида заявил на Consumer Electronics Show (CES) в Лас-Вегасе. «Мы рассматриваем возможность запуска коммерческого производства электромобилей Sony», — цитирует Ёсиду портал The Verge.\nНа CES в 2020 году Sony представила прототип электромобиля Vision-S. В декабре того же года машину впервые испытали на европейских дорогах, а в апреле Sony провела тест-драйв с использованием удаленного управления через сеть 5G.', 'img/sony-electro.png', NULL, NULL),
(5, 'Минцифры внесло «Альфа-банк» в реестр IT-компаний', '«Альфа-банк» 4 июля попал в реестр аккредитованных IT-компаний Минцифры. Тогда же в список добавили несколько «дочек» банка, например, ООО «Альфастрахование-жизнь».', '«Альфа-банк» 4 июля попал в реестр аккредитованных IT-компаний Минцифры. Тогда же в список добавили несколько «дочек» банка, например, ООО «Альфастрахование-жизнь».\n\n«В Альфе работает более 8 тыс. айтишников — это разработчики, тестировщики, дата-сайентисты, аналитики, специалисты по кибербезопасности, UX-исследователи и много кто ещё», — отметили в банке.\n\nВ мае аналогичный статус получил «Сбер», в начале июня — «Тинькофф банк». «Альфа-банк» в конце мая зарегистрировал компанию «Альфа Диджитал», которая будет развиваться как центр IT-разработки банка.\n\nС начала программы банки стали активно выделять свои дочерние структуры, занятые в сфере информационных технологий, в отдельные юрлица. Так, «Альфа-банк» 30 мая зарегистрировал IT-компанию «Альфа Диджитал», которая будет развиваться как центр IT-разработки банка. Подобные IT-компании также есть у Сбербанка, ВТБ, Газпромбанка, Совкомбанка, «Тинькофф», и их может появиться еще больше. \n\nПартнёр Taxology Алексей Артюх отметил, что тренд создания IT-подразделений коснулся не только банков, но и других отраслей. До недавнего времени существовал риск, что налоговые органы увидят в этом уклонение от налогов за счет «дробления» бизнеса. Ситуация изменилась, когда ФНС в марте официально заявила, что не будет рассматривать подобные случаи как злоупотребление.', 'img/alpha-bank-reestr.png', NULL, NULL),
(6, 'Онлайн митап от ВсеИнструменты.Ру о PHP, MySQL, нагрузках и асинхронности', 'Онлайн митап, посвященный опыту внедрения микросервисов и выбору между PHP и Go для этого, про эксплуатацию MySql на постоянно растущих нагрузках, а также про асинхронный PHP, его настоящее и будущее.', 'Компания ВсеИнструменты.Ру основана в 2006 году, и сейчас уже входит в топ-10 крупнейших интернет-магазинов РФ, №1 в сегменте DIY. Ежемесячная аудитория сайта 18-19 млн. человек, а наша IT команда на сегодняшний день насчитывает более 200 разработчиков. У нас накопилось много интересного опыта, которым мы бы хотели поделиться и обсудить его с аудиторией. \n\nТемы, о которых хотелось бы поговорить, конечно же невозможно уместить в один митап, поэтому эту встречу мы посвятим опыту внедрения внедрения микросервисов и выбор между PHP и Go для этого, про эксплуатацию MySql на постоянно растущих нагрузках, а также про асинхронный PHP, его настоящее и будущее. У нас был монолит с десятилетней историей, десятки разработчиков и постоянно растущие объемы в e-commerce-проекте с миллионом товаров и тысячами одновременных клиентов онлайн.\n                                                                                                                                                                                                                                                                                                             \n                                                                                                                                                                                                                                                                                                             Доклад о том, как мы подключались к микросервисному тренду, чтобы решить проблемы масштабирования и роста сложности задач в условиях хайлоада. История от самых первых споров, какой стек выбирать, до овер-дедлайнового последнего ночного деплоя с шампанским и сигарами. Как интегрировали разработанные микросервисы с PHP-монолитом, пробовали разные шины сообщений и перебрали 3 стандарта обмена данными, но в итоге все же получили желаемый результат. \n                                                                                                                                                                                                                                                                                                             \n                                                                                                                                                                                                                                                                                                             Будет полезно тем, кто еще думает о выносе частей своего проекта в микросервисы, либо только начинает это делать.', 'img/vseinstrumenti-meetup.png', NULL, NULL),
(7, 'Вышел PHP 8.1', 'Спустя год после старта разработки вышел релиз языка программирования PHP 8.1. В версию добавили ряд улучшений.', 'Спустя год после старта разработки вышел релиз языка программирования PHP 8.1. В версию добавили ряд улучшений. Изменения в PHP 8.1 включают:\n                                                                                                                \n                                                                                                                поддержку перечислений (enum). Вместо класса с константами теперь можно использовать следующую конструкцию:', 'img/php-8.1.png', NULL, NULL),
(8, 'Сообщество разработчиков языка PHP учредило некоммерческую организацию PHP Foundation', '22 ноября 2021 года сообщество разработчиков языка PHP учредило некоммерческую организацию PHP Foundation. Цель организации данного независимого образования — создать структуру, отвечающую за организацию финансирования и продвижения проекта PHP, включая поддержку сообщества разработчиков, их трудоустройства и обеспечение им необходимых условий для развития проекта.', '22 ноября 2021 года сообщество разработчиков языка PHP учредило некоммерческую организацию PHP Foundation. Цель организации данного независимого образования — создать структуру, отвечающую за организацию финансирования и продвижения проекта PHP, включая поддержку сообщества разработчиков, их трудоустройства и обеспечение им необходимых условий для развития проекта.\n\nНа базе PHP Foundation уже начала функционировать система совместного финансирования контрибуторов проекта. В качестве инвесторов в ней могут принять участие как компании, так и физлица. Например, компания JetBrains будет вкладывать туда по $100 тыс. ежегодно. Среди компаний, которые объявили о сотрудничестве с PHP Foundation есть также Automattic, Laravel, Acquia, Zend, Private Packagist, Symfony, Craft CMS, Tideways и PrestaShop.\n\nВ 2022 году PHP Foundation планирует начать выдавать гранты для разработчиков по мере расширения бюджета организации.\n\nСогласно пояснению JetBrains, создание PHP Foundation было обусловлено уходом из компании и проекта PHP одного из его ключевых разработчиков Никиты Попова. Он с 1 декабря начнет работу в новой компании над проектом LLVM. Для того, чтобы другие ключевые разработчики PHP не ушли из проекта в коммерческие структуры, будут использоваться ресурсы PHP Foundation. В JetBrains надеются, что с помощью финансирования PHP Foundation сообщество сможет обеспечить себя в нужном объеме и выплачивать ключевым разработчикам PHP зарплату, соответствующую текущему рыночному уровню. Девиз JetBrains по этой ситуации — «чем больше мы соберем, тем больше разработчиков смогут работать над PHP на полную ставку».', 'img/php-foundation.png', NULL, NULL),
(9, 'Google обновит правила для разработчиков расширений Chrome Web Store', 'Google изменит правила использования магазина расширений Chrome Web Store. Новая политика даст компании возможность удалять расширения, признанные вредоносными или распространяющими спам.', 'Google изменит правила использования магазина расширений Chrome Web Store. Новая политика даст компании возможность удалять расширения, признанные вредоносными или распространяющими спам.\n\nОбновление политики будет содержать шесть новых запретов:\n\nРазработчикам запрещается публиковать дубликаты других расширений, уже присутствующих в Chrome Web Store;\nЗапрещается искажать метаданные расширения, кроме того, информация не должна быть «чрезмерной». Речь идёт об информации, касающейся описания расширения, имени разработчика, названия, иконок, скриншотов и рекламы;\nЗапрещается накручивать рейтинги расширений, а также размещать поддельные отзывы и обзоры;\nЗапрещается размещать расширения, созданные только для запуска сторонних приложений, тем или веб-страниц;\nЗапрещается публиковать расширения, которые рассылают спам и злоупотребляют распространением рекламы или нежелательных сообщений, а также мешают просмотру страниц.', 'img/google-web.png', NULL, NULL),
(10, 'Эксперт: Хакеры могут использовать Web Audio API для снятия цифрового отпечатка', 'Специалист в области кибербезопасности Сэмюэл Уилер, который сотрудничает с MIT CSAIL и W3C Privacy Interest Group, снова поднял вопрос скрытых угроз со стороны Web Audio API, предназначенного для управления аудиоконтентом прямо в браузере. Он считает, что злоумышленники могут использовать API для несанкционированной передачи ультразвука.', 'Специалист в области кибербезопасности Сэмюэл Уилер, который сотрудничает с MIT CSAIL и W3C Privacy Interest Group, снова поднял вопрос скрытых угроз со стороны Web Audio API, предназначенного для управления аудиоконтентом прямо в браузере. Он считает, что злоумышленники могут использовать API для несанкционированной передачи ультразвука.\n\nПо мнению Уилера, Web Audio API может передавать с компьютера жертвы звуковые сигналы, которые не способен распознавать человек. Между тем эти аудиосигналы можно использовать для снятия цифрового отпечатка устройства. По мнению эксперта, интерфейс Web Audio API нужно ограничить, чтобы его нельзя было использовать для генерации или прослушивания ультразвуковых сигналов без разрешения. Он предположил, что пользователям может быть явно предложено включить использование API Web Audio.\n\nОпасения Уилера разделяет и Питер Снайдер, исследователь конфиденциальности в Brave software и сопредседатель PING. По его словам, подобные методы можно применять «для междоменного отслеживания; сайты могут передавать ультразвук другим открытым страницам, что позволит осуществлять межсайтовое отслеживание, от которого Brave и другие браузеры, ориентированные на конфиденциальность, пытаются защитить пользователей». В Brave уже добавили рандомизацию в различные API-интерфейсы Web Audio, чтобы уменьшить вероятность снятия цифрового отпечатка в браузере.\n\nМежде тем разработчик Google Реймонд Той уверен, что можно позволить специалистам работать исключительно с одной частотой дискретизации.\n\nНекоторые разработчики же полагают, что ограничение доступной частоты может спровоцировать сдвиг фаз или задержку, и что нет разумного нижнего или верхнего порога, подходящего для всех.\n\nНа эту проблему передачи звука ИБ-специалисты обращали внимание уже неоднократно.\n\nЛюди способны слышать звуковые частоты в диапазоне от 20 Гц до 20 000 Гц, хотя индивидуальные диапазоны различаются. Звуковые частоты ниже и выше порога человеческого слуха известны как инфразвук и ультразвук. Несколько лет назад компании, занимающиеся цифровой рекламой, начали использовать ультразвуковые сигналы для отслеживания интересов людей на разных устройствах. Если, к примеру, телевизионная реклама испускает скрытый неслышимый сигнал, находящийся рядом с телевизором смартфон может принять его и передать в приложение, которое обновляет информацию о таргетируемом владельце устройства данными его просмотров.\n\nАмериканская торговая инспекция в 2016 году предупредила о недопустимости такого отслеживания. Позднее вышло исследование, которое подтвердило, что 234 приложения для Android скрытно прослушивали ультразвуковые маяки. Подобное скрытое отслеживание запретили.\n\nНо и сегодня исследователи компьютерной безопасности продолжают находить новые способы использования ультразвука для эксфильтрации данных. Его применяют и для законных операций — например, приложение Google Cast использует ультразвуковой токен при сопряжении с соседним Chromecast.', 'img/web-audio-api.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `news_city`
--

CREATE TABLE `news_city` (
  `news_id` bigint UNSIGNED NOT NULL,
  `cities_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `news_user`
--

CREATE TABLE `news_user` (
  `news_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news_user`
--

INSERT INTO `news_user` (`news_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(3, 2),
(2, 2),
(4, 2),
(7, 4),
(8, 4),
(10, 4),
(7, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@news.ru', NULL, '$2y$10$HL5J8WCPHje660fL84esb.IcGXl7Q2i0UB4WlTV2LosAQmgAg8aYu', NULL, '2022-08-23 14:02:08', '2022-08-23 14:02:08'),
(2, 'editor', 'editor@news.ru', NULL, '$2y$10$cPNXq3KFpsCHd2OyXzW/su/04ngGvYs6bkBl.8D2uJrTu4ZGoM90C', NULL, '2022-08-24 07:54:58', '2022-08-24 07:54:58'),
(4, 'user', 'user@news.ru', NULL, '$2y$10$QnSqXoxEEraynSedJC.rLuL1HumUvVe3F6HEqhOaQg/fpZow9RQJm', NULL, '2022-08-25 15:12:21', '2022-08-25 15:12:21');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v_news_for_user`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v_news_for_user` (
`title` varchar(100)
,`description` text
,`image` text
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `v_news_for_users`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `v_news_for_users` (
`title` varchar(100)
,`description` text
,`image` text
,`id` bigint unsigned
);

-- --------------------------------------------------------

--
-- Структура для представления `v_news_for_user`
--
DROP TABLE IF EXISTS `v_news_for_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `v_news_for_user`  AS SELECT `news`.`title` AS `title`, `news`.`description` AS `description`, `news`.`image` AS `image` FROM ((`news` join `news_user` `nu` on((`news`.`id` = `nu`.`news_id`))) join `users` `us` on((`nu`.`user_id` = `us`.`id`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `v_news_for_users`
--
DROP TABLE IF EXISTS `v_news_for_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `v_news_for_users`  AS SELECT `news`.`title` AS `title`, `news`.`description` AS `description`, `news`.`image` AS `image`, `us`.`id` AS `id` FROM ((`news` join `news_user` `nu` on((`news`.`id` = `nu`.`news_id`))) join `users` `us` on((`nu`.`user_id` = `us`.`id`))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_created_at_index` (`created_at`);

--
-- Индексы таблицы `news_city`
--
ALTER TABLE `news_city`
  ADD KEY `news_city_news_id_foreign` (`news_id`),
  ADD KEY `news_city_cities_id_foreign` (`cities_id`);

--
-- Индексы таблицы `news_user`
--
ALTER TABLE `news_user`
  ADD KEY `news_user_news_id_foreign` (`news_id`),
  ADD KEY `news_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news_city`
--
ALTER TABLE `news_city`
  ADD CONSTRAINT `news_city_cities_id_foreign` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_city_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_user`
--
ALTER TABLE `news_user`
  ADD CONSTRAINT `news_user_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
