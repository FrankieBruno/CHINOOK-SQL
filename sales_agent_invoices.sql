SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId 
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Title = 'Sales Support Agent'