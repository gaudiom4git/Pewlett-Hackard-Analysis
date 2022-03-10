-- 7.2.2 Confirm tables were created
SELECT * FROM departments;
-- 7.3.1  List of employees to retire soon born between 1952 and 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
-- How many employees born between 1952 and 1955
SELECT count(*)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
-- How many employees born in 1952 
SELECT count(*)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';
--   List of employees born between 1952 and 1955 AND hired between 1985 and 1988
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
and (hire_date between '1985-01-01' AND '1988-12-31');
--   Count of employees born between 1952 and 1955 AND hired between 1985 and 1988
SELECT count(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
and (hire_date between '1985-01-01' AND '1988-12-31');
--   List of employees born between 1952 and 1955 AND hired between 1985 and 1988 copied to a new table
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
and (hire_date between '1985-01-01' AND '1988-12-31');