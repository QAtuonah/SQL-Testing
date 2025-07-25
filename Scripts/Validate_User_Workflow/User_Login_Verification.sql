-- Validate if user exists and password is correct
SELECT *
FROM users
WHERE email = 'test@example.com'
  AND password = 'secure123';
