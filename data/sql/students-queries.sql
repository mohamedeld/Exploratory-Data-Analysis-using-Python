-- Our First Query: SELECT Statement

/* selecting the column 'first_name' from students table */
SELECT first_name
FROM students

/* selecting the columns 'first_name' and 'last_name' from students table */
SELECT first_name, last_name
FROM students

/* selecting all columns from students table */
SELECT *
FROM students


-- Filtering the Data: WHERE Clause

/* let's select all Egyptian students */
SELECT *
FROM students
WHERE country == 'EGY'

/* how about selecting all names which start with 'M' letter */
SELECT *
FROM  students
WHERE first_name LIKE 'M%'

/* finding the students who are studying 'Data Science' & 'Data Analysis' */
SELECT *
FROM  students 
WHERE topic IN ('Data Science','Data Analysis')

/* finding the students whose ages are between 17 and 30 years old */
SELECT *
FROM  students
WHERE age BETWEEN 17 AND 30


-- Sorting the Data: ORDER BY Statement

/* sorting the students by their grades in descending order */
SELECT *
FROM  students
ORDER BY grade DESC

/* sorting the students by their ages */
SELECT *
FROM  students
ORDER BY age ASC


-- Eliminating the Duplicate Data: DISTINCT Clause

/* select all topics without duplication */
SELECT DISTINCT topic
from students
WHERE topic != 'Data Science'


-- Quiz

/* Write a query that shows student first name and last name whose grades are between 15 and 20 */
SELECT first_name, last_name
FROM students
WHERE grade BETWEEN 15 AND 20

/* Write a query that shows student names and ages in the descending order who studies 'Data Science' & 'Data Engineering' */
SELECT first_name, last_name, age
FROM students
WHERE topic IN('Data Science', 'Data Engineering')
ORDER BY age DESC
