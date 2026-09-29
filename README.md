# Sentiment Analysis & Power BI Dashboard Project

## 📋 Project Overview

This project combines sentiment analysis on customer reviews with comprehensive data visualization to provide actionable business insights. The pipeline extracts data from a SQL database, performs advanced sentiment analysis using Python, and visualizes results in an interactive Power BI dashboard.

## 🏗️ Project Architecture

```
Marketing_Data.bak (Source Database)
    ↓
    ├─→ Custom SQL Queries
    │   ├─ customer_reviews.sql
    │   ├─ customer_journey_final.sql
    │   ├─ engagement_data_final.sql
    │   ├─ dim_customer.sql
    │   └─ dim_products.sql
    │
    ├─→ Python Sentiment Analysis
    │   └─ Marketing_Data_Sentiment_Analysis.ipynb
    │       └─ Output: sentiment_results.csv
    │
    └─→ Dashboard Visualization
        └─ dashboard.pbix (Final Output)
            ├─ Query-based data visualizations
            └─ Sentiment analysis insights
```

## 📦 Components

### 1. **Marketing_Data.bak**
- **Type**: SQL Server Database Backup
- **Purpose**: Fundamental source database containing all raw data
- **Contents**: Multiple tables with customer data, reviews, engagement metrics, and product information

### 2. **Custom SQL Queries** (`/Custom_Query`)
- **Purpose**: Extract and transform specific data from Marketing_Data.bak for dashboard consumption
- **Files**:
  - `customer_reviews.sql` - Extracts customer review records
  - `customer_journey_final.sql` - Tracks customer interaction timeline
  - `engagement_data_final.sql` - Analyzes user engagement metrics
  - `dim_customer.sql` - Customer dimension table
  - `dim_products.sql` - Product dimension table

### 3. **Marketing_Data_Sentiment_Analysis.ipynb**
- **Type**: Jupyter Notebook
- **Purpose**: Performs sentiment analysis on customer reviews
- **Process**:
  1. Loads review data from Marketing_Data.bak
  2. Preprocesses text data
  3. Performs sentiment classification
  4. Outputs results to CSV
- **Output**: `sentiment_results.csv` (used in dashboard)

### 4. **dashboard.pbix**
- **Type**: Power BI Desktop File
- **Purpose**: Final interactive dashboard combining all data sources
- **Data Sources**:
  - Custom SQL queries (via Marketing_Data.bak)
  - Sentiment analysis results (CSV)
- **Features**: Visualizations, KPIs, and interactive filters

## 🚀 How to Use

### Prerequisites
- **SQL Server** or SQL Server Express with access to Marketing_Data.bak
- **Python 3.8+** with required packages (see below)
- **Power BI Desktop** (latest version recommended)
- **Jupyter Notebook** or JupyterLab

### Setup Steps

1. **Restore the Database**
   ```bash
   # Using SQL Server Management Studio or command line
   # Restore Marketing_Data.bak to your SQL Server instance
   ```

2. **Configure Custom Queries**
   - Open each SQL file in `/Custom_Query` directory
   - Update connection strings if needed
   - Verify table names and column references match your database schema
   - Execute queries to validate data extraction

3. **Run Sentiment Analysis**
   ```bash
   # Install Python dependencies
   pip install -r requirements.txt
   
   # Run the Jupyter notebook
   jupyter notebook Marketing_Data_Sentiment_Analysis.ipynb
   ```
   - Execute all cells in order
   - The notebook will generate `sentiment_results.csv`

4. **Open Power BI Dashboard**
   - Launch `dashboard.pbix` in Power BI Desktop
   - Refresh all data sources:
     - Update connection string to your SQL Server instance
     - Point to the correct `sentiment_results.csv` location
   - Interact with visualizations and filters

## 📊 Data Flow

```
1. Raw Data (Marketing_Data.bak)
        ↓
2. SQL Extraction (Custom_Query/*.sql)
   & Sentiment Analysis (Marketing_Data_Sentiment_Analysis.ipynb)
        ↓
3. Processed Data (CSV + Relational Tables)
        ↓
4. Power BI Integration (dashboard.pbix)
        ↓
5. Interactive Dashboard & Business Insights
```

## 🔧 Key Variables & Outputs

### Sentiment Analysis Outputs
- **Sentiment Score**: Numeric score indicating sentiment polarity
- **Sentiment Label**: Positive, Negative, or Neutral classification
- **Confidence Score**: Model confidence level for each prediction
- **Review Text**: Original customer review

### Dashboard Metrics
- Customer satisfaction trends
- Sentiment distribution by product/category
- Review volume over time
- Engagement metrics and customer journey analytics

---

**Final Output**: `dashboard.pbix` - Open this file in Power BI Desktop to view all insights and visualizations.
