/*Provide a query that shows the total number of invoices per country.*/

SELECT BillingCountry, COUNT(InvoiceId) AS Invoice_total
FROM Invoice
GROUP BY BillingCountry;