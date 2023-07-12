/*Provide a query that shows the most purchased track(s) of 2013.*/


SELECT Track.Name, Invoice.InvoiceDate, SUM(Invoice.Total)
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.Name
ORDER BY Invoice.Total DESC
LIMIT 14;