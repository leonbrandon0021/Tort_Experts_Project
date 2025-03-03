--GBQ does not allow for enforcement of uniqueness after a table was created. Therefore NOT ENFORCED is required

ALTER TABLE retailmarketingproject.data.retail_marketing_data 
ADD PRIMARY KEY (invoiceid) NOT ENFORCED --GBQ must have NOT ENFORCED constraints;



/*

--No customers table exists in my GBQ environment but this statement would create a foreign key to create a relationship between the tables

ALTER TABLE retailmarketingproject.data.retail_marketing_data 
ADD FOREIGN KEY (customerid) REFERENCES retailmarketingproject.data.cutomers (customerid) NOT ENFORCED
*/