/*Provide a query that shows the total sales per country.*/

SELECT Invoice.BillingCountry, COUNT(Invoice.Total)
FROM Invoice
GROUP BY BillingCountry