// TODO: Create an array of questions for user input
const inquirer = require('inquirer');
const express = require('express');
const mysql = require('mysql2');
const PORT = 3001;
const app = express();
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Welcome1!',
  database: 'employee_db'
});
  console.log('Welcome to the Employee Database!');


// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Query database
db.query('SELECT * FROM employee', function (err, results) {
  console.log(results);
});

// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});


//prompt question
const question = [
    {
      type: 'list',
      message: 'Choose one of the following options:',
      name: "text",
      choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', 'Update an emplyee role']
    },
  ];

// initialize prompt
function init() {
    inquirer.prompt(question)
   .then((input) => {
      (input);
   })
   .catch(err =>{
        console.log(err);
   });
}

init();
