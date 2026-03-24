create database finalproject;

use finalproject;

-- 1. Create students Table
create table students(
student_id int primary key not null,
first_name varchar(30),
last_name varchar(30),
email varchar(30),
birth_date date,
enrollment_date date
);

-- insert students 
INSERT INTO students (student_id, first_name, last_name, email, birth_date, enrollment_date) VALUES
(1, 'Amit', 'Sharma', 'amit.sharma@gmail.com', '2002-05-14', '2021-07-01'),
(2, 'Priya', 'Patel', 'priya.patel@gmail.com', '2001-08-22', '2020-07-01'),
(3, 'Rahul', 'Verma', 'rahul.verma@gmail.com', '2003-01-10', '2022-07-01'),
(4, 'Sneha', 'Reddy', 'sneha.reddy@gmail.com', '2002-11-30', '2021-07-01'),
(5, 'Karan', 'Mehta', 'karan.mehta@gmail.com', '2000-06-18', '2019-07-01'),
(6, 'Neha', 'Singh', 'neha.singh@gmail.com', '2001-03-25', '2020-07-01'),
(7, 'Arjun', 'Nair', 'arjun.nair@gmail.com', '2002-09-12', '2021-07-01'),
(8, 'Pooja', 'Gupta', 'pooja.gupta@gmail.com', '2003-04-05', '2022-07-01'),
(9, 'Vikram', 'Joshi', 'vikram.joshi@gmail.com', '2000-12-20', '2019-07-01'),
(10, 'Anjali', 'Desai', 'anjali.desai@gmail.com', '2001-07-07', '2020-07-01');

select * from students;

-- Create courses Table
create table courses(
course_id int primary key not null,
course_name varchar(30),
department_id int,
credits int,
foreign key (department_id) references departments(department_id)
);

--  insert courses 
INSERT INTO courses (course_id, course_name, department_id, credits) VALUES
(101, 'Data Structures', 1, 4),
(102, 'Thermodynamics', 2, 3),
(103, 'Circuit Analysis', 3, 4),
(104, 'Structural Engineering', 4, 3),
(105, 'Database Systems', 5, 4),
(106, 'Digital Electronics', 6, 3),
(107, 'Genetics', 7, 4),
(108, 'Organic Chemistry', 8, 3),
(109, 'Linear Algebra', 9, 4),
(110, 'Quantum Mechanics', 10, 4);

select * from courses;

-- Create instructors Table
create table instructors(
instructor_id int primary key not null,
first_name varchar(30),
last_name varchar(30),
email varchar(30),
department_id int,
foreign key (department_id) references departments(department_id)
);

-- insert instructors 
INSERT INTO instructors (instructor_id, first_name, last_name, email, department_id) VALUES
(1, 'Rajesh', 'Kumar', 'rajesh.kumar@gmail.com', 1),
(2, 'Anita', 'Shah', 'anita.shah@gmail.com', 2),
(3, 'Vivek', 'Iyer', 'vivek.iyer@gmail.com', 3),
(4, 'Sunita', 'Patel', 'sunita.patel@gmail.com', 4),
(5, 'Rohit', 'Gupta', 'rohit.gupta@gmail.com', 5),
(6, 'Meena', 'Nair', 'meena.nair@gmail.com', 6),
(7, 'Suresh', 'Reddy', 'suresh.reddy@gmail.com', 7),
(8, 'Kavita', 'Joshi', 'kavita.joshi@gmail.com', 8),
(9, 'Manish', 'Verma', 'manish.verma@gmail.com', 9),
(10, 'Pooja', 'Desai', 'pooja.desai@gmail.com', 10);

select * from instructors;

-- Create enrollments Table
create table enrollments(
enrolment_id int primary key not null,
student_id int,
course_id int,
enrollment_date date,
foreign key (student_id) references students(student_id),
foreign key(course_id) references courses(course_id)
);

-- insert enrollments
INSERT INTO enrollments (enrolment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 101, '2023-07-01'),
(2, 2, 102, '2023-07-02'),
(3, 3, 103, '2023-07-03'),
(4, 4, 104, '2023-07-04'),
(5, 5, 105, '2023-07-05'),
(6, 6, 106, '2023-07-06'),
(7, 7, 107, '2023-07-07'),
(8, 8, 108, '2023-07-08'),
(9, 9, 109, '2023-07-09'),
(10, 10, 110, '2023-07-10');

select * from enrollments;

-- Create departments Table
create table departments(
department_id int primary key not null,
department_name varchar(30) unique
);

-- insert departments 
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electrical'),
(4, 'Civil'),
(5, 'Information Technology'),
(6, 'Electronics'),
(7, 'Biotechnology'),
(8, 'Chemical'),
(9, 'Mathematics'),
(10, 'Physics');

select * from departments;

-- 1. perform crud operations on all tables <--- <--- <---

insert INTO students values (11,'Mia','Thomas','mia@email.com','2003-01-01','2024-01-01');

select * from students;

update students set email="john.doe@gmail.com" where student_id=1;

delete from students where student_id=11;


-- 2. retrieve students who enrolled after 2022 <--- <--- <---
select * from students where year(enrollment_date)>2022;

-- 3. retrieve courses offered by the mathematics department with a limit of 5 courses
select * from courses where department_id=9 limit 5;

-- 4. get the number of students enrolled in each course, filtering for courses with more than 5 students <--- <--- <---
select course_id, count(student_id) as total_student from enrollments group by course_id having count(student_id) > 5;

-- 5. find students who are enrolled in both introduction to sql and data structures
select student_id from enrollments where course_id=101 INTERSECT select student_id from enrollments where ourse_id=102;

-- 6. Find students who are either enrolled in Introduction to SQL or Data Structures.
select distinct student_id from enrollments where course_id in (101,102);

-- 7. Calculate the average number of credits for all courses.
select avg(credits) as average_cre from courses;

-- 8. Find the maximum salary of instructors in the Computer Science department.
-- salary column not in the columns

-- 9. Count the number of students enrolled in each department.
select d.department_name, count(distinct e.student_id) as total_students from departments d 
join courses c on d.department_id = c.department_id 
join enrollments e on c.course_id = e.course_id 
group by d.department_name;

-- 10. INNER JOIN: Retrieve students and their corresponding courses.
SELECT s.first_name, s.last_name, c.course_name FROM students s
INNER JOIN enrollments e ON s.student_id=e.student_id
INNER JOIN courses c ON e.course_id=c.course_id;

-- 11. LEFT JOIN: Retrieve all students and their corresponding courses, if any.
SELECT s.first_name, c.course_name FROM students s
LEFT JOIN enrollments e ON s.student_id=e.student_id
LEFT JOIN courses c ON e.course_id=c.course_id;

-- 12. Subquery: Find students enrolled in courses that have more than 10 students.
SELECT * FROM students WHERE student_id IN (SELECT student_id FROM enrollments GROUP BY course_id, student_id having COUNT(*) > 0);

-- 13. Extract the year from the EnrollmentDate of students.
select student_id, year(enrollment_date) AS EnrollmentYear FROM students;


-- 14. Concatenate the instructor's first and last name.
select concat(first_name,' ',last_name) AS FullName FROM instructors;

-- 15. Calculate the running total of students enrolled in courses.
SELECT enrolment_id,count(student_id) over (ORDER BY enrolment_id) AS RunningTotal from enrollments;

-- 16. Label students as 'Senior' or 'Junior' based on their year of enrollment.
select student_id, first_name, last_name, enrollment_date,
case 
when enrollment_date < current_date - interval 4 year then 'sr' 
else 'jr' 
end as student_status 
from students;