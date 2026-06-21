SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CAST(CustomerID AS STRING) AS CustomerID,
    Country,
    Quantity * UnitPrice AS Revenue
FROM ecommerce_customer_analytics.online_retail_raw
WHERE CustomerID IS NOT NULL
    AND Quantity > 0
    AND InvoiceNo NOT LIKE 'C%';