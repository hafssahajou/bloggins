CREATE DATABASE IF NOT EXISTS blog;
USE blog;

CREATE TABLE IF NOT EXISTS role (
  nameRole VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS utilisateur (
  idUser INT(10) AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  nameRole VARCHAR(255) NOT NULL, 
  FOREIGN KEY (nameRole) REFERENCES role(nameRole)
);

CREATE TABLE IF NOT EXISTS article (
  idarticle INT(10) AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(255) NOT NULL,
  content LONGTEXT NOT NULL,
  dateCreated TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS comments (
    comment_id INT PRIMARY KEY,
    idarticle INT,
    commenter_name VARCHAR(100),
    comment_text TEXT,
    comment_date TIMESTAMP,
    FOREIGN KEY (idarticle) REFERENCES article(idarticle)
);

INSERT INTO role VALUES ("admin");
INSERT INTO role VALUES ("author");

INSERT INTO utilisateur (username, email, password, nameRole)
VALUES ("hafssa", "hafssahajou200@gmail.com", "$2y$10$Lg6NL1lzO08isblJ/NEHzuKnMqATylQ008sjwtDUqp7zc0I8l9Dsa", "admin");