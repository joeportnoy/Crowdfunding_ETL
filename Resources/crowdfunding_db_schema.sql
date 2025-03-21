-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
DROP TABLE IF EXISTS campaign;

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int  REFERENCES contacts(contact_id),
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "staff_pick" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category_id" VARCHAR  REFERENCES category(category_id),
    "subcategory_id" VARCHAR   REFERENCES subcategory(subcategory_id),
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

DROP TABLE IF EXISTS category;

CREATE TABLE "category" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

DROP TABLE IF EXISTS subcategory;

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "sub-category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);
DROP TABLE IF EXISTS contacts;

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);


COPY contacts FROM 'C:\Data_Bootcamp\Crowdfunding_ETL\Resources\contacts.csv' WITH CSV HEADER;
COPY category FROM 'C:\Data_Bootcamp\Crowdfunding_ETL\Resources\category.csv' WITH CSV HEADER;
COPY subcategory FROM 'C:\Data_Bootcamp\Crowdfunding_ETL\Resources\subcategory.csv' WITH CSV HEADER;
COPY campaign FROM 'C:\Data_Bootcamp\Crowdfunding_ETL\Resources\campaign.csv' WITH CSV HEADER;
