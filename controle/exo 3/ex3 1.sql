SELECT firstname, lastname FROM authors;
SELECT * FROM editors WHERE name LIKE '%,%';

SELECT title FROM books WHERE CHAR_LENGTH(title) < 50;