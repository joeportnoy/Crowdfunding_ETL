CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    blurb TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(30),
    backers_count INT,
    country VARCHAR(10),
    currency VARCHAR(10),
    launched_at TIMESTAMP,
    deadline TIMESTAMP,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category VARCHAR(50),
    subcategory VARCHAR(50)
);
SELECT * FROM campaign LIMIT 10;
SELECT category, COUNT(*) FROM campaign GROUP BY category ORDER BY COUNT(*) DESC;