For Tort Experts - Marketing Coding Project

Created By Brandon Leon

Purpose - To demonstrate how SQL can be used to update tables, filter data, and create reporting views to provide critical insights for an online marketing team in a Google Big Query environment.

	Query 1 | Fixing the Schema
 
Link: [query1_updating_field_names.sql](https://github.com/leonbrandon0021/retail_marketing_project/blob/main/queries/query1_updating_field_names.sql)

Problem - Often, data imports can be messy. A typical issue occurs when a csv file incorrectly parses out the field (column) names and a data engineer will need to rename the fields

![query_1_img](images/query1_schema.png)
 

Expected Result
![query_1_img](images/query1_result.png)

	Query 2 | Creating Primary and Foreign Keys
 Link: [query2_updating_keys.sql](https://github.com/leonbrandon0021/retail_marketing_project/blob/main/queries/query2_updating_keys.sql)

 Problem - The table did not have any primary or foreign keys set up when it was created. It is important to establish these relationships between tables and define the uniqueness of certain fields.

*Unfortunately, GBQ does not allow for enforcement of uniqueness after a table was created

**Customer Table does not exist in my GBQ dataset. Which is why no foreign key was created. Query is used to show how that key would be created if said table did exist


![query_1_img](images/query2_schema.png)

Expected Result

![query_1_img](images/query2_result.png)

	Query 3 | Top 10 Countries
 Link: [query3_Top_10_Countries.sql](https://github.com/leonbrandon0021/retail_marketing_project/blob/main/queries/query3_top_10_countries.sql)

 Problem - Leadership wants to know the top 10 countries that are contributing to the marketing revenue. Additionally, they want to know the total quantity of products sold and the number of invoices created.


![query_3_img](images/query3_result.png)

	Query 4 | Identifying Bad Records
 Link: [query4_Identifying_Bad_Records.sql](https://github.com/leonbrandon0021/retail_marketing_project/blob/main/queries/query4_identifying_bad_records.sql)

 Problem - The finance team needs to audit the invoices they send out. The data team will need to write a query to identify bad invoice records without a CustomerId or a price of 0


![query_4_img](images/query4_result.png)

	Query 5 | Duplicates
 Link: [query5_Duplicates.sql](https://github.com/leonbrandon0021/retail_marketing_project/blob/main/queries/query5_duplicates.sql)

 Problem - Additionally, the finance team would like to set up a test to catch duplicate invoice records. The data team will need to create a query to catch all duplicate records.


![query_5_img](images/query5_result.png)
