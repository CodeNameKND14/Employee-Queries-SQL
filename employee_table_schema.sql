-- DROP TABLE IF EXISTS Dept ;
-- DROP TABLE IF EXISTS Dept_Emp ;
-- DROP TABLE IF EXISTS Employees ;
-- DROP TABLE IF EXISTS Dept_Managers ;
-- DROP TABLE IF EXISTS Salaries;
-- DROP TABLE IF EXISTS Titles;

CREATE TABLE Employees(
	emp_no INTEGER,
	birth_date DATE,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	gender VARCHAR(1),
	hire_date Date,
	PRIMARY KEY(emp_no)
);

CREATE TABLE Dept(
	dept_no VARCHAR(100),
	dept_name VARCHAR(100),
	PRIMARY KEY(dept_no),
	UNIQUE(dept_name)
);


CREATE TABLE Dept_Emp(
	emp_no Integer,
	dept_no VARCHAR(100),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, dept_no), --combination of this will always be unique 
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Dept(dept_no)

);


CREATE TABLE Titles(
	emp_no INTEGER,
	title VARCHAR(100),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, title, from_date), 
	FOREIGN KEY(emp_no)REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Manager(
	dept_no VARCHAR(100),
	emp_no Integer,
	from_date Date,
	to_date Date,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(dept_no)REFERENCES Dept(dept_no),
	FOREIGN KEY(emp_no)REFERENCES Employees(emp_no)	
);


CREATE TABLE Salaries(
	emp_no Integer,
	salary Integer,
 	from_date DATE,
	to_date DATE,
	FOREIGN KEY(emp_no)REFERENCES Employees(emp_no),
	PRIMARY KEY(emp_no, from_date)
);


