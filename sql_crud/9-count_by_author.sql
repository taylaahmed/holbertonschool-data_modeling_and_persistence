SELECT author, COUNT(*) AS number_of_books
FROM books
GROUP BY author;