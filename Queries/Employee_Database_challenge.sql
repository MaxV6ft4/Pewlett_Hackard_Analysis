-- List of employees eligible for retirement and their title(s)
SELECT e.emp_no, 
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;
-- Check the table
SELECT * FROM retirement_titles;

-- Use Dictinct ON statement to select first emp_no for each employee
-- Use ORDER BY and DESC to only display most recent title for each employee
SELECT DISTINCT ON (emp_no)
	emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
-- Check the table
SELECT * FROM unique_titles;

-- List of the number of employees eligible for retirement per title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;
-- Check the table
SELECT * FROM retiring_titles;

-- List of employees eligible to participate in a mentorship program
SELECT DISTINCT ON(e.emp_no) 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no, t.title;
-- Check the table
SELECT * FROM mentorship_eligibility;