-- PostgreSQL database schema for Crowdfunding Database

-- Table: category
CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR NOT NULL
);

-- Table: subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

-- Table: contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

-- Table: campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR NOT NULL,
    description TEXT NOT NULL,
    goal DECIMAL(10, 2) NOT NULL,
    pledged DECIMAL(10, 2) NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)

);

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

