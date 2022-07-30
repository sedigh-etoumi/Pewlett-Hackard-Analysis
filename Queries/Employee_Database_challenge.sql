SELECT e.emp_no,
       e.first_name,
       e.last_name,
       ti.title,
       ti.from_date,
       ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN  '1952-1-1' AND '1955-12-31'
ORDER BY e.emp_no;      

SELECT * FROM retirement_titles;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-1-01'
ORDER BY emp_no, to_date DESC;

SElECT * FROM unique_titles;

SELECT DISTINCT ON (title) title
FROM unique_titles
ORDER BY (title);

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;


-- Deliverable 2: The Employees Eligible for the Mentorship Program

SELECT DISTINCT ON (emp_no) e.emp_no, 
       e.first_name,
       e.last_name,
       e.birth_date,
       de.from_date,
       de.to_date,
       ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-1-01' AND '1965-12-31') 
AND (ti.to_date = '9999-1-01')
ORDER BY e.emp_no;
      
SELECT * FROM mentorship_eligibilty;





