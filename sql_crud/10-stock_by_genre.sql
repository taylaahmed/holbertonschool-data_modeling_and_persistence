SELECT genre, SUM(stock) As number_of_booksbooks
FROM books
GROUP BY genre