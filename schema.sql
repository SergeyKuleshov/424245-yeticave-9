CREATE TABLE bet (
  id int(11) NOT NULL,
  date_add timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  current_bet int(128) NOT NULL,
  lot_id int(11) NOT NULL,
  user_current_winner_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE categories (
  id int(11) NOT NULL,
  name varchar(128) NOT NULL,
  char_code varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO categories (id, name, char_code) VALUES
(1, 'Сноуборд', 'Snowboard');

CREATE TABLE lot (
  id int(11) NOT NULL,
  date_create timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name varchar(128) NOT NULL,
  description text NOT NULL,
  start_price int(128) NOT NULL,
  picture_path varchar(128) NOT NULL,
  date_end timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  bet_step int(128) NOT NULL,
  category_id int(11) NOT NULL,
  user_author_id int(11) NOT NULL,
  user_winner_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE users (
  id int(11) NOT NULL,
  date_add timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  email varchar(128) NOT NULL,
  name varchar(128) NOT NULL,
  password varchar(128) NOT NULL,
  avatar_path varchar(128) NOT NULL,
  contact_info varchar(128) NOT NULL,
  created_lot_id int(11) NOT NULL,
  user_bet_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE bet
  ADD PRIMARY KEY (id),
  ADD KEY lot_id (lot_id)

ALTER TABLE categories
  ADD PRIMARY KEY (id);

ALTER TABLE lot
  ADD PRIMARY KEY (id);

ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY email (email),
  ADD UNIQUE KEY name (name);

ALTER TABLE bet
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE categories
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE lot
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE users
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;
