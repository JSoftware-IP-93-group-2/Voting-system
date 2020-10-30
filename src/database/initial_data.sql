-- Adding regions

-- fields: region_id, name

INSERT INTO regions VALUES (0, 'Північна Україна'),
  (1, 'Південна Україна'),
  (2, 'Західна Україна'),
  (3, 'Східна Україна'),
  (4, 'Центральна Україна');

-- Adding districts

-- fields: district_id, name, region_id

INSERT INTO districts VALUES (0, 'Автономна Республіка Крим', 1),
  (1, 'Вінницька область', 4),
  (2, 'Волинська область', 2),
  (3, 'Дніпровська область', 3),
  (4, 'Донецька область', 3),
  (5, 'Житомирська область', 0),
  (6, 'Закарпатська область', 2),
  (7, 'Запорізька область', 1),
  (8, 'Івано-Франківська область', 2),
  (9, 'Київська область', 0),
  (10, 'Кіровоградська область', 4),
  (11, 'Луганська область', 3),
  (12, 'Львівська область', 2),
  (13, 'Миколаївська область', 1),
  (14, 'Одеська область', 1),
  (15, 'Полтавська область', 4),
  (16, 'Рівненська область', 2),
  (17, 'Сумська область', 0),
  (18, 'Тернопільська область', 2),
  (19, 'Харківська область', 3),
  (20, 'Херсонська область', 1),
  (21, 'Хмельницька область', 2),
  (22, 'Черкаська область', 4),
  (23, 'Чернівецька область', 2),
  (24, 'Чернігівська область', 0);


-- adding votings

-- fields: voting_id, name, description, start_date, end_date

INSERT INTO votings VALUES
    (default, 'Вибори Президента України', 'Перший тур виборів Президента України 2019', '2019-03-31 08:00', '2019-03-31 20:00'),
    (default, 'Вибори Президента України', 'Другий тур  виборів Президента України 2019', '2019-04-21 08:00', '2019-04-21 20:00'),
    (default, 'Вибори Президента України', 'Позачергові вибори Президента України 2014', '2014-05-25 08:00', '2014-05-25 20:00'),
    (default, 'Парламентські вибори', 'Позачергові вибори народних депутатів Верховної Ради України 2019', '2019-07-21 08:00', '2019-07-21 20:00'),
    (default, 'Парламентські вибори', 'Позачергові вибори народних депутатів Верховної Ради України 2014', '2014-10-26 08:00', '2014-10-26 20:00');


-- adding variants

-- fields: variant_id, voting_id, name, description

INSERT INTO variants VALUES
    (default, 1, 'Володимир Зеленський', 'художній керівник ТОВ «Квартал 95», безпартійний, проживає в Києві'),
    (default, 1, 'Петро Порошенко', 'екс-президент України, безпартійний, проживає в Києві'),
    (default, 1, 'Юлія Тимошенко', 'народний депутат України, голова фракції політичної партії "Всеукраїнське обєднання Батьківщина"'),
    (default, 1, 'Юрій Бойко', 'народний депутат України, член політичної партії «Опозиційний блок», проживає в Рубіжному Луганської області'),
    (default, 2, 'Володимир Зеленський', 'художній керівник ТОВ «Квартал 95», безпартійний, проживає в Києві'),
    (default, 2, 'Петро Порошенко', 'екс-президент України, безпартійний, проживає в Києві'),
    (default, 3, 'Петро Порошенко', 'народний депутат України, безпартійний, проживає в місті Києві'),
    (default, 3, 'Юлія Тимошенко', 'народний депутат України, голова фракції політичної партії "Всеукраїнське обєднання Батьківщина"'),
    (default, 3, 'Олег Ляшко', 'народний депутат України, член Радикальної Партії Олега Ляшка, проживає в місті Києві'),
    (default, 3, 'Анатолій Гриценко', 'народний депутат України, член політичної партії «Громадянська позиція», проживає в місті Києві'),
    (default, 4, 'Слуга народу', 'Слуга народу'),
    (default, 4, 'Опозиційна платформа — За життя', 'Опозиційна платформа — За життя'),
    (default, 4, 'Батьківщина', 'Батьківщина'),
    (default, 4, 'Європейська Солідарність', 'Європейська Солідарність'),
    (default, 4, 'Голос', 'Голос'),
    (default, 5, 'Народний фронт', 'Народний фронт'),
    (default, 5, 'Блок Петра Порошенка', 'Блок Петра Порошенка'),
    (default, 5, 'Обєднання «Самопоміч»', 'Обєднання «Самопоміч»'),
    (default, 5, 'Опозиційний блок', 'Опозиційний блок'),
    (default, 5, 'Радикальна партія Олега Ляшка', 'Радикальна партія Олега Ляшка'),
    (default, 5, 'Батьківщина', 'Батьківщина');


