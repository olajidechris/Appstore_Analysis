--Replace null values in "Released" with the date "Last Updated"

UPDATE playstoredata
SET "Released" = "Last Updated"
WHERE "Released" IS NULL;