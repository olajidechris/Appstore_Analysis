-- Check for whitespace issues in text columns in playstoredata
WITH text_columns AS (
    SELECT column_name
    FROM information_schema.columns 
    WHERE table_name = 'playstoredata' 
    AND data_type = 'text'
),
whitespace_analysis AS (
    SELECT 
        tc.column_name,
        t.col_value as orig_value,
        TRIM(t.col_value) as trimmed_value,
        LENGTH(t.col_value) as orig_len,
        LENGTH(t.col_value) - LENGTH(TRIM(t.col_value)) as whitespace_len,
        LENGTH(t.col_value) - LENGTH(LTRIM(t.col_value)) as leading_spaces,
        LENGTH(t.col_value) - LENGTH(RTRIM(t.col_value)) as trailing_spaces
    FROM text_columns tc
    CROSS JOIN LATERAL (
        SELECT CASE tc.column_name
            WHEN 'App Name' THEN "App Name"
            WHEN 'App Id' THEN "App Id"
            WHEN 'Category' THEN "Category"
            WHEN 'Currency' THEN "Currency"
            WHEN 'Size' THEN "Size"
            WHEN 'Minimum Android' THEN "Minimum Android"
            WHEN 'Developer Id' THEN "Developer Id"
            WHEN 'Developer Website' THEN "Developer Website"
            WHEN 'Developer Email' THEN "Developer Email"
            WHEN 'Content Rating' THEN "Content Rating"
            WHEN 'Privacy Policy' THEN "Privacy Policy"
        END as col_value
        FROM playstoredata
    ) t
    WHERE t.col_value IS NOT NULL
    AND LENGTH(t.col_value) - LENGTH(TRIM(t.col_value)) > 0
)
SELECT 
    column_name,
    COUNT(column_name) AS rowcount_needing_trim,
    SUM(whitespace_len) AS total_spaces_to_trim,
    AVG(leading_spaces) AS avg_leading_spaces,
    AVG(trailing_spaces) AS avg_trailing_spaces,
    AVG(LENGTH(trimmed_value)) AS avg_new_len,
    AVG(orig_len) AS avg_orig_len
FROM whitespace_analysis
GROUP BY 
    column_name;