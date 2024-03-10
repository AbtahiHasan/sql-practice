-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan
CREATE PROCEDURE delete_employee(empId INT)
LANGUAGE plpgsql
AS 
$$
    DECLARE 
    employeeId INT;
    BEGIN
        SELECT employee_id INTO employeeId FROM employees WHERE employee_id = empId;
        DELETE FROM employees WHERE employee_id = employeeId;

         RAISE NOTICE 'Employee removed successfully!';

    END
$$


CALL delete_employee(1);
SELECT * FROM employees