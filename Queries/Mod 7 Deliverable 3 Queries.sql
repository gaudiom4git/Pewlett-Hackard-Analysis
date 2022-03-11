-- Mod 7 Challenge Results Queries
-- List Departments with retiree count 
select de.dept_no, d.dept_name, count(ri.emp_no) 
from retirement_info ri
INNER JOIN dept_emp de
ON ri.emp_no = de.emp_no
INNER JOIN departments d
ON d.dept_no = de.dept_no
group by de.dept_no, d.dept_name
order by count(ri.emp_no) desc

--  List  salaries and titles of current employees not retiring
Select me.emp_no, me.first_name, me.last_name, t.title, s.salary
FROM mentorship_eligibility me
INNER JOIN titles t
ON me.emp_no = t.emp_no
INNER JOIN salaries s
ON me.emp_no = s.emp_no
WHERE t.to_date = '9999-01-01'
order by me.emp_no


