-----------1

create table empt( eid int , ename varchar(50), did int, hdate date );
insert into empt values(1 , 'lav',11, '1-1-12');
insert into empt values(2 , 'pran',22, '2-1-12');
insert into empt values(3, 'varh',33, '3-1-12');
insert into empt values(4, 'mani',44, '4-1-12');
insert into empt values(5, 'viv',55, '5-1-12');
insert into empt values(6, 'bass',33, '6-1-12');
select * from empt;
create table dt(did int , dname varchar(60));
insert into dt values(11,'hr');
insert into dt values(22,'se');
insert into dt values(33,'se');
insert into dt values(44,'se');
insert into dt values(55,'se');
insert into dt values(66,'se');
select * from dt;
CREATE TABLE sal 
  
  
 (eid INT ,
  sam DECIMAL(10,2) NOT NULL,
  sdate DATE NOT NULL,
);
INSERT INTO sal 
VALUES (1, 80000.00, '2012-06-15'), 
(1, 75000.00, '2012-03-01'),
(2, 90000.00, '2012-04-20'), 
(3, 100000.00, '2012-06-01'),
(4, 80000.00, '2012-06-15'), 
(4, 75000.00, '2012-03-01'),
(6, 90000.00, '2012-04-20'), 
(5, 100000.00, '2012-12-01'),
(3, 80000.00, '2012-03-15'), 
(5, 75000.00, '2012-03-01'),
(2, 90000.00, '2012-04-20'), 
(6, 100000.00, '2024-06-01');
select * from sal;
SELECT e.ename, d.dname, MAX(s.sam) AS latest_salary
FROM empt e
INNER JOIN dt d ON e.did = d.did
INNER JOIN sal s ON e.eid = s.eid
GROUP BY e.eid, e.ename, d.dname;

-------------------------------------------------------------------------------------------------------------------


--------3

    CREATE TABLE authors (
    a_id INT ,
    a_name VARCHAR(100),
    a_country VARCHAR(100));
	INSERT INTO authors VALUES
    (1, 'JA', 'UK'),
    (2, 'MT', 'US'),
    (3, 'LT', 'Russia');


    CREATE TABLE books (
    Bk_id INT ,
    bk_title VARCHAR(100),
    a_id INT,
    p_date DATE);
	INSERT INTO books (bk_id, Bk_title, a_id, p_date)
VALUES
    (11, 'Pride and Prejudice', 1, '1813-01-28'),
    (12, 'Emma', 1, '1815-12-23'),
    (13, 'The Adventures of Tom Sawyer', 2, '1876-01-01'),
    (14, 'War and Peace', 3, '1869-01-01');

    CREATE TABLE brs (
    b_id INT ,
    bk_id INT,
    b_name VARCHAR(100),
    bo_date DATE,
    r_date DATE);
	INSERT INTO brs values(21, 11, 'Alice Brown', '2023-05-15', '2023-06-10'),
    (22, 12, 'John Smith', '2024-01-20', NULL),
    (23, 13, 'Emily Davis', '2023-12-10', '2024-01-05'),
    (24, 14, 'Michael Johnson', '2024-03-01', '2024-04-20'),
    (25, 11, 'Sophia Miller', '2024-05-10', NULL);

	select * from authors;
	select * from books;
	select * from brs;
	SELECT 
    b.bk_title,
    a.a_name,
    a.a_country,
    bo.b_name,
    bo.bo_date,
    bo.r_date
FROM 
    books b
    JOIN authors a ON b.a_id = a.a_id
    JOIN brs bo ON b.bk_id = bo.bk_id;
	
-------------------------------------------------------------------------
-------2

CREATE TABLE pd ( p_id int , p_name varchar(30), c_id int, price int); 
insert into pd values (1 , 'mucnch' , 11 , 10)
insert into pd values (2, 'dm' , 11 , 10)
insert into pd values (3, 'gallexy' , 11 , 10)
insert into pd values (4 , 'apple' , 12 , 10)
insert into pd values (5 , 'mango' , 12 , 10);
CREATE TABLE cat(c_id int, c_name varchar(30));
insert into cat values (11, 'chochos')
insert into cat values (12, 'fruits');
create table orders(o_id int, p_id int, quantity int, order_date date);
insert into orders values(111, 1, 122,' 2024-05-12')
insert into orders values(122, 2, 12,'2024-05-13')
insert into orders values(133, 3, 133,'2024-05-14');

select * from cat;

 SELECT c.c_id, SUM(p.price * o.quantity) AS total
FROM cat c
INNER JOIN pd p ON c.c_id = p.c_id
INNER JOIN orders o ON p.p_id = o.p_id
WHERE o.order_date <= '2024-6-2'
GROUP BY c.c_id;

-------------------------------------------------------------------------------------------
---------------------------4
	

create table students( student_id int, student_name varchar(30), student_major varchar(30));

create table courses( course_id int, course_name varchar(30), course_department varchar(30));

create table enrollments( enrollment_id int, student_id int, course_id int, enrollment_date date);

create table grades ( grade_id int, enrollment_id int, grade_value int);
 
 
INSERT INTO students (student_id, student_name, student_major)

VALUES (1221, 'keyaa', 'cse'),

       (1222, 'srinivas', 'Math'),

       (1223, 'purendar', 'History'),

       (1224, 'bruce lee', 'Engineering'),

       (1225, 'Ema Watson', 'Biology');
 
 
INSERT INTO courses (course_id, course_name, course_department)

