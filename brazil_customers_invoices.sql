SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.customerId
WHERE Invoice.BillingCountry = 'Brazil';
