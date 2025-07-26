-- HARD LEVEL (Nested queries, conditional logic, derived columns)

-- Show top 3 most borrowed books

SELECT 
    b.title,
    COUNT(br.record_id) AS times_borrowed
FROM borrow_records br
JOIN books b ON br.book_id = b.book_id
GROUP BY b.book_id
ORDER BY times_borrowed DESC
LIMIT 3;

-- Show available copies of each book (total - borrowed)

SELECT 
    b.title,
    b.total_copies,
    COUNT(br.record_id) AS borrowed_count,
    (b.total_copies - COUNT(br.record_id)) AS available_copies
FROM books b
LEFT JOIN borrow_records br ON b.book_id = br.book_id AND br.status = 'borrowed'
GROUP BY b.book_id;

-- Find students who borrowed books in both June and July

SELECT s.name
FROM students s
JOIN borrow_records br ON s.student_id = br.student_id
WHERE MONTH(br.borrow_date) IN (6, 7)
GROUP BY s.student_id
HAVING COUNT(DISTINCT MONTH(br.borrow_date)) = 2;

-- Show books that have never been borrowed

SELECT b.title
FROM books b
LEFT JOIN borrow_records br ON b.book_id = br.book_id
WHERE br.record_id IS NULL;

-- List the student(s) who borrowed the most books

SELECT s.name, COUNT(*) AS total
FROM borrow_records br
JOIN students s ON br.student_id = s.student_id
GROUP BY s.student_id
ORDER BY total DESC
LIMIT 1;
