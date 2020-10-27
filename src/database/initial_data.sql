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
    (0, 'Вибори Президента України', 'Перший тур виборів Президента України 2019', '2019-03-31 08:00', '2019-03-31 20:00'),
    (1, 'Вибори Президента України', 'Другий тур  виборів Президента України 2019', '2019-04-21 08:00', '2019-04-21 20:00'),
    (2, 'Вибори Президента України', 'Позачергові вибори Президента України 2014', '2014-05-25 08:00', '2014-05-25 20:00');


-- adding variants

-- fields: variant_id, voting_id, name, description

INSERT INTO variants VALUES
    (0, 0, 'Володимир Зеленський', 'художній керівник ТОВ «Квартал 95», безпартійний, проживає в Києві'),
    (1, 0, 'Петро Порошенко', 'екс-президент України, безпартійний, проживає в Києві'),
    (2, 0, 'Юлія Тимошенко', 'народний депутат України, голова фракції політичної партії "Всеукраїнське обєднання Батьківщина"'),
    (3, 0, 'Юрій Бойко', 'народний депутат України, член політичної партії «Опозиційний блок», проживає в Рубіжному Луганської області'),
    (4, 1, 'Володимир Зеленський', 'художній керівник ТОВ «Квартал 95», безпартійний, проживає в Києві'),
    (5, 1, 'Петро Порошенко', 'екс-президент України, безпартійний, проживає в Києві'),
    (6, 2, 'Петро Порошенко', 'народний депутат України, безпартійний, проживає в місті Києві'),
    (7, 2, 'Юлія Тимошенко', 'народний депутат України, голова фракції політичної партії "Всеукраїнське обєднання Батьківщина"'),
    (8, 2, 'Олег Ляшко', 'народний депутат України, член Радикальної Партії Олега Ляшка, проживає в місті Києві'),
    (9, 2, 'Анатолій Гриценко', 'народний депутат України, член політичної партії «Громадянська позиція», проживає в місті Києві');

-- Adding users

-- fields: user_id, name, surname, birthday_date, gender, district_id, email, passwod, status

-- Explanations for field status: 
-- -1 - simple voter 
--  0 - regional commissioner
--  1 - central commissioner

