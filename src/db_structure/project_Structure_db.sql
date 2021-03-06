CREATE DATABASE codecamp;
\c codecamp;

CREATE TABLE login(
	_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
	_name VARCHAR(20) NOT NULL,
	_email VARCHAR(100) NOT NULL UNIQUE,
	_passwd VARCHAR(50) NOT NULL,
	_join TEXT NOT NULL 
	);


CREATE TABLE newsletter(
	_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
	_email VARCHAR(100) NOT NULL UNIQUE,
	_join TEXT NOT NULL
	);


CREATE TABLE postings(
	_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
	_title VARCHAR(400) NOT NULL,
	_DOC_BODY TEXT NOT NULL,
	_TAG_1 VARCHAR(50) NOT NULL,
	_TAG_2 VARCHAR(50) NOT NULL,
	_TAG_3 VARCHAR(50) NOT NULL,
	_AUTHOR VARCHAR(20) NOT NULL,
	_LIKES INTEGER NOT NULL DEFAULT 0,
	_DISLIKES INTEGER NOT NULL DEFAULT 0,
	_VIEWS INTEGER NOT NULL DEFAULT 0,
	_join TEXT NOT NULL
	);

CREATE TABLE comments(
	_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
	_identify INTEGER NOT NULL,
	_user VARCHAR(20) NOT NULL,
	_comment VARCHAR(400) NOT NULL,
	_join TEXT NOT NULL
	);


CREATE TABLE comment_private(
	_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	_from TEXT NOT NULL,
	_to_email TEXT NOT NULL,
	_comment TEXT NOT NULL,
	_post_title TEXT NOT NULL,                  
	_post_id TEXT NOT NULL
	);