🧮 Useful SQL Queries for QA Testing

-- Verify if user exists
SELECT * FROM users WHERE email = 'user@example.com';

-- Check order status
SELECT order_id, status FROM orders WHERE customer_id = 101;

-- Validate data integrity (foreign key)
SELECT * FROM orders WHERE customer_id NOT IN (SELECT id FROM customers);

-- Compare values between tables
SELECT A.id, A.total, B.amount
FROM payments A
JOIN invoices B ON A.invoice_id = B.id
WHERE A.total != B.amount;

-- Count records
SELECT COUNT(*) FROM sessions WHERE active = 1;

-- Date-based filter
SELECT * FROM transactions
WHERE created_at >= CURDATE() - INTERVAL 7 DAY;
