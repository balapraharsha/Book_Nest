-- INTERMEDIATE LEVEL (JOINs, GROUP BY, aggregates, filtering)

-- Show number of books borrowed by each student

SELECT 
    s.name AS student_name,
    COUNT(br.record_id) AS books_borrowed
FROM borrow_records br
JOIN students s ON br.student_id = s.student_id
GROUP BY s.student_id;

-- Find all books currently borrowed

SELECT b.title
FROM books b
JOIN borrow_records br ON b.book_id = br.book_id
WHERE br.status = 'borrowed';

-- Count how many books are in each category

SELECT 
    c.name AS category,
    COUNT(b.book_id) AS total_books
FROM categories c
JOIN books b ON c.category_id = b.category_id
GROUP BY c.category_id;

-- List students who borrowed more than 1 book

SELECT 
    s.name,
    COUNT(br.record_id) AS borrow_count
FROM borrow_records br
JOIN students s ON br.student_id = s.student_id
GROUP BY s.student_id
HAVING borrow_count > 1;

-- Show books written by 'George Orwell'

SELECT b.title
FROM books b
JOIN authors a ON b.author_id = a.author_id
WHERE a.name = 'George Orwell';
