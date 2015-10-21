DROP TABLE IF EXISTS authors, categories, articles;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  image VARCHAR,
  email VARCHAR,
  password VARCHAR,
  created_at TIMESTAMP
 );

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  description TEXT
  );

CREATE TABLE articles (
  id SERIAL PRIMARY KEY,
  author_id INTEGER REFERENCES authors(id),
  headline TEXT,
  body TEXT,
  summary TEXT,
  category_id INTEGER REFERENCES categories(id),
  created_at TIMESTAMP,
  last_updated TIMESTAMP
  );