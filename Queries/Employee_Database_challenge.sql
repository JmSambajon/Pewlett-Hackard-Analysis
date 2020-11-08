--DELIVERABLE 1

--1.Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e;

--2.Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT t.title, t.from_date, t.to_date
from titles as t

--3.Create a new table using the INTO clause.
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
--4.Join both tables on the primary key.
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
--5a,Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--5b.order by the employee number.
ORDER BY e.emp_no;

--8-14.Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--17-20.retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(title), title
into retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY COUNT(title) DESC;


--DELIVERABLE 2

--1.Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
SELECT e.emp_no, e.first_name, e.last_name, e.birth_date
FROM employees as e;

--2.Retrieve the from_date and to_date columns from the Department Employee table.
SELECT de.from_date, de.to_date
FROM dept_emp as de;

--3.Retrieve the title column from the Titles table.
SELECT t.title
FROM titles as t;

--4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
--5.Create a new table using the INTO clause.
INTO mentorship_eligibility
FROM employees as e
--6.Join the Employees and the Department Employee tables on the primary key.
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
--7.Join the Employees and the Titles tables on the primary key.
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
--8.Filter the data on the to_date column to get current employees whose birth dates are between January 1, 1965 and December 31, 1965.
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
		--filter for current employees only
		AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;