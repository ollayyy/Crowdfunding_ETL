CREATE TABLE contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(60) NOT NULL,
	last_name VARCHAR(60) NOT NULL,
	email VARCHAR(60) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(60) NOT NULL PRIMARY KEY,
	category VARCHAR(60) NOT NULL
);
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(60) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(60) NOT NULL
);

CREATE TABLE campaign ( 
	cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(60) NOT NULL,
	description TEXT,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(60) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(60) NOT NULL,
	currency VARCHAR(60) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(60) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(60) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);








