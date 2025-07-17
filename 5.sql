-- Update "Free" based on "Price"
-- -- If "Price" is 0, change "Free" to True
-- -- If "Price" is greater than 0, change "Free" to False
-- Fill null values in "Rating Count" with 0
-- Fill null values in "Rating" with 0
-- Fill null values in "Developer Id" with 'Not_Found' 
-- Fill null values in "Minimum Android" with 'Not_Found'
-- Update "Privacy Policy"
-- -- Fill null values in "Privacy Policy" with 'Not_Found'
-- -- Trim non-null values of leading and trailing whitespaces
-- Update "Developer Email"
-- -- Replace null values in "Developer Email" with 'Not_Found'
-- -- Trim non-null values of leading and trailing whitespaces
-- Update "Developer Website"
-- -- Replace null values in "Developer Website" with 'Not_Found' 
-- -- Trim non-null values of leading and trailing whitespaces

UPDATE playstoredata
SET 
    "Free" = CASE 
        WHEN "Price" = 0 THEN TRUE
        WHEN "Price" > 0 THEN FALSE
        ELSE 'Not_Found'
    END,
    "Rating Count" = CASE
        WHERE "Rating Count" IS NULL THEN 0
        ELSE "Rating Count"
    END,
    "Rating" = CASE
        WHERE "Rating" IS NULL THEN 0
        ELSE "Rating"
    END,
    "Developer Id" = CASE
        WHERE "Developer Id" IS NULL THEN 'Not_Found'
        ELSE "Developer Id"
    END,
    "Minimum Android" = CASE 
        WHEN "Minimum Android" IS NULL THEN 'Not_Found'
        ELSE "Minimum Android"
    END,
    "Privacy Policy" = CASE 
        WHEN "Privacy Policy" IS NULL THEN 'Not_Found'
        ELSE TRIM("Privacy Policy")
    END,
    "Developer Email" = CASE 
        WHEN "Developer Email" IS NULL THEN 'Not_Found'
        ELSE TRIM("Developer Email")
    END,
    "Developer Website" = CASE 
        WHEN "Developer Website" IS NULL THEN 'Not_Found'
        ELSE TRIM("Developer Website")
    END;