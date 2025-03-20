CREATE TABLE campaigns (
    cf_id SERIAL PRIMARY KEY,  
    contact_id INT,            
    company_name VARCHAR(255),  
    description TEXT,           
    goal NUMERIC,               
    pledged NUMERIC,            
    outcome VARCHAR(50),        
    backers_count INT,          
    country VARCHAR(10),        
    currency VARCHAR(10),       
    launch_date TIMESTAMP,      
    end_date TIMESTAMP,         
    category_id INT,            
    subcategory_id INT        
    );
SELECT * FROM campaigns LIMIT 10;
