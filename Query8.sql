--Finds the users first and last name with the number of
-- projects they have order grouped by the id ordered by the number of projects each user has
SELECT
    Users.first_name,
    Users.last_name,
    COUNT(Projects.Project_id) as NumberOfProjects
    FROM Users
INNER JOIN Invoices ON Users.Users_id = Invoices.User_id
INNER JOIN Projects ON Invoices.Invoice_id = Projects.Invoice_id
GROUP BY Users.Users_id
ORDER BY NumberOfProjects DESC;

--Example output
-- first_name, last_name, NumberOfProjects
-- Dal,Goldsack,1
-- Dayna,Mews,1
-- Nessy,Perrygo,1
-- Melly,Licciardiello,1
-- Shara,Oxenham,1
-- Robina,Merlin,1
-- Meyer,Sturror,1
-- Burch,Slogrove,1
-- Zuzana,Cannam,1