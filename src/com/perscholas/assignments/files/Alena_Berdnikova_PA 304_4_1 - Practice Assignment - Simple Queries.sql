SELECT productName as Name, productLine as 'Product Line', buyPrice as 'Buy Price'
FROM products
ORDER BY buyPrice DESC;

SELECT contactFirstName as 'First Name', contactLastName as 'Last Name', city as 'City'
FROM customers
WHERE country = 'Germany'
ORDER BY contactLastName;

SELECT DISTINCT status
FROM orders
ORDER BY status;

SELECT *
FROM payments
WHERE paymentDate>='2005-01-01'
ORDER BY paymentDate DESC;

SELECT lastName, firstName, email, jobTitle
FROM employees
WHERE officeCode = (SELECT DISTINCT officeCode FROM offices WHERE city = 'San Francisco')
ORDER BY lastName;

SELECT productName, productLine, productScale, productVendor
FROM products
WHERE productLine = 'Vintage Cars' OR productLine = 'Classic Cars'
ORDER BY productLine DESC, productName;