-- Adding users

-- fields: user_id, name, surname, birthday_date, gender, district_id, email, passwod, status

-- Explanations for field status:
-- -1 - simple voter
--  0 - regional commissioner
--  1 - central commissioner

INSERT INTO users VALUES
    (default, 'Олег', 'Грищук', '21-02-1995', 'male', 7, 'ladduciddo-2509@gmail.com', 'zUMPnfAYfyPRoB44f0yP', -1),
    (default, 'Іван', 'Опанасенко', '03-06-2000', 'male', 1, 'anafesacu-8846@gmail.com', 'v1MArQ2jvzLJfpnwkde3', -1),
    (default, 'Юлія', 'Гавриленко', '29-05-1998', 'female', 12, 'pavullonam-7326@gmail.com', '6ThdhvjLM8dpDaaq25DD', 0),
    (default, 'Андрій', 'Коноваленко', '26-04-1985', 'male', 18, 'kopywoza-9071@gmail.com', 'c053tDyaoWxaTeTyuvJs', -1),
    (default, 'Максим', 'Шевченко', '04-09-1991', 'male', 19, 'magammennov-8265@gmail.com', '0cfLt0wFL2yGmM9G1s1T', -1),
    (default, 'Дмитро', 'Лійський', '08-06-1999', 'male', 2, 'uzylluffij-8876@gmail.com', '0iaYc6Rh11Aevx0t8ywD', -1),
    (default, 'Тимофій', 'Демиїдський', '06-08-2002', 'male', 6, 'kugipavim-0206@gmail.com', 'ddH9w3ssb2GyF3RjxrbP', -1),
    (default, 'Сергій', 'Кривенко', '07-03-1982', 'male', 8, 'ytuwoddammo-8259@gmail.com', 'YpDWhGVh08hmpRz7Xhfj', -1),
    (default, 'Антон', 'Лимоненко', '24-07-1995', 'male', 9, 'alelacak-1000@gmail.com', 'vD732NaFVGdKQv1hvFZT', 1),
    (default, 'Іванна', 'Покровська', '20-09-2001', 'female', 3, 'uvammyzepe-6974@gmail.com', 'T75mBYoQ8jMvvBCE4hC5', -1),
    (default, 'Надія', 'Горохова', '16-12-1975', 'female', 4, 'uzeteretto-4871@gmail.com', 'Pw1WY82LBoLUM38qJbV6', 0),
    (default, 'Анастасія', 'Дячок', '22-06-2001', 'female', 17, 'umeffeve-4334@gmail.com', '1ZWQoAn301925RKXtd6V', -1),
    (default, 'Олена', 'Хилько', '20-01-1998', 'female', 21, 'ypewavoss-0309@gmail.com', '7m7bxDyhzbV4cFbit2M5', -1),
    (default, 'Костянитин', 'Храпок', '21-07-1977', 'male', 9, 'cumummecer-1438@gmail.com', 'eKE4KGdHZyZYGw2rwTWL', -1),
    (default, 'Даниїл', 'Махновський', '18-08-1971', 'male', 4, 'midemufuq-9242@gmail.com', 'jVmp3ahgfAMAqowmM0uW', 0),
    (default, 'Артур', 'Барабаш', '30-03-1979', 'male', 24, 'vapiddurre-1018@gmail.com', 'KBH7RzjQmvzsd1rNTTPT', 1),
    (default, 'Аліна', 'Марченко', '06-01-1989', 'female', 20, 'lossizagywa-7500@gmail.com', 'xq2CQuoKjhA7kFB19JBU', 1),
    (default, 'Віктор', 'Капронов', '05-03-1989', 'male', 3, 'ettenyppe-4319@gmail.com', 'p6RAtRkoht7QC69L9VFk', 1),
    (default, 'Христина', 'Головенко', '15-11-1971', 'female', 9, 'hupufedyg-6934@gmail.com', 'yR79tJaUAXsTefCHAGFi', 0),
    (default, 'Анатолій', 'Пірхорович', '16-05-1981', 'male', 5, 'afysitehe-0773@gmail.com', 'ruqUFemET5gZEWrVBKAN', -1),
    (default, 'Анна', 'Притула', '25-11-1993', 'female', 11, 'adysemi-7755@gmail.com', '3gKqtcd0WbzZTaAQANtQ', -1),
    (default, 'Іван', 'Зеленський', '23-04-1975', 'male', 23, 'esseriqixy-5680@gmail.com', 'L61vUv3Q65oZWDboZuw2', -1),
    (default, 'Кирило', 'Родичев', '10-06-1976', 'male', 1, 'epazanno-2383@gmail.com', 'sRyMgjRLFTcBLWWrsGB0', 1),
    (default, 'Олександр', 'Кліпенко', '01-01-1967', 'male', 7, 'lowazoduha-5849@gmail.com', 'A76kqWv3wyLjg7Nty3eu', 1),
    (default, 'Дмитро', 'Красивий', '31-05-1993', 'male', 11, 'qevattaza-6678@gmail.com', 'R3ug3twRLMwBQTtAz9Gr', 0),
    (default, 'Елизавета', 'Похила', '02-01-1985', 'female', 11, 'zecoletteso-5673@gmail.com', 'js3WkZeGxVyatEodoyUg', 0),
    (default, 'Марія', 'Давидова', '27-03-1971', 'female', 1, 'ypakuddeb-2476@gmail.com', 'ZhgMeTjrVdt0urERVKez', 0),
    (default, 'Ірина', 'Ковбаса', '14-09-2000', 'female', 16, 'afudozess-2474@gmail.com', 'ihhDy6A9wpshJqta5AuU', -1),
    (default, 'Єгор', 'Копотюк', '03-09-1990', 'male', 15, 'igettonnappu-2909@gmail.com', 'LsE3VfAfDLBHb7PhJTWZ', 0),
    (default, 'Василь', 'Кайдаш', '02-12-1983', 'male', 12, 'apejotu-7811@gmail.com', '0F3qeenorUCR0zpuRWXh', 0),
    (default, 'Тетяна', 'Киричук', '24-07-1978', 'female', 6, 'vasarrebo-1836@gmail.com', 'r1j3MpzFHPVNWDy92vwZ', -1),
    (default, 'Валентина', 'Гулак', '17-04-1984', 'female', 14, 'sussennyqime-3451@gmail.com', 'MHuba8muzsuFcQW9eCVJ', -1),
    (default, 'Людмила', 'Ткаченко', '05-01-1986', 'female', 24, 'nofijugo-0738@gmail.com', 'ADYZ8jHA0D6eBNwk76Ud', -1),
    (default, 'Марк', 'Москаленко', '05-10-1967', 'male', 18, 'qattyvyttubu-8651@gmail.com', 'heeqi24W4KBd42JYPe7N', -1),
    (default, 'Михайло', 'Вихорь', '07-04-1978', 'male', 22, 'feppehassyss-6048@gmail.com', 'By0wujvLPCgMhpuQchtb', -1),
    (default, 'Марина', 'Оніпко', '11-06-1992', 'female', 3, 'fokyllehis-6613@gmail.com', 'XJt9vC20B8hoexqNzX0o', -1);

