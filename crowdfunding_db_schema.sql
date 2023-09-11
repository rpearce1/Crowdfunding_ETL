CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(100)
);


CREATE TABLE category(
	category_id VARCHAR(10) NOT NULL PRIMARY KEY,
	category VARCHAR(15) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(25)
);

CREATE TABLE campaign(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(60),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launch_date VARCHAR(15),
	end_date VARCHAR(15),
	category_id VARCHAR(10),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;
SELECT * FROM subcategory;
SELECT * FROM category;
SELECT * FROM contacts