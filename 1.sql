-- Defines the Sql table schema and datatypes
-- This is the first step

CREATE TABLE IF NOT EXISTS playstoredata(
"App Name" TEXT,
"App Id" TEXT,
"Category" TEXT,
"Rating" NUMERIC,
"Rating Count" NUMERIC,
"Installs" TEXT,
"Minimum Installs" BIGINT,
"Maximum Installs" BIGINT,
"Free" BOOLEAN,
"Price" NUMERIC,
"Currency" TEXT,
"Size" TEXT,
"Minimum Android" TEXT,
"Developer Id" TEXT,
"Developer Website" TEXT,
"Developer Email" TEXT,
"Released" DATE,
"Last Updated" DATE,
"Content Rating" TEXT,
"Privacy Policy" TEXT,
"Ad Supported" BOOLEAN,
"In App Purchases" BOOLEAN,
"Editors Choice" BOOLEAN,
"Scraped Time" TIMESTAMP);