-- Adding petitions

-- fields: petition_id, name, description, author_user_id, start_date, end_date

-- Explanations for fields start_date:
-- The date petition was posted

-- Explanations for fields end_date:
-- The date voting for petition ends

INSERT INTO petitions VALUES
	(default, 'Створення велосипедних доріжок в місті Ірпінь', 'Нам ніде кататися на велосипедах! Автомобільні дороги небезпечні, тому потрібні велосипедні доріжки!', 5, '2020-05-28 11:23', '2020-06-29 00:00'),
	(default, 'Хочемо безкоштовного морозива!', 'Пропоную прийняти закон, що дозволить кожному їсти безкоштовне морозиво!',23, '2020-10-19 21:20', '2020-11-20 00:00'),
	(default, 'Зробіть міні-бібліотеки на стоянках автобусів', 'В наш час люди все менше і менше читають книжки, а це цікавий спосіб привчити людей читати і розвити в них інтерес до книжок, коли хтось чекає автобус і починає читати.',20, '2020-01-17 20:20', '2020-02-18 00:00'),
	(default, 'Посадіть більше дерев', 'Та тут так брудно що я задохнуся, пошліть сюди 126879 бригад з деревами', 6, '2020-07-05 17:11', '2020-08-06 00:00'),
	(default, 'Прийміть на озброєння ядерну зброю', 'І паліть в усі сторони.', 12, '2020-01-16 22:58', '2020-02-17 00:00'),
	(default, 'Я із майбутнього! НЕ БУДУЙТЕ ЦЮ ЯДЕРНУ ЗБРОЮ', 'ЗАРАЗ ЯК БАБАХНЕ', 12, '2025-02-03 10:27', '2025-03-04 00:00'),
	(default, 'Побудувати ще один парк у місті Буча', 'Налаштували тут купу будівель а парки не будуєте! Розвивайте місто рівномірно!',23, '2020-05-01 21:20', '2020-06-02 00:00'),
	(default, 'Зробіть програму по поширенню сонячних батарей у звичайних будинках', 'Жах, майнив, майнив і в мінус уйшов з вашими тарифами на електроенергію!! Не можна так!!',23, '2020-09-11 20:28', '2020-10-12 00:00'),
	(default, 'Не вбивайте тварин заради їжі', 'Ну не робіть цього, вони ж такі миииилі!:(', 35, '2020-03-12 18:01', '2020-04-13 00:00'),
	(default, 'Зробіть вогнепальну зброю легальною!', 'Сусід дістав, так і хочеться пальнути йому у ногу!',23, '2020-05-28 16:00', '2020-06-28 00:00'),
	(default, 'Test123', 'просто перевіряю чи це працює',26, '2018-06-10 12:00', '2018-07-11 00:00'),
	(default, 'Побудуйте соціалізм!', 'Ох раніше було краще.',16, '2020-11-22 08:51', '2020-12-23 00:00'),
	(default, 'Зробіть JavaScript другою державною мовою', 'Я хочу розмовляти на JavaScript! Хочу, щоб мої діти розмовляли цією чудовою мовою!',2, '2020-03-12 15:14', '2020-04-13 00:00'),
	(default, 'Заборонити людям помирати', 'Якщо помирати буде заборонено, люди не будуть помирати. Ауф', 7, '2020-02-01 08:16', '2020-03-02 00:00'),
	(default, 'Зробіть інформаційні заходи, скажіть бездомним, щоб вони нарешті купили собі дім!', 'Якщо ти бездомний, то просто купи собі дім! Think about it.', 28, '2020-05-25 14:42', '2020-06-26 00:00'),
	(default, 'План захоп линня лУни', 'кАрочі бирЕте строіте такий от човен карочі касмічний, да, ну, і, ну тупа захоплюите планети всі вакруг. ну А чо ні?', 36, '2020-07-20 19:22', '2020-08-21 00:00'),
	(default, 'Ідея про обогачення країни!1!!!1!!', 'Берете, друкуєте усім гроші роздаєте, і усі люди стають багатими! Ізі! PROFIT', 33, '2020-09-29 13:46', '2020-10-30 00:00');

