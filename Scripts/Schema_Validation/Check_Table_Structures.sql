-- Validate table and column exist
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'products';
