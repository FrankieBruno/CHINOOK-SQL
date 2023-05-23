/*Which sales agent made the most in sales in 2009?*/

SELECT 
    Employee.FirstName,
    Employee.LastName, 
    SUM(Invoice.Total) AS TOTAL, 
    Invoice.InvoiceDate
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
WHERE Invoice.InvoiceDate LIKE '2009%'
GROUP BY Employee.FirstName, Employee.LastName AND Invoice.Total
ORDER BY TOTAL DESC
LIMIT 1