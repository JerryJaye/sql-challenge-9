


-- Data Analysis Coding
-- 1. List the employee number, last name, first name, sex, and salary of each eamployee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
LIMIT 27;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_year = 1986
LIMIT 37;


-- 3. List the manager of each department along with their deparment number, deparment name, employee number, last name and first name. 

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;


-- 4. List department number for each employee along with that employee's employee number, last name, first name, and deparment name

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
LIMIT 35;


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. List each emplyee in the Sales deparment, inclouding their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
LIMIT 20;


-- 6a. Count how many people work in the sales department. I did this as was interested to know.

SELECT COUNT(DISTINCT e.emp_no) AS Sales_Employee_Count
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
LIMIT 18;

SELECT d.dept_name, COUNT(DISTINCT e.emp_no) AS Employee_Count
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
GROUP BY d.dept_name;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many emplyees share each last name)

SELECT last_name, COUNT(emp_no) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Frequency DESC
LIMIT 35;

