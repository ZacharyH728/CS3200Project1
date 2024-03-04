--Finds all the tasks of a specfic user in this case a user with the first and last name of Becki Jerome
SELECT Tasks.*
FROM Tasks
INNER JOIN Projects ON Tasks.Project_id = Projects.Project_id
INNER JOIN Invoices ON Projects.Invoice_id = Invoices.Invoice_id
INNER JOIN Users ON Invoices.User_id = Users.Users_id
WHERE users.first_name IS 'Becki' AND users.last_name IS 'Jerome';

--Eample Output
--773271718,437932760,Vivamus vel nulla eget eros elementum pellentesque.,"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.",02/11/2004,09/03/2011,In Progress
