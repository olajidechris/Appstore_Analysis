--Replace null values in "Developer Website" with 'Not Found'

UPDATE playstoredata
SET "Developer Website" = 'Not Found'
WHERE "Developer Website" IS NULL;