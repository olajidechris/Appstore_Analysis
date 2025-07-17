--Replace null values in "Minimum Android" with 'Not Found'

UPDATE playstoredata
SET "Minimum Android" = 'Not Found'
WHERE "Minimum Android" IS NULL;