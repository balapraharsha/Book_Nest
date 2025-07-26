-- Insert into student table
INSERT INTO students (student_id, name, email, department, join_date) VALUES
(1, 'Aarav Mehta', 'aarav@example.com', 'Computer Science', '2023-01-15'),
(2, 'Sara Khan', 'sara@example.com', 'Mechanical Engineering', '2022-09-01'),
(3, 'John Paul', 'john@example.com', 'Physics', '2023-06-10'),
(4, 'Priya Reddy', 'priya@example.com', 'Mathematics', '2021-08-20'),
(5, 'Rohan Das', 'rohan@example.com', 'Biotech', '2024-02-11'),
(6, 'Sneha Kapoor', 'sneha@example.com', 'ECE', '2022-11-23'),
(7, 'Kunal Verma', 'kunal@example.com', 'CSE', '2022-07-01'),
(8, 'Ishita Roy', 'ishita@example.com', 'Statistics', '2023-03-30'),
(9, 'Abhay Singh', 'abhay@example.com', 'EEE', '2024-01-14'),
(10, 'Tanvi Nair', 'tanvi@example.com', 'IT', '2023-12-09'),
(11, 'Dev Mishra', 'dev@example.com', 'Physics', '2023-08-18'),
(12, 'Zoya Akhtar', 'zoya@example.com', 'CSE', '2023-10-05'),
(13, 'Raj Patel', 'raj@example.com', 'Mathematics', '2022-06-12'),
(14, 'Neha Sharma', 'neha@example.com', 'Biotech', '2023-09-21'),
(15, 'Yash Jain', 'yash@example.com', 'CSE', '2023-04-14'),
(16, 'Simran Kaur', 'simran@example.com', 'Physics', '2021-12-01'),
(17, 'Aditya Rao', 'aditya@example.com', 'Mechanical', '2022-01-17'),
(18, 'Pooja Iyer', 'pooja@example.com', 'IT', '2023-07-22'),
(19, 'Manav Gill', 'manav@example.com', 'ECE', '2023-05-27'),
(20, 'Ritika Bose', 'ritika@example.com', 'Biotech', '2022-10-04');


-- Insert into Authors table
INSERT INTO authors (author_id, name, nationality) VALUES
(1, 'J.K. Rowling', 'British'),
(2, 'Dan Brown', 'American'),
(3, 'George Orwell', 'British'),
(4, 'Yuval Noah Harari', 'Israeli'),
(5, 'Chetan Bhagat', 'Indian'),
(6, 'Agatha Christie', 'British'),
(7, 'Paulo Coelho', 'Brazilian'),
(8, 'Mark Manson', 'American'),
(9, 'Sally Rooney', 'Irish'),
(10, 'Stephen King', 'American'),
(11, 'Khaled Hosseini', 'Afghan'),
(12, 'Amish Tripathi', 'Indian'),
(13, 'Malcolm Gladwell', 'Canadian'),
(14, 'Michelle Obama', 'American'),
(15, 'Napoleon Hill', 'American'),
(16, 'Robin Sharma', 'Canadian'),
(17, 'John Green', 'American'),
(18, 'Suzanne Collins', 'American'),
(19, 'Chimamanda Adichie', 'Nigerian'),
(20, 'Ruskin Bond', 'Indian');


-- Insert into categories table
INSERT INTO categories (category_id, name) VALUES
(1, 'Fiction'),
(2, 'Science'),
(3, 'History'),
(4, 'Philosophy'),
(5, 'Biography'),
(6, 'Mystery'),
(7, 'Romance'),
(8, 'Fantasy'),
(9, 'Thriller'),
(10, 'Self-help'),
(11, 'Psychology'),
(12, 'Memoir'),
(13, 'Adventure'),
(14, 'Politics'),
(15, 'Religion'),
(16, 'Technology'),
(17, 'Children'),
(18, 'Classics'),
(19, 'Health'),
(20, 'Education');


-- Insert into books table
INSERT INTO books (book_id, title, author_id, category_id, total_copies) VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 1, 8, 5),
(2, 'The Da Vinci Code', 2, 9, 3),
(3, '1984', 3, 1, 4),
(4, 'Sapiens', 4, 3, 2),
(5, 'Half Girlfriend', 5, 7, 6),
(6, 'Murder on the Orient Express', 6, 6, 4),
(7, 'The Alchemist', 7, 8, 5),
(8, 'The Subtle Art of Not Giving a F*ck', 8, 10, 6),
(9, 'Normal People', 9, 7, 4),
(10, 'It', 10, 9, 3),
(11, 'The Kite Runner', 11, 1, 5),
(12, 'The Immortals of Meluha', 12, 8, 3),
(13, 'Outliers', 13, 11, 2),
(14, 'Becoming', 14, 5, 4),
(15, 'Think and Grow Rich', 15, 10, 6),
(16, 'The Monk Who Sold His Ferrari', 16, 10, 3),
(17, 'Looking for Alaska', 17, 7, 4),
(18, 'The Hunger Games', 18, 8, 4),
(19, 'Americanah', 19, 1, 2),
(20, 'The Blue Umbrella', 20, 17, 3);


-- Insert into borrow_records table
INSERT INTO borrow_records (record_id, student_id, book_id, borrow_date, return_date, status) VALUES
(1, 1, 1, '2024-06-01', '2024-06-15', 'returned'),
(2, 2, 2, '2024-07-01', NULL, 'borrowed'),
(3, 3, 3, '2024-07-10', '2024-07-20', 'returned'),
(4, 4, 4, '2024-07-15', NULL, 'borrowed'),
(5, 5, 5, '2024-07-20', NULL, 'lost'),
(6, 6, 6, '2024-07-18', '2024-07-25', 'returned'),
(7, 7, 7, '2024-07-19', NULL, 'borrowed'),
(8, 8, 8, '2024-07-10', '2024-07-22', 'returned'),
(9, 9, 9, '2024-07-11', NULL, 'borrowed'),
(10, 10, 10, '2024-07-09', NULL, 'borrowed'),
(11, 11, 11, '2024-07-03', '2024-07-13', 'returned'),
(12, 12, 12, '2024-07-05', NULL, 'borrowed'),
(13, 13, 13, '2024-07-01', '2024-07-11', 'returned'),
(14, 14, 14, '2024-07-02', '2024-07-10', 'returned'),
(15, 15, 15, '2024-07-04', NULL, 'borrowed'),
(16, 16, 16, '2024-07-06', '2024-07-20', 'returned'),
(17, 17, 17, '2024-07-08', NULL, 'borrowed'),
(18, 18, 18, '2024-07-12', NULL, 'borrowed'),
(19, 19, 19, '2024-07-14', NULL, 'borrowed'),
(20, 20, 20, '2024-07-13', '2024-07-22', 'returned');

