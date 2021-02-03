SELECT bookTitle, type, authorLastname, authorFirstname
FROM books
INNER JOIN booktype ON books.id_bookType = booktype.id;
