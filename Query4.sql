--Finds all invoices that were created in 2023 that costs more
-- than 1000 dollars with the status of unpaid or overdue
SELECT * FROM Invoices
WHERE date_issued BETWEEN '01/01/2023' AND '12/31/2023'
AND cost > 1000
AND (status = 'Pending' OR status = 'Overdue');

--Example output
--Invoice_id, Customer_id, User_id, Payment_id, title, description,date_issued, due_date, cost, status
-- 3532625,129990160,835656702,390748565,Nulla ac enim.,"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.",09/02/2014,01/12/2005,1920.6,Overdue
-- 9074775,890915914,147654670,775134223,Aliquam quis turpis eget elit sodales scelerisque.,Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.,06/07/2011,10/03/2020,5468.61,Overdue
-- 26698262,776171844,136598113,363627626,Cras pellentesque volutpat dui.,"Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",12/11/2015,07/07/2002,3779.71,Overdue
-- 37617417,600008254,933455925,638346167,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.","Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",04/04/2007,20/05/2004,7057.79,Overdue
-- 45884995,448385238,559061212,41734385,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.","Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.",05/07/2018,21/03/2019,1508.57,Overdue
-- 55802585,395458801,733494610,460263557,Aliquam erat volutpat.,Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.,04/08/2014,30/10/2015,4135.76,Overdue
-- 68109657,220717619,248504368,608081339,Morbi non lectus.,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.",08/06/2001,30/08/2010,4223.7,Overdue
-- 73382878,425572778,222624555,248688309,Duis mattis egestas metus.,"Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.",11/07/2008,02/07/2009,6699.89,Overdue
