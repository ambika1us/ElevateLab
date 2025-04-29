SELECT datname FROM pg_database;
SELECT current_database();

SELECT current_user;
SELECT session_user;


ALTER USER postgres WITH PASSWORD 'Password';

select tables from ElevatLab

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

select * from customer;
