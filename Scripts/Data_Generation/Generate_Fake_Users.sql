INSERT INTO users (userId, password, email, firstName, lastName, address1,
zipcode, city, state, country, phone)
SELECT
  generate_series(100, 110),
  'Test@123',
  CONCAT('user', generate_series(100, 110), '@example.com'),
  'Test', 'User', 'Test Address',
  '00000', 'Test City', 'TS', 'TestLand', '000-0000';
