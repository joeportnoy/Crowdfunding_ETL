-- Drop in the correct order to avoid dependency issues
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- Create independent tables first
CREATE TABLE "contacts" (
    "contact_id" INT PRIMARY KEY,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "email" VARCHAR
);

CREATE TABLE "category" (
    "category_id" VARCHAR PRIMARY KEY,
    "category" VARCHAR
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR PRIMARY KEY,
    "sub-category" VARCHAR
);

-- Create the dependent table last
CREATE TABLE "campaign" (
    "cf_id" INT PRIMARY KEY,
    "contact_id" INT REFERENCES contacts(contact_id),
    "company_name" VARCHAR,
    "description" TEXT,
    "goal" FLOAT,
    "pledged" FLOAT,
    "outcome" VARCHAR,
    "backers_count" INT,
    "country" VARCHAR,
    "currency" VARCHAR,
    "launch_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "staff_pick" BOOLEAN,
    "spotlight" BOOLEAN,
    "category_id" VARCHAR REFERENCES category(category_id),
    "subcategory_id" VARCHAR REFERENCES subcategory(subcategory_id)
);

-- When importing campaign.csv, ensure that " is selected under Quote in the Options tab within PostgreSQL.

-- Run each query after data is imported.
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;