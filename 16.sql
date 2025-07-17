--Check Number of UNIQUE, NULL, AND NONNULL records in each column 
WITH playdata_column_names AS (
    SELECT column_name
    FROM information_schema.columns 
    WHERE table_name = 'playstoredata' 
),
total_rows AS (
    SELECT COUNT(*) as row_count 
    FROM playstoredata
),
column_analysis AS (
    SELECT 
        cols.column_name,
        COUNT(DISTINCT(cols.col_values)) as Unique_values,
        COUNT(cols.col_values) as Non_Null_values
    FROM playdata_column_names cols
    CROSS JOIN LATERAL (
        SELECT CASE cols.column_name
            WHEN 'App Name' THEN playstoredata."App Name",
            WHEN 'App Id' THEN playstoredata."App Id",
            WHEN 'Category' THEN playstoredata."Category",
            WHEN 'Rating' THEN playstoredata."Rating",
            WHEN 'Rating Count' THEN playstoredata."Rating Count",
            WHEN 'Installs' THEN playstoredata."Installs",
            WHEN 'Minimum Installs' THEN playstoredata."Minimum Installs",
            WHEN 'Maximum Installs' THEN playstoredata."Maximum Installs",
            WHEN 'Free' THEN playstoredata."Free",
            WHEN 'Price' THEN playstoredata."Price",
            WHEN 'Currency' THEN playstoredata."Currency",
            WHEN 'Size' THEN playstoredata."Size",
            WHEN 'Minimum Android' THEN playstoredata."Minimum Android",
            WHEN 'Developer Id' THEN playstoredata."Developer Id",
            WHEN 'Developer Website' THEN playstoredata."Developer Website",
            WHEN 'Developer Email' THEN playstoredata."Developer Email",
            WHEN 'Released' THEN playstoredata."Released",
            WHEN 'Last Updated' THEN playstoredata."Last Updated",
            WHEN 'Content Rating' THEN playstoredata."Content Rating",
            WHEN 'Privacy Policy' THEN playstoredata."Privacy Policy",
            WHEN 'Ad Supported' THEN playstoredata."Ad Supported",
            WHEN 'In App Purchases' THEN playstoredata."In App Purchases",
            WHEN 'Editors Choice' THEN playstoredata."Editors Choice",
            WHEN 'Scraped Time' THEN playstoredata."Scraped Time"
        END as col_values
        FROM playstoredata
    )
    GROUP BY cols.column_name
)
SELECT 
    column_name,
    Unique_values,
    Non_Null_values,
    (total_rows.row_count - Non_Null_values) AS Null_values
FROM column_analysis ca
CROSS JOIN total_rows tr;