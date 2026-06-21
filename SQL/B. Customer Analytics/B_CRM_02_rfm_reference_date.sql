SELECT
    MAX(DATE(InvoiceDate)) AS latest_transaction_date
FROM ecommerce_customer_analytics.customer_transactions_clean;