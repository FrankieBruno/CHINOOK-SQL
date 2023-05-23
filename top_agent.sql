/*highest grossing agent*/

SELECT 
    Employee.FirstName,
    Employee.LastName, 
    CAST(SUM(Invoice.Total) AS INTEGER) AS Total, 
    Invoice.InvoiceDate
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
GROUP BY Employee.FirstName, Employee.LastName AND Invoice.Total
ORDER BY Total DESC
LIMIT 1