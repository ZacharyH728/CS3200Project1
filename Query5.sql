--Uses a window function to rank customers by the amount of projects attached to their id
SELECT
    Customers.first_name,
    Customers.last_name,
    COUNT(Projects.Project_id) OVER (PARTITION BY Customers.Customer_id) as num_projects
    FROM Customers
JOIN Projects ON Customers.Customer_id = Projects.;


--Example output
--first_name, last_name, num_projects
--Lindsay,Gittins,1