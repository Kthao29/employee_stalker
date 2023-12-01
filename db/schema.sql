DROP DATABASE IF EXISTS employee_db;

-- create employee_db
CREATE DATABASE employee_db;

-- use employee_db
USE employee_db;

-- Creates the table "department" within database
CREATE TABLE department (

 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 
  name VARCHAR(30) NOT NULL,
  date_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    role_id INT NOT NULL,
    manager_id INT NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE SET NULL
);