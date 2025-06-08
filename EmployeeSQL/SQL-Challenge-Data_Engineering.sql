CREATE TABLE titles (
    title_id Varchar(10) NOT NULL,
    title Varchar(50) NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no Serial NOT NULL,
   	emp_title_id Varchar(10) Not Null,
	birth_date Date Not Null,
	first_name Varchar(50) Not Null,
	last_name Varchar(50) Not Null,
	sex Varchar(10) Not Null,
	hire_date Date Not Null,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) References titles (title_id)
);

CREATE TABLE salaries (
    emp_no Serial Not Null,
    salary Integer Not Null,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) References employees (emp_no)
);
	
CREATE TABLE dept_emp (
    emp_no Integer NOT NULL,
   	dept_no Varchar(10) Not Null,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) References employees (emp_no)
);

CREATE TABLE departments (
    dept_no varchar(10)   NOT NULL,
   	dept_name Varchar(50) Not Null,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(10)   NOT NULL,
   	mgr_emp_no Serial Not Null,
    PRIMARY KEY (mgr_emp_no),
	FOREIGN KEY(mgr_emp_no) References employees (emp_no),
	FOREIGN KEY(dept_no) References departments (dept_no)
);