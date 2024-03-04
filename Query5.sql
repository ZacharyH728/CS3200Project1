--Uses a window function to rank customers by the amount of projects attached to their id
SELECT
    Customers.first_name,
    Customers.last_name,
    COUNT(Projects.Project_id) OVER (PARTITION BY Customers.Customer_id) as num_projects
    FROM Customers
JOIN Invoices ON Customers.Customer_id = Invoices.Customer_id
INNER JOIN Projects ON Invoices.Invoice_id = Projects.Invoice_id


--Example output
--first_name, last_name, num_projects
-- Roycroft,1
-- Kiehl,1
-- Jedrych,1
-- Sobieski,1
-- Hemphall,1
-- De Roberto,1
