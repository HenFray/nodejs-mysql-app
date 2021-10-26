CREATE DATABASE database_links;

USE database_links;

--USERS TABLE
CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
    
);

ALTER TABLE users
    ADD primary key(id);

ALTER TABLE users
    MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

DESCRIBE users;

--LINKS TABLES
CREATE TABLE links(
    id int(11) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(255) NOT NULL,
    desc TEXT,
    user_id int(11),
    create_at timestamp not NULL default current_timestamp,
    CONSTRAINT fk_user foreign key(user_id) references users(id)
)