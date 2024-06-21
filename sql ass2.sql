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

drop table orders
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
