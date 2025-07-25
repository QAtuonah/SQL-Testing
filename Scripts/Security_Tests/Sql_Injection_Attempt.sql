-- Simulate injection
SELECT *
FROM users
WHERE email = 'anything@example.com' OR 1=1;
