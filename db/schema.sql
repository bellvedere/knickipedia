DROP DATABASE IF EXISTS knickipedia;
CREATE DATABASE knickipedia;
\c knickipedia;

CREATE TABLE users (
  id        SERIAL   PRIMARY KEY,
  fname     VARCHAR  NOT NULL,
  lname     VARCHAR  NOT NULL,
  email     VARCHAR  NOT NULL,
  password  VARCHAR  NOT NULL,
  bio       VARCHAR,
  picture   VARCHAR
);

CREATE TABLE categories (
  id   SERIAL  PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE articles (
  id          SERIAL    PRIMARY KEY,
  name        VARCHAR   NOT NULL,
  content     TEXT      NOT NULL,
  created_at  TIMESTAMP NOT NULL,
  edited_on   TIMESTAMP NOT NULL,
  picture     VARCHAR,
  site        VARCHAR,
  category_id INTEGER   REFERENCES categories(id),
  created_by  INTEGER   REFERENCES users(id),
  updated_by  INTEGER   REFERENCES users(id)
);
