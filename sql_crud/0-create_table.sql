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
