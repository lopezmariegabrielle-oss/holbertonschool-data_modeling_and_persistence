CREATE TABLE nom_de_la_table (
    colonne1 TYPE CONTRAINTE,
    colonne2 TYPE CONTRAINTE
);
CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price REAL NOT NULL,
    stock INTEGER NOT NULL,
    published_year INTEGER NOT NULL
);

SELECT * FROM books;

INSERT INTO books (id, title, author, genre, price, stock, published_year)
VALUES (1, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.99, 20, 1937);

INSERT INTO books (id, title, author, genre, price, stock, published_year)
VALUES (2, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', 12.50, 40, 1997);
