-- Finds the users first and last name, the project and the tasks the user is working on.
SELECT
    Users.first_name,
    Users.last_name,
    Projects.title AS project_title,
    Tasks.title AS task_title
    FROM Users
INNER JOIN Invoices on Users.Users_id = Invoices.User_id
JOIN Projects ON Invoices.Invoice_id = Projects.Invoice_id
JOIN Tasks ON Projects.Project_id = Tasks.Project_id;

--Example Output
--first_name, last_name, project_title, task_title
-- Karly,O'Neil,"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.",In eleifend quam a odio.
-- Jehu,Ritch,Praesent blandit.,Vivamus vestibulum sagittis sapien.
-- Inger,Chaston,Ut at dolor quis odio consequat varius.,"Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem."
-- Mabel,Gribbin,Mauris sit amet eros.,Nunc purus.
-- Kippy,Ewells,Morbi quis tortor id nulla ultrices aliquet.,"Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede."
-- Burgess,Belvard,Phasellus id sapien in sapien iaculis congue.,Vestibulum ac est lacinia nisi venenatis tristique.
-- Neilla,Naisbitt,Vestibulum rutrum rutrum neque.,Curabitur at ipsum ac tellus semper interdum.
-- Jacintha,Kennard,"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",Cras in purus eu magna vulputate luctus.
-- Josephine,Chetwind,Integer ac leo.,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
