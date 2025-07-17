--Count Number of null records in each column 
--by substracting number of records from total rows in database (2,312,944)

SELECT 
    2312944 - COUNT("App Name") AS "App Name Nulls",
    2312944 - COUNT("App Id") AS "App Id Nulls",
    2312944 - COUNT("Category") AS "Category Nulls",
    2312944 - COUNT("Rating") AS "Rating Nulls",
    2312944 - COUNT("Rating Count") AS "Rating Count Nulls",
    2312944 - COUNT("Installs") AS "Installs Nulls",
    2312944 - COUNT("Minimum Installs") AS "Minimum Installs Nulls",
    2312944 - COUNT("Maximum Installs") AS "Maximum Installs Nulls",
    2312944 - COUNT("Free") AS "Free Nulls",
    2312944 - COUNT("Price") AS "Price Nulls",
    2312944 - COUNT("Currency") AS "Currency Nulls",
    2312944 - COUNT("Size") AS "Size Nulls",
    2312944 - COUNT("Minimum Android") AS "Minimum Android Nulls",
    2312944 - COUNT("Developer Id") AS "Developer Id Nulls",
    2312944 - COUNT("Developer Website") AS "Developer Website Nulls",
    2312944 - COUNT("Developer Email") AS "Developer Email Nulls",
    2312944 - COUNT("Released") AS "Released Nulls",
    2312944 - COUNT("Last Updated") AS "Last Updated Nulls",
    2312944 - COUNT("Content Rating") AS "Content Rating Nulls",
    2312944 - COUNT("Privacy Policy") AS "Privacy Policy Nulls",
    2312944 - COUNT("Ad Supported") AS "Ad Supported Nulls",
    2312944 - COUNT("In App Purchases") AS "In App Purchases Nulls",
    2312944 - COUNT("Editors Choice") AS "Editors Choice Nulls",
    2312944 - COUNT("Scraped Time") AS "Scraped Time Nulls"
FROM playstoredata;
