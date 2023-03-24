Create Table contacts(
	contact_id int PRIMARY KEY NOT NULL,
	First_Name varchar(60),
	Last_Name varchar (60),
	email varchar (60)
);



Create Table campaign(
	cf_id int Primary Key Not Null,
	contact_id int,
	company_name varchar (40),
	description TEXT,
	goal int,
	pledged int,
	outcome varchar (20),
	backers_count int,
	country varchar (2),
	currency varchar (3),
	launch_date DATE,
	end_date DATE,
	category_id varchar(10),
	subcategory_id varchar (10),
	Foreign Key (contact_id) References contacts(contact_id),
	Foreign Key (category_id) References category(category_id),
	Foreign Key (subcategory_id) References subcategory(subcategory_id)
);

Create Table category(
	category_id varchar(10) Primary Key not null,
	category varchar (20)	
);

create Table subcategory(
	subcategory_id varchar(10) Primary Key not NULL,
	subcategory varchar (20)
);

SELECT *
FROM contacts;

SELECT *
FROM campaign;

SELECT *
FROM category;

SELECT *
FROM subcategory;