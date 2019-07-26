--1. employee detail
SELECT 
e.emp_no, 
e.last_name, 
e.first_name, 
e.gender,
s.salary
From Employees AS e
Inner Join Salaries AS s On
e.emp_no = s.emp_no;

--2.employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3.Managers from each department
SELECT m.dept_no AS Department_Number, 
	d.dept_name AS Department_Name, 
	m.emp_no As Employee_Number,
	e.first_name,
	e.last_name,
	m.from_date AS Start_Date,
	m.to_date AS End_Date
FROM Dept_Manager As m
INNER JOIN Dept As d ON d.dept_no = m.dept_no
INNER JOIN Employees AS e ON e.emp_no = m.emp_no;

--4.Department of each employee information
SELECT d.dept_name AS Department_Name,
	de.emp_no As Employee_Number,
	e.first_name,
	e.last_name
FROM Dept As d
INNER JOIN Dept_Emp AS de ON d.dept_no = de.dept_no
INNER JOIN Employees As e ON e.emp_no = de.emp_no;

--5.Employees whose first name is "Hercules" and last name starts with a "B"
SELECT first_name, last_name
FROM Employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

--6.All employees in the Sales Department
Select d.dept_name AS DepartmentName,
	de.emp_no AS EmployeeNumber,
	e.first_name,
	e.last_name
From Dept As d
INNER JOIN Dept_Emp AS de ON d.dept_no = de.dept_no
INNER JOIN Employees as e ON de.emp_no = e.emp_no
WHERE d.dept_name LIKE '%Sale%';

--7. All employees in the Sales and Development Department 
Select d.dept_name AS DepartmentName,
	de.emp_no AS EmployeeNumber,
	e.first_name,
	e.last_name
From Dept As d
INNER JOIN Dept_Emp AS de ON d.dept_no = de.dept_no
INNER JOIN Employees as e ON de.emp_no = e.emp_no
WHERE d.dept_name LIKE '%Sale%'
OR d.dept_name LIKE '%Development%';

--8. Employees with the same last name
Select last_name, Count(last_name) As LastName_Count
FROM employees
GROUP BY last_name
Order By LastName_Count Desc;



