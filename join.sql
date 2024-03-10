-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan
SELECT * FROM POSTS  as p
    JOIN "users" as u ON p.author_id = u.id 