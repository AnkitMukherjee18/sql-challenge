-- Creating Table Schema

-- Creating Table departments

DROP TABLE departments

CREATE TABLE departments (
    dept_no CHAR(8) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

select * from departments

-- Creating Table dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
    emp_no VARCHAR NOT NULL,
    dept_no CHAR(8) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp 

-- Creating Table dept_manager

DROP TABLE dept_manager

CREATE TABLE dept_manager (
    dept_no CHAR(8) NOT NULL,
    emp_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

select * from dept_manager

-- Creating Table employees

DROP TABLE employees

CREATE TABLE employees (
	emp_no VARCHAR NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

-- Creating Table salaries

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no VARCHAR NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries

-- Creating Table titles

DROP TABLE titles

CREATE TABLE titles (
    title_id VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL, 
    PRIMARY KEY (title)
);