VALUES (101, 'ajile', 'cse'),

       (102, 'statistics', 'Math'),

       (103, 'history of madgascar', 'History'),

       (104, 'Mechanics', 'Engineering'),

       (105, 'human anotomy', 'Biology');
 
INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date)

VALUES (1, 1221, 101, '2003-06-21'),

       (2, 1222, 102, '2003-06-21'),

       (3, 1223, 103, '2003-06-21'),

       (4, 1224, 104, '2003-06-21'),

       (5, 1224, 104, '2003-06-20');
 
INSERT INTO grades (grade_id, enrollment_id, grade_value)

VALUES (5, 5, 85),


------------------------------------------------------------------------------------------------------------------------------------------
----------------------5
	

create table students( student_id int, student_name varchar(30), student_major varchar(30));

create table courses( course_id int, course_name varchar(30), course_department varchar(30));

create table enrollments( enrollment_id int, student_id int, course_id int, enrollment_date date);

create table grades ( grade_id int, enrollment_id int, grade_value int);
 
 
INSERT INTO students (student_id, student_name, student_major)

VALUES (1221, 'keyaa', 'cse'),

       (1222, 'srinivas', 'Math'),

       (1223, 'purendar', 'History'),

       (1224, 'bruce lee', 'Engineering'),

       (1225, 'Ema Watson', 'Biology');
 
 
INSERT INTO courses (course_id, course_name, course_department)

VALUES (101, 'ajile', 'cse'),

       (102, 'statistics', 'Math'),

       (103, 'history of madgascar', 'History'),

       (104, 'Mechanics', 'Engineering'),

       (105, 'human anotomy', 'Biology');
 
INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date)

VALUES (1, 1221, 101, '2003-06-21'),

       (2, 1222, 102, '2003-06-21'),

       (3, 1223, 103, '2003-06-21'),

       (4, 1224, 104, '2003-06-21'),

       (5, 1224, 104, '2003-06-20');
 
INSERT INTO grades (grade_id, enrollment_id, grade_value)

VALUES (5, 5, 85),

       (2, 2, 90),

       (3, 3, 78),

       (4, 4, 82);

SELECT c.course_name, AVG(g.grade_value) AS average_grade

FROM courses c

INNER JOIN enrollments e ON c.course_id = e.course_id

INNER JOIN grades g ON e.enrollment_id = g.enrollment_id

GROUP BY c.course_name;


CREATE TABLE customers (

  customer_id INT PRIMARY KEY,

  customer_name VARCHAR(255) NOT NULL,

  customer_country VARCHAR(255) NOT NULL

);
 
CREATE TABLE product (

  product_id INT PRIMARY KEY,

  product_name VARCHAR(255) NOT NULL,

  product_price DECIMAL(10,2) NOT NULL

);
 
CREATE TABLE orderss (

  order_id INT PRIMARY KEY,

  customer_id INT NOT NULL,

  product_id INT NOT NULL,

  order_date DATE NOT NULL,

  order_quantity INT NOT NULL,

  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),

  FOREIGN KEY (product_id) REFERENCES product(product_id)

);
 
-- Insert data with manual customer and product IDs (assuming unique IDs)

INSERT INTO customers (customer_id, customer_name, customer_country)

VALUES (1001, 'John Doe', 'USA'),

       (1002, 'Jane Smith', 'Canada'),

       (1003, 'Li Wang', 'China'),

       (1004, 'Maria Garcia', 'Mexico'),

       (1005, 'Peter Schmidt', 'Germany'),

       (1006, 'Aisha Khan', 'India'),

       (1007, 'Dimitri Petrov', 'Russia'),

       (1008, 'Kim Min-soo', 'South Korea'),

       (1009, 'David Hernandez', 'Spain'),

       (1010, 'Omar Hassan', 'Egypt');
 
INSERT INTO product (product_id, product_name, product_price)

VALUES (2001, 'Laptop', 899.99),

       (2002, 'Smartphone', 499.99),

       (2003, 'Headphones', 79.99),

       (2004, 'Shirt', 24.99),

       (2005, 'Shoes', 99.99);
 
INSERT INTO orderss (order_id, customer_id, product_id, order_date, order_quantity)

VALUES (3001, 1001, 2001, '2024-06-01', 1),

       (3002, 1001, 2003, '2024-06-10', 2),

       (3003, 1002, 2002, '2024-06-05', 1),

       (3004, 1003, 2004, '2024-06-15', 3),

       (3005, 1004, 2005, '2024-06-20', 2),

       (3006, 1005, 2001, '2024-06-12', 1),

       (3007, 1006, 2003, '2024-06-22', 1),

       (3008, 1007, 2002, '2024-06-18', 1),

       (3009, 1008, 2004, '2024-06-23', 2),

       (3010, 1009, 2005, '2024-06-24', 1);
 
 
SELECT c.customer_country, SUM(o.order_quantity * p.product_price) AS total_revenue

FROM customers c

INNER JOIN orderss o ON c.customer_id = o.customer_id

INNER JOIN product p ON o.product_id = p.product_id

GROUP BY c.customer_country;


       (2, 2, 90),

       (3, 3, 78),

       (4, 4, 82);

SELECT c.course_name, AVG(g.grade_value) AS average_grade

FROM courses c

INNER JOIN enrollments e ON c.course_id = e.course_id

INNER JOIN grades g ON e.enrollment_id = g.enrollment_id

GROUP BY c.course_name;

