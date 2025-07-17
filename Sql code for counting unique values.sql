--Check Number of non-duplicate records in each column

SELECT 
    COUNT(DISTINCT "App Name") AS "App Name Count",
    COUNT(DISTINCT "App Id") AS "App Id Count",
    COUNT(DISTINCT "Category") AS "Category Count",
    COUNT(DISTINCT "Rating") AS "Rating Count",
    COUNT(DISTINCT "Rating Count") AS "Rating Count Count",
    COUNT(DISTINCT "Installs") AS "Installs Count",
    COUNT(DISTINCT "Minimum Installs") AS "Minimum Installs Count",
    COUNT(DISTINCT "Maximum Installs") AS "Maximum Installs Count",
    COUNT(DISTINCT "Free") AS "Free Count",
    COUNT(DISTINCT "Price") AS "Price Count",
    COUNT(DISTINCT "Currency") AS "Currency Count",
    COUNT(DISTINCT "Size") AS "Size Count",
    COUNT(DISTINCT "Minimum Android") AS "Minimum Android Count",
    COUNT(DISTINCT "Developer Id") AS "Developer Id Count",
    COUNT(DISTINCT "Developer Website") AS "Developer Website Count",
    COUNT(DISTINCT "Developer Email") AS "Developer Email Count",
    COUNT(DISTINCT "Released") AS "Released Count",
    COUNT(DISTINCT "Last Updated") AS "Last Updated Count",
    COUNT(DISTINCT "Content Rating") AS "Content Rating Count",
    COUNT(DISTINCT "Privacy Policy") AS "Privacy Policy Count",
    COUNT(DISTINCT "Ad Supported") AS "Ad Supported Count",
    COUNT(DISTINCT "In App Purchases") AS "In App Purchases Count",
    COUNT(DISTINCT "Editors Choice") AS "Editors Choice Count",
    COUNT(DISTINCT "Scraped Time") AS "Scraped Time Count"
FROM playstoredata;
