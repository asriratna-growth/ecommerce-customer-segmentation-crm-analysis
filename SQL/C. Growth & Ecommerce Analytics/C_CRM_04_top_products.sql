SELECT

StockCode,

Description,

SUM(Quantity) AS units_sold,

ROUND(SUM(Revenue),2) AS revenue

FROM ecommerce_customer_analytics.customer_transactions_clean

GROUP BY
    StockCode,
    Description

ORDER BY revenue DESC

LIMIT 20;