-- Adding petition_results

-- fields: petition_id, user_id

INSERT INTO petition_results VALUES
	(1, 11),
	(3, 8),
	(7, 4),
	(2, 33),
	(1, 25),
	(5, 13),
	(5, 18),
	(3, 10),
	(7, 5),
	(1, 31),
	(8, 4);

-- Adding voting_results

-- fields: voting_id, variant_id, user_id

INSERT INTO voting_results VALUES
	(1, 4, 15),
	(1, 3, 1),
	(1, 3, 30),
	(1, 2, 35),
	(1, 2, 12),
	(1, 2, 34),
	(1, 1, 13),
	(1, 1, 20),
	(1, 4, 16),
	(1, 2, 22),
	(1, 1, 2),
	(1, 4, 27),
	(1, 3, 4),
	(1, 3, 11),
	(1, 1, 7),
	(1, 2, 6),
	(1, 1, 28),
	(1, 4, 24),
	(1, 4, 21),
	(1, 2, 32),
	(1, 4, 5),
	(1, 1, 26),
	(1, 1, 19),
	(1, 3, 14),
	(1, 1, 18),
	(1, 4, 10),
	(1, 3, 17),
	(1, 4, 25),
	(1, 1, 9),
	(1, 2, 31),
	(1, 3, 8),
	(1, 3, 3),
	(1, 2, 29),
	(1, 4, 23),
	(1, 2, 33),
	(2, 6, 30),
  	(2, 5, 23),
  	(2, 5, 22),
  	(2, 6, 11),
  	(2, 6, 25),
  	(2, 5, 17),
  	(2, 6, 14),
  	(2, 5, 32),
  	(2, 5, 35),
  	(2, 5, 2),
  	(2, 6, 31),
  	(2, 6, 10),
  	(2, 6, 9),
  	(2, 6, 18),
  	(2, 6, 12),
  	(2, 5, 34),
  	(2, 6, 7),
  	(2, 6, 24),
  	(2, 6, 13),
  	(2, 5, 6),
  	(2, 5, 29),
  	(2, 5, 8),
  	(2, 5, 4),
  	(2, 5, 33),
  	(2, 6, 3),
  	(2, 6, 5),
  	(2, 5, 21),
  	(2, 6, 15),
  	(2, 6, 19),
  	(2, 6, 20),
  	(2, 5, 16),
  	(2, 5, 1),
  	(2, 5, 26),
  	(2, 6, 27),
  	(2, 5, 28),
	(3, 10, 6),
	(3, 10, 22),
	(3, 7, 24),
	(3, 8, 20),
	(3, 8, 31),
	(3, 10, 7),
	(3, 8, 34),
	(3, 8, 30),
	(3, 10, 15),
	(3, 8, 1),
	(3, 9, 9),
	(3, 8, 8),
	(3, 7, 23),
	(3, 10, 13),
	(3, 10, 35),
	(3, 7, 17),
	(3, 7, 12),
	(3, 10, 3),
	(3, 8, 32),
	(3, 9, 19),
	(3, 10, 16),
	(3, 8, 14),
	(3, 7, 21),
	(3, 10, 11),
	(3, 7, 33),
	(3, 9, 27),
	(3, 8, 29),
	(3, 8, 10),
	(3, 10, 25),
	(3, 9, 4),
	(3, 10, 28),
	(3, 10, 2),
	(3, 10, 18),
	(3, 9, 5),
	(3, 8, 26),
	(4, 12, 9),
    (4, 14, 13),
    (4, 13, 24),
    (4, 13, 10),
    (4, 12, 23),
    (4, 13, 20),
    (4, 12, 11),
    (4, 12, 28),
    (4, 13, 29),
    (4, 11, 32),
    (4, 15, 27),
    (4, 14, 22),
    (4, 15, 17),
    (4, 12, 34),
    (4, 12, 19),
    (4, 13, 6),
    (4, 12, 12),
    (4, 11, 1),
    (4, 13, 8),
    (4, 14, 7),
    (4, 13, 16),
    (4, 15, 35),
    (4, 13, 15),
    (4, 15, 4),
    (4, 11, 14),
    (4, 15, 3),
    (4, 15, 5),
    (4, 14, 26),
    (4, 14, 2),
    (4, 15, 31),
    (4, 14, 21),
    (4, 12, 18),
    (4, 13, 33),
    (4, 13, 25),
    (4, 14, 30),
    (5, 20, 13),
    (5, 18, 18),
    (5, 20, 4),
    (5, 17, 17),
    (5, 18, 23),
    (5, 16, 24),
    (5, 21, 15),
    (5, 20, 21),
    (5, 21, 29),
    (5, 16, 10),
    (5, 21, 11),
    (5, 20, 7),
    (5, 21, 2),
    (5, 16, 20),
    (5, 17, 28),
    (5, 21, 22),
    (5, 20, 1),
    (5, 18, 34),
    (5, 16, 9),
    (5, 19, 5),
    (5, 19, 33),
    (5, 19, 12),
    (5, 21, 3),
    (5, 16, 19),
    (5, 21, 30),
    (5, 17, 26),
    (5, 17, 14),
    (5, 17, 31),
    (5, 16, 8),
    (5, 19, 27),
    (5, 16, 25),
    (5, 18, 16),
    (5, 17, 32),
    (5, 18, 35),
    (5, 18, 6);

