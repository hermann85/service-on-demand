CREATE DATABASE mydb;


-- We go to the database created when the container is launched
use mydb;

-- Creation of a "persons" Table, with a few columns
CREATE TABLE persons(personId int, LastName varchar(255), firstName varchar(255), address varchar(255), city varchar(255));

-- Insert some data into this table
INSERT INTO persons VALUES (1, 'John', 'Doe', '51 Wall St.', 'New York city');
INSERT INTO persons VALUES (2, 'Stan', 'Smith', '24 Kennedy St.', 'Los Angeles');
INSERT INTO persons VALUES (3, 'Michelle', 'Rodriguez', '23 Lawyer St.', 'San Diego');