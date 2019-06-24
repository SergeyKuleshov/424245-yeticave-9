--Категории

INSERT INTO categories
SET id = 1, name = 'Доски и лыжи', char_code = 'boards';

INSERT INTO categories
SET id = 2, name = 'Крепления', char_code = 'attachment';

INSERT INTO categories
SET id = 3, name = 'Ботинки', char_code = 'boots';

INSERT INTO categories
SET id = 4, name = 'Одежда', char_code = 'clothing';

INSERT INTO categories
SET id = 5, name = 'Инстументы', char_code = 'tools';

INSERT INTO categories
SET id = 6, name = 'Разное', char_code = 'other';


--Пользователи

INSERT INTO users
SET id = 1, date_add = '27-09-2014 09:14:27', email = hope@mail.ru, name = 'Надежда Кулешова', 
password = 1111111, avatar_path = ????, contact_info = 'пр. Стачек 75';

INSERT INTO users
SET id = 2, date_add = '01-04-2019 11:15:10', email = gm@mail.ru, name = 'Геннадий Ермолаев', 
password = 2222222, avatar_path = ????, contact_info = 'Площадь Ветеранов 11';


--Список объявлений

INSERT INTO lot
SET id = 1, date_create = '12-05-2019 11:15:10', name = '2014 Rossignol District Snowboard', description = 'lorem',
start_price = 10999, picture_path = 'img/lot-1.jpg', date_end = '13-05-2019 11:15:10'; bet_step = 1000, category_id = 1, user_id = 1 ;

INSERT INTO lot
SET id = 2, date_create = '17-05-06-2019 11:15:10', name = 'DC Ply Mens 2016/2017 Snowboard', description = 'lorem',
start_price = 159999, picture_path = 'img/lot-2.jpg', date_end = '20-05-2019 11:15:10'; bet_step = 1000, category_id = 1, user_id = 2;

INSERT INTO lot
SET id = 3, date_create = '25-05-2019 11:15:10', name = 'Крепления Union Contact Pro 2015 года размер L/XL', description = 'lorem',
start_price = 8000, picture_path = 'img/lot-3.jpg', date_end = '27-05-2019 11:15:10'; bet_step = 1000, category_id = 2, user_id = 1;

INSERT INTO lot
SET id = 4, date_create = '30-05-2019 11:15:10', name = 'Ботинки для сноуборда DC Mutiny Charocal', description = 'lorem',
start_price = 10999, picture_path = 'img/lot-4.jpg', date_end = '01-06-2019 11:15:10'; bet_step = 1000, category_id = 3, user_id = 2;

INSERT INTO lot
SET id = 5, date_create = '01-06-2019 11:15:10', name = 'Куртка для сноуборда DC Mutiny Charocal', description = 'lorem',
start_price = 7500, picture_path = 'img/lot-5.jpg', date_end = '02-06-2019 11:15:10'; bet_step = 1000, category_id = 4, user_id = 1;

INSERT INTO lot
SET id = 6, date_create = '01-06-2019 11:15:10', name = 'Маска Oakley Canopy', description = 'lorem',
start_price = 5400, picture_path = 'img/lot-6.jpg', date_end = '03-06-2019 11:15:10'; bet_step = 1000, category_id = 6, user_id = 2;


--Ставки

INSERT INTO bet
SET id = 1, date_add = '12-05-2019 13:15:10', current_bet = 11999, lot_id = 1, user_id = 2;

INSERT INTO bet
SET id = 2, date_add = '12-05-2019 14:35:19', current_bet = 12999, lot_id = 1, user_id = 1;
