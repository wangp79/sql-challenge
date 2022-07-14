-- drop table departments, dept_emp, dept_manager, employees, salaries, titles


create table employees(
    emp_no int Primary Key,
    emp_title_id varchar(50) NOT NULL,
    birth_date varchar(30) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(10) NOT NULL,
    hire_date varchar(30) NOT NULL
);

create table salaries(
    emp_no int references employees(emp_no),
    salary int NOT NULL
);

create table departments(
    dept_no varchar(30) primary key,
    dept_name varchar(50)
);

create table dept_emp(
    emp_no int,
    dept_no varchar(50),
    primary key(emp_no, dept_no)
);

create table dept_manager(
    emp_no int references employees(emp_no),
    dept_no varchar(30) references departments(dept_no)
    
);

create table titles(
    title_id varchar(30),
    title varchar(50),
    primary key(title_id, title)
);