INSERT INTO users VALUES 
    (0, 'Олег', 'Грищук', '21-02-1995', 'male', 7, 'ladduciddo-2509@yopmail.com', 'zUMPnfAYfyPRoB44f0yP', -1),
    (1, 'Іван', 'Опанасенко', '03-06-2000', 'male', 1, 'anafesacu-8846@yopmail.com', 'v1MArQ2jvzLJfpnwkde3', -1),
    (2, 'Юлія', 'Гавриленко', '29-05-1998', 'female', 12, 'pavullonam-7326@yopmail.com', '6ThdhvjLM8dpDaaq25DD', 0),
    (3, 'Андрій', 'Коноваленко', '26-04-1985', 'male', 18, 'kopywoza-9071@yopmail.com', 'c053tDyaoWxaTeTyuvJs', -1),
    (4, 'Максим', 'Шевченко', '04-09-1991', 'male', 19, 'magammennov-8265@yopmail.com', '0cfLt0wFL2yGmM9G1s1T', -1),
    (5, 'Дмитро', 'Лійський', '08-06-1999', 'male', 2, 'uzylluffij-8876@yopmail.com', '0iaYc6Rh11Aevx0t8ywD', -1),
    (6, 'Тимофій', 'Демиїдський', '06-08-2002', 'male', 6, 'kugipavim-0206@yopmail.com', 'ddH9w3ssb2GyF3RjxrbP', -1),
    (7, 'Сергій', 'Кривенко', '07-03-1982', 'male', 8, 'ytuwoddammo-8259@yopmail.com', 'YpDWhGVh08hmpRz7Xhfj', -1),
    (8, 'Антон', 'Лимоненко', '24-07-1995', 'male', 9, 'alelacak-1000@yopmail.com', 'vD732NaFVGdKQv1hvFZT', 1),
    (9, 'Іванна', 'Покровська', '20-09-2001', 'female', 3, 'uvammyzepe-6974@yopmail.com', 'T75mBYoQ8jMvvBCE4hC5', -1),
    (10, 'Надія', 'Горохова', '16-12-1975', 'female', 4, 'uzeteretto-4871@yopmail.com', 'Pw1WY82LBoLUM38qJbV6', 0),
    (11, 'Анастасія', 'Дячок', '22-06-2001', 'female', 17, 'umeffeve-4334@yopmail.com', '1ZWQoAn301925RKXtd6V', -1),
    (12, 'Олена', 'Хилько', '20-01-1998', 'female', 21, 'ypewavoss-0309@yopmail.com', '7m7bxDyhzbV4cFbit2M5', -1),
    (13, 'Костянитин', 'Храпок', '21-07-1977', 'male', 9, 'cumummecer-1438@yopmail.com', 'eKE4KGdHZyZYGw2rwTWL', -1),
    (14, 'Даниїл', 'Махновський', '18-08-1971', 'male', 4, 'midemufuq-9242@yopmail.com', 'jVmp3ahgfAMAqowmM0uW', 0),
    (15, 'Артур', 'Барабаш', '30-03-1979', 'male', 24, 'vapiddurre-1018@yopmail.com', 'KBH7RzjQmvzsd1rNTTPT', 1),
    (16, 'Аліна', 'Марченко', '06-01-1989', 'female', 20, 'lossizagywa-7500@yopmail.com', 'xq2CQuoKjhA7kFB19JBU', 1),
    (17, 'Віктор', 'Капронов', '05-03-1989', 'male', 3, 'ettenyppe-4319@yopmail.com', 'p6RAtRkoht7QC69L9VFk', 1),
    (18, 'Христина', 'Головенко', '15-11-1971', 'female', 9, 'hupufedyg-6934@yopmail.com', 'yR79tJaUAXsTefCHAGFi', 0),
    (19, 'Анатолій', 'Пірхорович', '16-05-1981', 'male', 5, 'afysitehe-0773@yopmail.com', 'ruqUFemET5gZEWrVBKAN', -1),
    (20, 'Анна', 'Притула', '25-11-1993', 'female', 11, 'adysemi-7755@yopmail.com', '3gKqtcd0WbzZTaAQANtQ', -1),
    (21, 'Іван', 'Зеленський', '23-04-1975', 'male', 23, 'esseriqixy-5680@yopmail.com', 'L61vUv3Q65oZWDboZuw2', -1),
    (22, 'Кирило', 'Родичев', '10-06-1976', 'male', 1, 'epazanno-2383@yopmail.com', 'sRyMgjRLFTcBLWWrsGB0', 1),
    (23, 'Олександр', 'Кліпенко', '01-01-1967', 'male', 7, 'lowazoduha-5849@yopmail.com', 'A76kqWv3wyLjg7Nty3eu', 1),
    (24, 'Дмитро', 'Красивий', '31-05-1993', 'male', 11, 'qevattaza-6678@yopmail.com', 'R3ug3twRLMwBQTtAz9Gr', 0),
    (25, 'Елизавета', 'Похила', '02-01-1985', 'female', 11, 'zecoletteso-5673@yopmail.com', 'js3WkZeGxVyatEodoyUg', 0),
    (26, 'Марія', 'Давидова', '27-03-1971', 'female', 1, 'ypakuddeb-2476@yopmail.com', 'ZhgMeTjrVdt0urERVKez', 0),
    (27, 'Ірина', 'Ковбаса', '14-09-2000', 'female', 16, 'afudozess-2474@yopmail.com', 'ihhDy6A9wpshJqta5AuU', -1),
    (28, 'Єгор', 'Копотюк', '03-09-1990', 'male', 15, 'igettonnappu-2909@yopmail.com', 'LsE3VfAfDLBHb7PhJTWZ', 0),
    (29, 'Василь', 'Кайдаш', '02-12-1983', 'male', 12, 'apejotu-7811@yopmail.com', '0F3qeenorUCR0zpuRWXh', 0),
    (30, 'Тетяна', 'Киричук', '24-07-1978', 'female', 6, 'vasarrebo-1836@yopmail.com', 'r1j3MpzFHPVNWDy92vwZ', -1),
    (31, 'Валентина', 'Гулак', '17-04-1984', 'female', 14, 'sussennyqime-3451@yopmail.com', 'MHuba8muzsuFcQW9eCVJ', -1),
    (32, 'Людмила', 'Ткаченко', '05-01-1986', 'female', 24, 'nofijugo-0738@yopmail.com', 'ADYZ8jHA0D6eBNwk76Ud', -1),
    (33, 'Марк', 'Москаленко', '05-10-1967', 'male', 18, 'qattyvyttubu-8651@yopmail.com', 'heeqi24W4KBd42JYPe7N', -1),
    (34, 'Михайло', 'Вихорь', '07-04-1978', 'male', 22, 'feppehassyss-6048@yopmail.com', 'By0wujvLPCgMhpuQchtb', -1),
    (35, 'Марина', 'Оніпко', '11-06-1992', 'female', 3, 'fokyllehis-6613@yopmail.com', 'XJt9vC20B8hoexqNzX0o', -1),


