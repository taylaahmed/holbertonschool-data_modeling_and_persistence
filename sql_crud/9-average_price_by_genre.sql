SELECT genre, AVG(price) AS number_of_books
FROM books
GROUP BY genre;