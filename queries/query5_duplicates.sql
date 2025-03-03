WITH duplicates as(
  SELECT
  invoiceid,StockCode,Description,Quantity,InvoiceDate,UnitPrice,CustomerID,Country
  FROM retailmarketingproject.data.retail_marketing_data
  GROUP BY
  invoiceid,StockCode,Description,Quantity,InvoiceDate,UnitPrice,CustomerID,Country
  HAVING COUNT(*) > 1
)

--Self join duplicate table to original table to return all records

SELECT
d.*
FROM duplicates d
inner join retailmarketingproject.data.retail_marketing_data t
on d.invoiceid = t.invoiceid
and d.StockCode = t.StockCode
and d.Description = t.Description
and d.Quantity = t.Quantity
and d.InvoiceDate = t.InvoiceDate
and d.UnitPrice = t.UnitPrice
and d.CustomerID = t.CustomerID
and d.Country = t.Country