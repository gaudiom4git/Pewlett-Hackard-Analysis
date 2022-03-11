# Pewlett-Hackard-Analysis
Module 7 Challenge - Employee Database with SQL
## Overview of Analysis
The objective of this project was to analyze future staffing changes in the company by identifying potential retirees and remaining employees that are candidates for a mentorship program.  

To do this, students will use the Postgres open source database to store organizational data such as employee, department, salary and title information.  This data will be imported into new tables in the Employee database.  An ERD will help students to understand how each table relates to each other.  SQL statements to JOIN, FILTER, GROUP BY and ORDER BY clauses help to pull this information into new tables that can later be exported into .csv files.

Click here to see the ERD diagram of the PH_Employee database.  [EmployeeDB ERD](https://github.com/gaudiom4git/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png).
## Results

To help the HR representative with getting a list of potential retirees and employees eligible for the mentorship program, you would have to build a series of queries that join multiple tables, filter, aggregration functions with groupings, distinct function and sort order to pull the data necessary for this analysis.

### Deliverable 1 - Getting the Number of Retiring Employees by Title

* You had to identify potential retiring employees and their most recent titles using an INNER JOIN, WHERE and ORDER BY CLAUSES.  You would perform additional queries to get the unique titles of these retiring employees by performing more INNER JOINS, with DISTINCT ON, and ORDER BY, GROUP BY clauses to get current retiring employee most recent titles.

*  DISTINCT ON with ORDER BY (desc) is a great way to bring back the most recent title for any employee.  Then, the aggregation function, COUNT(DISTINCT TITLE) can give you the number of unique titles.  You can then get proof that you have the correct count by doing a group by title and count(*) to see how many titles there are for retiring employees and how many employees for each title.

### Deliverable 2 - Employees Eligible for the Mentoship Program

*  You had to join 3 tables (employee, dept_emp, and titles) using an INNER JOIN to get the current employees and their most recent title that could be part of the mentorship program.  First criteria is that you had to be born the year 1965.  This can be found in the employees table.
*  Second table to INNER JOIN was the dept_emp table which has a to_date to determine if you were still with the company (to_date='9999-01-01') and the third table to INNER JOIN was the titles table where you woudl get the most recent title of the employee.  Title table can have multiple records for the same employee as they can have different titles over time due to promotions or demotions.  So, you have to do a DISTINCT ON w/ORDER BY to get the latest title for each employee.

See SQL queries performed to accomplish both deliverables: [SQL Queries](https://github.com/gaudiom4git/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_Challenge_final.sql)


## Summary

As an HR representative, I would also like to know which departments are losing the most people.  So, I would include a query that would list all potential retirees and their current departments.  I would also like a list of potential employees that might be interested in filling those spots as retirees retire.

Queries used to do get both data results [Deliverable 3 Queries](https://github.com/gaudiom4git/Pewlett-Hackard-Analysis/blob/main/Queries/Mod%207%20Deliverable%203%20Queries.sql)

Do an INNER JOIN with:
=> retirement_info table that has the list of retirees built during MOD 7 lesson with 
=> DEPT_EMP table that will get the department number for the employees in the table above with
=> DEPARMENT TABLE to get the department name AND
=> Use the GROUP BY and COUNT aggregation to get totals by Department AND
=> ORDER BY to show the largest COUNT first.

This tells me that d005 Development would be losing the most people at 11,627 people.  See First page of data results after running first query:  [Dept Largest Retiree Count](https://github.com/gaudiom4git/Pewlett-Hackard-Analysis/blob/main/DeptwithMostRetiress.png).


Another question I might have is what is the current salary and title for the that are not retiring by department.  Perhaps, they could be promoted when employees retire.  Here is how I would do that:

Do an INNER JOIN with:
=> mentorship_eligibility table that has the list of current employees born in 1965. (Deliverable 2) 
=> AND TITLES to get the current title for the employee 
=> AND SALARIES to get the current salary for the employee
=> Use WHERE Clause with title.to_date = '999-01-01' to get current title. 
=> ORDER BY to emp_no.

See screenshot for first page of results: [Mentorship Candidates Salary and Title](https://github.com/gaudiom4git/Pewlett-Hackard-Analysis/blob/main/MentorshipSalaryTitle.png)


