---GROUP NUMBER: 5
--FILE NAME: Views

-- 1. Sammar Abbas              157-597-170
-- 2. Rabiya Khalid             134-420-173
-- 3. Syed Hussain Arish Rizvi  139-190-177
-- 4. Krishma Arora             021-146-147

-----------------
-----------------

DROP VIEW biz_status;
DROP VIEW Clients_List;
DROP VIEW Property_On_Sale;
DROP VIEW yearly_sales_report2018;
DROP VIEW yearly_sales_report2019;



-------Create view that can help John Wick to determine STATE OF BUSINESS
CREATE  VIEW biz_status AS (
      SELECT COUNT(ch.sale_id) AS "Total Properties", p.property_type, ch.status, SUM(ch.listed_selling_price) AS "Listed Price", 
            SUM(ch.price_sold) AS "Total Sold Price", SUM(ch.price_sold)*0.5 AS "Brooker Commision", SUM(ch.price_sold)*0.2 AS "Agent Commision", (SUM(ch.price_sold)*0.5 - SUM(ch.price_sold)*.2) AS "Net Profit"
      FROM a2property p FULL JOIN a2ClientHouse ch
      ON(p.property_id = ch.property_id)
      WHERE UPPER(ch.status) = 'SOLD'
          GROUP BY p.property_type, ch.status
  UNION ALL
      SELECT COUNT(ch.sale_id) AS "Total Properties", p.property_type, ch.status, SUM(ch.listed_selling_price) AS "Listed Price", 
            SUM(ch.price_sold) AS "Total Sold Price", SUM(ch.price_sold)*0.5 AS "Brooker Commision", SUM(ch.price_sold)*0.2 AS "Agent Commision", (SUM(ch.price_sold)*0.5 - SUM(ch.price_sold)*.2) AS "Net Profit"
      FROM a2property p FULL JOIN a2ClientHouse ch
      ON(p.property_id = ch.property_id)
      WHERE UPPER(ch.status) = 'UNSOLD'
      GROUP BY p.property_type, ch.status);

------------------------------------------


----Creates view that will help John Wick to see list of  clients 
CREATE VIEW Clients_List AS (
    SELECT client_id AS "Client ID", first_name || ' '|| last_name AS "Client Full Name", postal_code, contact# AS "Contact Number","buyer/seller" AS "Client Category"
    FROM a2Client
    );
   
-- above is done!

-- --Create view that can help John Wick to determine which properties are currently for sale
CREATE  VIEW Property_On_Sale AS  (
      SELECT ch.sale_id, p.property_type, p."house_landsize(in acre)", p.square_feet, p.street# || ' ' || p.street_name  || ' ' || p.postal_code AS "Address", 
              ch.listed_selling_price, ch.owner_id, s.school_name, s.school_type 
        FROM a2property p FULL JOIN a2ClientHouse ch
		ON(p.property_id = ch.property_id) JOIN a2school s ON (s.area_code = ch.area_code)
        WHERE UPPER(ch.status) = 'UNSOLD'
		);
         
-- above is done!


-- --Create view that can help John Wick to determine yearly sales report YEAR 2018
CREATE  VIEW yearly_sales_report2018 AS (
      SELECT COUNT(ch.sale_id) AS "Total Properties", p.property_type, ch.status, SUM(ch.listed_selling_price) AS "Listed Price", 
            SUM(ch.price_sold) AS "Total Sold Price", SUM(ch.price_sold)*0.5 AS "Brooker Commision", SUM(ch.price_sold)*0.2 AS "Agent Commision", (SUM(ch.price_sold)*0.5 - SUM(ch.price_sold)*.2) AS "Net Profit"
      FROM a2property p FULL JOIN a2ClientHouse ch
      ON(p.property_id = ch.property_id)
      WHERE ch.date_sold < to_date('01012019', 'ddmmyyyy')
      GROUP BY p.property_type, ch.status
);

-- --Create view that can help John Wick to determine yearly sales report YEAR 2019
CREATE  VIEW yearly_sales_report2019 AS (
      SELECT COUNT(ch.sale_id) AS "Total Properties", p.property_type, ch.status, SUM(ch.listed_selling_price) AS "Listed Price", 
            SUM(ch.price_sold) AS "Total Sold Price", SUM(ch.price_sold)*0.5 AS "Brooker Commision", SUM(ch.price_sold)*0.2 AS "Agent Commision", (SUM(ch.price_sold)*0.5 - SUM(ch.price_sold)*.2) AS "Net Profit"
      FROM a2property p FULL JOIN a2ClientHouse ch
      ON(p.property_id = ch.property_id)
      WHERE ch.date_sold > to_date('01012019', 'ddmmyyyy')
      GROUP BY p.property_type, ch.status
);

