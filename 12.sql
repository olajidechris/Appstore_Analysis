--Replace null values in "Size" with 'Not Stated'

UPDATE playstoredata
SET "Size" = 'Not Stated'
WHERE "Size" IS NULL;