USE employeelist_db;

-- inserts id and name into department table
INSERT INTO department (id, name)
VALUES
    (1, 'management'),
    (2, 'sales'),
    (3, 'training');

-- select rows in employees table
SELECT * FROM department;

INSERT INTO role (id, title, salary, department_id)
VALUES
    (1, 'manager', 10000, 1),
    (2, 'cashier', 5000, 2),
    (3, 'stylist', 15000, 3),
    (4, 'trainer', 16000, 4);

-- select rows in employees table
SELECT * FROM role;

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
    (1, 'Tom', 'Hanks', 1, 1),
    (2, 'Will', 'Smith', 2, 2),
    (3, 'Ariana', 'Grande', 2, 3),
    (4, 'Taylor', 'Swift', 3, 4);

-- select rows in employees table
SELECT * FROM employee;


    
