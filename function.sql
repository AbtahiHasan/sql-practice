-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan

CREATE OR REPLACE FUNCTION count_employ ()
RETURNS INTEGER
LANGUAGE SQL
AS $$
    SELECT COUNT(*) FROM employees
$$


SELECT count_employ()