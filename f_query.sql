SELECT t1.name, t2.name, t2.last_name FROM books t1 
INNER JOIN author t2
INNER JOIN style t3
INNER JOIN j_book_style t4 ON t1.id = t4.book_id AND t3.name = 'фантастика' AND t3.id = t4.style_id
INNER JOIN j_book_author t5 ON t1.id = t5.book_id AND t2.id = t5.author_id