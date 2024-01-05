-- drop tables if exist

drop table if exists campaign;
drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;


--Create Tables for each of the CSV files
--Tables: contacts, category, subcategory and campaign

Create Table contacts(
	contact_id int primary key,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(100)
);

CREATE TABLE category(
    category_id varchar(10) Primary Key,
    category varchar(50)
);

CREATE TABLE subcategory(
    subcategory_id varchar(10) Primary Key,
    subcategory varchar(50)
);

CREATE TABLE campaign (
    cf_id int Primary Key,
    contact_id int References contacts(contact_id),
    company_name varchar(100),
    description varchar(500),
    goal varchar (100),
    pledged varchar(100),
    outcome varchar(15),
    backers_count int,
    country varchar(5),
    currency varchar(5),
    launch_date date,
    end_date date,
    category_id varchar(10) References category(category_id),
    subcategory_id varchar(10) References subcategory(subcategory_id)
);

-- Query all fields from the table

SELECT *
FROM contacts;

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM campaign;


