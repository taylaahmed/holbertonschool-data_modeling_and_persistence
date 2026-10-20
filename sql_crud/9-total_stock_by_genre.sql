SELECT genre, SUM(stock) AS number_of_books
FROM books
GROUP BY genre;