SELECT
    CustomerID,

    MIN(DATE(InvoiceDate)) AS first_purchase_date,

    MAX(DATE(InvoiceDate)) AS last_purchase_date,

    COUNT(DISTINCT InvoiceNo) AS total_orders,

    SUM(Quantity) AS total_units,

    ROUND(SUM(Revenue), 2) AS total_revenue,

    DATE_DIFF(
        MAX(DATE(InvoiceDate)),
        MIN(DATE(InvoiceDate)),
        DAY
    ) AS active_days

FROM ecommerce_customer_analytics.customer_transactions_clean

GROUP BY CustomerID;