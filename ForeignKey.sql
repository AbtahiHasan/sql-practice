-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan
CREATE TABLE "users"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) NOT NULL
)

INSERT INTO "users"(username)
    VALUES('abtahihasan'),('abtahihasan2'),('abtahihasan3'),('abtahihasan4'),('abtahihasan5')


SELECT * FROM "users"



CREATE TABLE POSTS(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    author_id INTEGER REFERENCES "users"(id) NOT NULL
)


INSERT INTO POSTS(title, content, author_id)
    VALUES('abtahihasan', 'hello', 2)

SELECT * FROM POSTS

