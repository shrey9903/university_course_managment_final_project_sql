# 🎓 University Course Management System

## 📌 Project Overview

This project is a **University Course Management System** developed using **SQL**. It demonstrates database creation, table relationships, data insertion, CRUD operations, joins, aggregate functions, subqueries, and advanced SQL features.

The system manages:

* Students
* Courses
* Instructors
* Enrollments
* Departments

---

## 🗄️ Database Name

**UniversityDB**

---

## 🗂️ Tables Included

### 1. Students

Stores student personal and academic details.

**Fields:**

* StudentID
* FirstName
* LastName
* Email
* BirthDate
* EnrollmentDate

---

### 2. Courses

Stores available university courses.

**Fields:**

* CourseID
* CourseName
* DepartmentID
* Credits

---

### 3. Instructors

Stores instructor details.

**Fields:**

* InstructorID
* FirstName
* LastName
* Email
* DepartmentID
* Salary

---

### 4. Enrollments

Stores which students are enrolled in which courses.

**Fields:**

* EnrollmentID
* StudentID
* CourseID
* EnrollmentDate

---

### 5. Departments

Stores department information.

**Fields:**

* DepartmentID
* DepartmentName

---

## ⚙️ Features Implemented

### 🔹 CRUD Operations

* Insert new records
* Read records
* Update records
* Delete records

---

## 🧠 SQL Concepts Used

* PRIMARY KEY
* FOREIGN KEY
* INNER JOIN
* LEFT JOIN
* GROUP BY
* HAVING
* ORDER BY
* LIMIT
* Aggregate Functions
* Subqueries
* CASE Expression
* Window Functions
* CONCAT
* Date Functions

---

## 📊 Queries Performed

* CRUD operations on all tables
* Students enrolled after 2022
* Courses offered by Mathematics department
* Number of students in each course
* Students enrolled in both SQL and Data Structures
* Students enrolled in either SQL or Data Structures
* Average credits of courses
* Maximum instructor salary in Computer Science
* Number of students in each department
* INNER JOIN students with courses
* LEFT JOIN students with courses
* Subquery for enrolled students
* Extract enrollment year
* Instructor full names
* Running total of enrollments
* Senior / Junior classification

---

## 📈 Additional Data

More than **10 records** were inserted into major tables so that aggregate queries and filtering conditions work correctly.

---

## 🛠️ Tools Used

* MySQL Workbench
* XAMPP

---

## 🎯 Purpose of Project

This project was created to practice **complete SQL database development** and **advanced query writing** for academic submission.

---

## 👨‍💻 Author

**Shrey Patel**
**GR ID: 12376**

---

## 📄 Note

This project is developed for educational purposes and demonstrates real-world database design and querying techniques.
