-- EASY LEVEL (Basic SELECT, WHERE, ORDER BY, JOIN)

-- List all students in alphabetical order

SELECT * FROM students
ORDER BY name;

-- List all books with their total copies

SELECT title, total_copies FROM books;

-- Find all authors who are Indian

SELECT name FROM authors
WHERE nationality = 'Indian';

-- Show all categories available

SELECT * FROM categories;

-- List all borrow records with student name and book title

SELECT 
    br.record_id,
    s.name AS student_name,
    b.title AS book_title
FROM borrow_records br
JOIN students s ON br.student_id = s.student_id
JOIN books b ON br.book_id = b.book_id;
