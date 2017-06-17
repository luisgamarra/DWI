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
  photo Varchar(40),
  PRIMARY KEY (place_id)  
);

CREATE TABLE comments (
  comment_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  description Varchar(200),
  user_id INT(11) unsigned,
  PRIMARY KEY (comment_id),
  CONSTRAINT comments_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

CREATE TABLE photos (
  photo_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  photo_name Varchar(100),
  PRIMARY KEY (photo_id)  
);

CREATE TABLE videos (
  video_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  video_name Varchar(100),
  PRIMARY KEY (video_id)
  );


CREATE TABLE stories (
  story_id INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
  story_name Varchar(100),
  description Varchar(200),
  story_date date,
  user_id INT(11) unsigned,
  place_id INT(11) unsigned,
  photo_id INT(11) unsigned,
  video_id INT(11) unsigned,
  comment_id INT(11) unsigned,
  PRIMARY KEY (story_id),
  CONSTRAINT stories_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT stories_places_place_id FOREIGN KEY (place_id) REFERENCES places(place_id),
  CONSTRAINT stories_comments_comment_id FOREIGN KEY (comment_id) REFERENCES comments(comment_id), 
  CONSTRAINT stories_photos_photo_id FOREIGN KEY (photo_id) REFERENCES photos(photo_id), 
  CONSTRAINT stories_videos_video_id FOREIGN KEY (video_id) REFERENCES videos(video_id) 
);



