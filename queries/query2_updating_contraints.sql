ALTER TABLE retailmarketingproject.data.retail_marketing_data 
ADD PRIMARY KEY (invoiceid) NOT ENFORCED --GBQ must have NOT ENFORCED constraints;

/*
ALTER TABLE retailmarketingproject.data.retail_marketing_data 
ADD FOREIGN KEY (customerid) REFERENCES retailmarketingproject.data.cutomers (customerid) NOT ENFORCED
*/