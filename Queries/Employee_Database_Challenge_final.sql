--Mod 7 Challenge Deliverable 1
-- Retrieve Employee data
Select emp_no, first_name, last_name
from employees;

--Retrieve the Titles data
Retrieve title, from_date, to_date
from titles;

--Join two tables into a new table
Select e.emp_no, e.first_name, e.last_name, 
		t.title, t.from_date, t.to_date
into retirement_titles 
from employees e
INNER JOIN titles t
ON e.emp_no=t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Confirm data in retirement_titles
Select * from retirement_titles;

--Unique Titles
Select DISTINCT ON (emp_no, to_date) emp_no,to_date 
		first_name, 
		last_name, 
		title
INTO unique_titles
from retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date desc

--Confirm data in Unique Titles
Select * from unique_titles;

--Retrieve the number of titles from unique_titles
Select count(distinct title) 
FROM unique_titles;

-- Create Retiring Titles table
select title, count(*)
INTO retiring_titles
from unique_titles
group by title
order by count desc

--Deliverable 2
--Create Mentorship Eligibility Table
Select emp_no, first_name, last_name, birth_date
FROM employees;

Select from_date, to_date
FROM dept_emp;

Select title
FROM titles;

--JOIN the emp and dept_emp tables
Select DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date
INTO mentorship_eligibility
from employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN titles t
ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01'  --current employee
	 AND e.birth_date between '1965-01-01' and '1965-12-31'
ORDER BY e.emp_no, t.to_date desc
