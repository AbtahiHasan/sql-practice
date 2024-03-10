-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan
CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * from my_users;
SELECT * from deleted_users_audit;

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)


CREATE FUNCTION save_deleted_user() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES(OLD.user_name, NOW());
        RETURN OLD;
    END
$$


CREATE TRIGGER save_delete_user 
    BEFORE DELETE
    ON my_users
    FOR EACH ROW
    EXECUTE FUNCTION save_deleted_user();



DELETE from my_users WHERE user_name = 'Mir';