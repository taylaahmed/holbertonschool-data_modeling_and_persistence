CREATE TABLE books (
    id int PRIMARY KEY,
    title varchar(255) NOT NULL,
    author varchar(255) NOT NULL,
    genre varchar(255) NOT NULL,
    price REAL NOT NULL,
    stock int NOT NULL,
    published_year int NOT NULL
);