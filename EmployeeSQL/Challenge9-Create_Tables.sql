-- Data Engineering
-- Creating tables in database ChallengSQL9

CREATE TABLE employees ( 
	emp_id               bigint  NOT NULL PRIMARY KEY,
	sal_id               bigint  NOT NULL,
	emp_no               bigint  NOT NULL,
	emp_title            varchar(5)  NOT NULL,
	birth_date           date  NOT NULL,
	first_name           varchar(30)  NOT NULL,
	last_name            varchar(30)  NOT NULL,
	sex                  varchar(1)  NOT NULL,
	hire_date            date  NOT NULL,
	hire_year            int  NOT NULL
);

-- Load data into Table employees.

CREATE  TABLE titles ( 
	title_id             integer  NOT NULL  ,
	title_no             varchar(5)  NOT NULL  ,
	title                varchar(30)  NOT NULL  ,
	CONSTRAINT pk_titles PRIMARY KEY ( title_id )
 );
 
-- Load data into Table titles.

CREATE  TABLE dept_emp ( 
	emp_no               bigint  NOT NULL PRIMARY KEY ,
	dept_no              varchar(6)  NOT NULL PRIMARY KEY ,
	CONSTRAINT unq_dept_emp_emp_no UNIQUE ( emp_no ) ,
	CONSTRAINT unq_dept_emp_dept_no UNIQUE ( dept_no ) 
);

-- Load data into Table dept_emp

CREATE  TABLE salaries ( 
	sal_id               bigint  NOT NULL  ,
	emp_no               bigint  NOT NULL  ,
	salary               bigint  NOT NULL  ,
	CONSTRAINT pk_salaries PRIMARY KEY ( sal_id ),
	CONSTRAINT unq_salaries_emp_no UNIQUE ( emp_no ) 
);	

-- Load data into Table salaries

CREATE  TABLE dept_manager ( 
	dept_no              varchar(6)  NOT NULL  ,
	emp_no               bigint  NOT NULL  ,
	CONSTRAINT unq_dept_manager_emp_no UNIQUE ( emp_no ) ,
	CONSTRAINT unq_dept_manager_dept_no UNIQUE ( dept_no ) 
 );
 
-- Load data into Table dept_manager
 
 CREATE  TABLE departments ( 
	dept_no              varchar(10)  NOT NULL  ,
	dept_name            varchar(30)    ,
	CONSTRAINT pk_departments PRIMARY KEY ( dept_no )
 );