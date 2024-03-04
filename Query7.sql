-- Finds all the customers and their related infomation for customers
-- who have an invoice greater than 500 dollars
SELECT *
FROM Customers
WHERE Customer_id IN (
    SELECT Customer_id
    FROM Invoices
    WHERE cost > 500.00
);


--Example output
--Customer_id, first_name, last_name, contact_email, billing_address, phone_number
-- 4865373,Maxine,Roycroft,mroycroft19@vimeo.com,087 Cascade Road,217-504-3528
-- 4874727,Arnaldo,Kiehl,akiehl9p@vinaora.com,581 Surrey Trail,171-490-0032
-- 5866105,Marcel,Jedrych,mjedrychgw@wunderground.com,86082 Comanche Hill,189-649-5805
-- 6574644,Libby,Sobieski,lsobieskiqu@wix.com,53 Buena Vista Plaza,816-778-5592
-- 8614806,Lorrie,Hemphall,lhemphall4w@vk.com,5 Troy Terrace,175-495-3274
-- 8639198,Christophe,De Roberto,cderobertof5@businessinsider.com,83 Memorial Road,851-272-8221
