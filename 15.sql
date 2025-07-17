--Replace null values in "Developer Email" with 'Not Found'

UPDATE playstoredata
SET "Developer Email" = 'Not Found'
WHERE "Developer Email" IS NULL;