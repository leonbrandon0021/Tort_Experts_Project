with countries as(
  select
  Country
  ,count(distinct invoiceid) as number_of_transactions
  ,sum(quantity) as total_number_of_products_sold
  ,round(sum(UnitPrice),2) as total_revenue
  from retailmarketingproject.data.retail_marketing_data
  group by
  Country
  order by 4 desc
)

select
*
from(
  select 
  dense_rank() over(order by total_revenue desc) as rank
  ,* 
  from countries
)
where rank <= 10
order by rank