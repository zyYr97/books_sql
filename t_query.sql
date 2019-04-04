SELECT name, last_name, COUNT(t2.author_id) cnt FROM author t1
INNER JOIN j_book_author t2 ON t1.id = t2.author_id
GROUP BY t2.author_id
ORDER BY cnt DESC
LIMIT 0,1