-- Adding falsifications

-- fields: falsification_id, author_user_id, voting_id

INSERT INTO falsifications VALUES 
(default, 1, 1, ' Falsification in city Brovary', 'he used fake account. He voted one time'),
(default, 5, 1, ' Falsification in city Kyiv', 'he voted for someone who even doesnt know to read. He voted one time'),
(default, 13, 2, ' Falsification in city Odessa', 'the person under 18 years old voted. He voted one time'),
(default, 17, 2, ' Falsification in city Dnipro', 'he early voted. He voted one time'),
(default, 19, 3, ' Falsification in city Irpin', 'I saw a man who was cheating. He voted few times'),
(default, 21, 3, ' Мертві душі', 'У списки виборців вносяться дані про померлих, або придуманих людей'),
(default, 24, 4, ' Купівля голосів', 'Видача грошової, або якоїсь іншої винагороди за голосування за певного кандидата'),
(default, 25, 4, ' Недійсні бюлетені', 'Бюлетені можуть бути без підпису члена комісії, додаткові позначки проти всіх або за кількох кандидатів'),
(default, 28, 5, ' Невидимі чорнила', 'Використання ручок, олівців, помітки від яких можуть бути виведеними, або зникають самостійно з часом'),
(default, 30, 5, ' Псування бюлетенів', 'Псування бюлетенів «чужого» кандидата на етапі підрахунку голосів, з метою визнання їх недійсними'),
(default, 31, 5, ' Фальсифікація під час голосування вдома', 'Допомога в заповненні за потрібного кандидата, псування бюлетеня за чужого');
