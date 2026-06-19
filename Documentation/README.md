# Ecommerce Customer Segmentation, Retention & CRM Analysis

## Project Overview

This project analyzes customer purchasing behavior from a UK-based online retail business using SQL, Google BigQuery, and Looker Studio.

The analysis focuses on Customer Relationship Management (CRM) by applying RFM Segmentation, Retention Analysis, and Customer Lifetime Value (CLV) modeling to identify valuable customer groups, evaluate churn risks, and generate actionable business recommendations.

The final output is an interactive dashboard consisting of four pages:

- Executive CRM Overview
- Customer Segmentation Dashboard
- Retention Dashboard
- Customer Lifetime Value (CLV) Dashboard

---

## Business Objective

The project aims to support CRM and retention strategy by answering the following business questions:

### Customer Segmentation

- Who are the most valuable customers?
- Which customer segments contribute the most revenue?
- How is the customer base distributed across segments?

### Customer Retention

- Which customers are at risk of churn?
- How much revenue is exposed to retention risk?
- Which segments should be prioritized for retention campaigns?

### Customer Lifetime Value (CLV)

- Which customer segments generate the highest lifetime value?
- What is the average customer lifetime value?
- How should CRM investments be prioritized based on CLV?

---

## Business Context

The company operates as a UK-based non-store online retailer selling a wide range of products to customers across multiple countries.

While the business generates substantial transaction volume, customer behavior varies significantly. Some customers purchase frequently and generate high lifetime value, while others become inactive after only one or two purchases.

To improve customer retention and marketing effectiveness, management requires a data-driven framework to:

- Identify high-value customers
- Detect churn risk early
- Improve customer retention
- Increase customer lifetime value
- Allocate CRM resources more effectively

---

## Tools Used

- SQL
- Google BigQuery
- Looker Studio

---

## Dataset

### Source

UCI Online Retail Dataset: December 2010 – December 2011
The dataset contains transactional records from a UK-based online retailer.

---

## Methodology

### 1. Data Cleaning

Activities:

- Missing Customer ID validation
- Cancelled order removal
- Negative quantity handling
- Revenue validation
- Data quality audit

### 2. RFM Analysis

Customers were evaluated using:

- Recency
- Frequency
- Monetary Value

### 3. Customer Segmentation

Segments created:

- Champions
- Loyal Customers
- Potential Loyalists
- At Risk
- Lost Customers
- Need Attention
- Hibernating
- Promising
- Others

### 4. Retention Analysis

Metrics analyzed:

- Customer churn risk
- Revenue at risk
- Customer retention patterns

### 5. Customer Lifetime Value (CLV)

Estimated using:

CLV = Frequency × Monetary Value

### 6. Dashboard Development

Built using Looker Studio:

- Executive CRM Overview
- Customer Segmentation Dashboard
- Retention Dashboard
- CLV Dashboard

---

## Key Findings

- Champions represent the most valuable customer segment and contribute the majority of total CLV.
- Loyal Customers are the second strongest revenue-generating segment.
- Approximately 40% of customers fall into retention-risk categories.
- At Risk customers contribute meaningful revenue and should be prioritized for retention campaigns.
- Potential Loyalists represent the strongest opportunity for future customer value growth.
