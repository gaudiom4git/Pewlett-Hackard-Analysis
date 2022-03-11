# Pewlett-Hackard-Analysis
Module 7 Challenge - Employee Database with SQL
## Overview of Analysis
The objective of this project was to analyze future staffing changes in the company by identifying potential retirees and remaining employees that are candidates for a mentorship program.  

To do this, students will use the Postgres open source database to store organizational data such as employee, department, salary and title information.  This data will be imported into new tables in the Employee database.  An ERD will help students to understand how each table relates to each other.  SQL statements to JOIN, FILTER, GROUP BY and ORDER BY clauses help to pull this information into new tables that can later be exported into .csv files.
## Results

## Deliverable 1
* You had to identify potential retiring employees and their most recent titles using an INNER JOIN, WHERE and ORDER BY CLAUSES.  You would perform additional queries to get the unique titles of these retiring employees by performing more INNER JOINS, with DISTINCT ON, and ORDER BY, GROUP BY clauses to get current retiring employee most recent titles.

*  DISTINCT ON with ORDER BY (desc) is a great way to bring back the most recent title for any employee.  Then, the aggregation function, COUNT(DISTINCT TITLE) can give you the number of unique titles.  You can then get proof that you have the correct count by doing a group by title and count(*) to see how many titles there are for retiring employees and how many employees for each title.

See picture below:

## Deliverable 2
*  You had to join 3 tables (employee, dept_emp, and titles) using an INNER JOIN to get the current employees and their most recent title that could be part of the mentorship program.  First criteria is that you had to be born the year 1965.  This can be found in the employees table.
*  Second table to INNER JOIN was the dept_emp table which has a to_date to determine if you were still with the company (to_date='9999-01-01') and the third table to INNER JOIN was the titles table where you woudl get the most recent title of the employee.  Title table can have multiple records for the same employee as they can have different titles over time due to promotions or demotions.  So, you have to do a DISTINCT ON w/ORDER BY to get the latest title for each employee.

## Summary

As an HR representative, I would also like to know which departments are losing the most people.  So, I would include a query that would list all potential retirees and their current departments.  This is how I would do it:

Another question I might have is what is the current salary and title for the that are not retiring by department.  Perhaps, they could be promoted when employees retire.  Here is how I would do that:

