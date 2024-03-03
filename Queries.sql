-- Finds all users and displays their first, last name and their email
SELECT Users.first_name, Users.last_name, Users.email FROM Users;

--Finds all users with the phone number of 732-742-1299
SELECT * FROM Customers WHERE phone_number = '732-742-1299';

--Finds all the tasks of a specfic user in this case a user with the first and last name of Zach Hill
SELECT Tasks.*
FROM Tasks
JOIN Projects ON Tasks.Project_id = Projects.Project_id
JOIN Users ON Projects.User_id = Users.Users_id
WHERE Users.first_name = 'Zach' AND Users.last_name = 'Hill';

--Uses a window function to rank customers by the amount of projects attached to their id
SELECT
    Customers.first_name,
    Customers.last_name,
    COUNT(Projects.Project_id) OVER (PARTITION BY Customers.Customer_id) as num_projects
    FROM Customers
JOIN Projects ON Customers.Customer_id = Projects.Customer_id;

-- Finds the users first and last name, the project and the tasks the user is working on.
SELECT
    Users.first_name,
    Users.last_name,
    Projects.title AS project_title,
    Tasks.title AS task_title
    FROM Users
JOIN Projects ON Users.Users_id = Projects.User_id
JOIN Tasks ON Projects.Project_id = Tasks.Project_id;

-- Finds all the customers and their related infomation for customers
-- who have an invoice greater than 500 dollars
SELECT *
FROM Customers
WHERE Customer_id IN (
    SELECT Customer_id
    FROM Invoices
    WHERE cost > 500.00
);

-- Finds all customers who have more than two invoices
SELECT
    Customers.Customer_id,
    COUNT(Invoices.Invoice_id) as NumberOfInvoices
    FROM Customers
JOIN Invoices ON Customers.Customer_id = Invoices.Customer_id
GROUP BY Customers.Customer_id
HAVING COUNT(Invoices.Invoice_id) > 2;

--Finds all invoices that were created in 2023 that costs more
-- than 1000 dollars with the status of unpaid or overdue
SELECT *
FROM Invoices
WHERE date_issued BETWEEN '2023-01-01' AND '2023-12-31'
AND cost > 1000.00
AND (status = 'unpaid' OR status = 'overdue');

--Finds the users first and last name with the number of
-- projects they have order grouped by the id ordered by the number of projects each user has
SELECT
    Users.first_name,
    Users.last_name,
    COUNT(Projects.Project_id) as NumberOfProjects
    FROM Users
JOIN Projects ON Users.Users_id = Projects.User_id
GROUP BY Users.Users_id
ORDER BY NumberOfProjects DESC;

