--Check Number of records in each column to identify columns with null records

SELECT 
    COUNT("App Name") AS "App Name Count",
    COUNT("App Id") AS "App Id Count",
    COUNT("Category") AS "Category Count",
    COUNT("Rating") AS "Rating Count",
    COUNT("Rating Count") AS "Rating Count Count",
    COUNT("Installs") AS "Installs Count",
    COUNT("Minimum Installs") AS "Minimum Installs Count",
    COUNT("Maximum Installs") AS "Maximum Installs Count",
    COUNT("Free") AS "Free Count",
    COUNT("Price") AS "Price Count",
    COUNT("Currency") AS "Currency Count",
    COUNT("Size") AS "Size Count",
    COUNT("Minimum Android") AS "Minimum Android Count",
    COUNT("Developer Id") AS "Developer Id Count",
    COUNT("Developer Website") AS "Developer Website Count",
    COUNT("Developer Email") AS "Developer Email Count",
    COUNT("Released") AS "Released Count",
    COUNT("Last Updated") AS "Last Updated Count",
    COUNT("Content Rating") AS "Content Rating Count",
    COUNT("Privacy Policy") AS "Privacy Policy Count",
    COUNT("Ad Supported") AS "Ad Supported Count",
    COUNT("In App Purchases") AS "In App Purchases Count",
    COUNT("Editors Choice") AS "Editors Choice Count",
    COUNT("Scraped Time") AS "Scraped Time Count"
FROM playstoredata;
