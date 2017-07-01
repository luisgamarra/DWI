DROP SCHEMA

IF EXISTS BDadventure;
	CREATE SCHEMA BDadventure COLLATE = utf8_general_ci;

USE BDadventure;

/* *************************************************************** 
***************************CREATING TABLES************************
**************************************************************** */

CREATE TABLE accounts (
  account_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  account_type Varchar(50),
  account_name Varchar(50), 
  PRIMARY KEY (account_id)
);

CREATE TABLE users (
  user_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  user_name Varchar(40),
  user_lastname Varchar(40),
  user_pass Varchar(40),
  phone INT(9),
  email Varchar(40),
  photo Varchar(40),
  account_id INT(11) unsigned,
  PRIMARY KEY (user_id) , 
  CONSTRAINT users_accounts_account_id FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

CREATE TABLE places (
  place_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  place_name Varchar(40),
  description Varchar(200),
  department Varchar(100),
  image_url Varchar(40),
  PRIMARY KEY (place_id)  
);

CREATE TABLE comments (
  comment_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  description Varchar(200),
  create_at date,
  user_id INT(11) unsigned,
  PRIMARY KEY (comment_id),
  CONSTRAINT comments_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

CREATE TABLE media_contents (
  media_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  media_name Varchar(100),
  url varchar(100),
  PRIMARY KEY (media_id)  
);


CREATE TABLE stories (
  story_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  story_name Varchar(100),
  description Varchar(200),
  story_date date,
  user_id INT(11) unsigned,
  place_id INT(11) unsigned,
  media_id INT(11) unsigned,
  comment_id INT(11) unsigned,
  PRIMARY KEY (story_id),
  CONSTRAINT stories_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT stories_places_place_id FOREIGN KEY (place_id) REFERENCES places(place_id),
  CONSTRAINT stories_comments_comment_id FOREIGN KEY (comment_id) REFERENCES comments(comment_id), 
  CONSTRAINT stories_media_media_id FOREIGN KEY (media_id) REFERENCES media_contents(media_id) 
);



