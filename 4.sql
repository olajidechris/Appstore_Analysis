-- Replace values in "Installs" based on "Minimum Installs"

UPDATE playstoredata
SET "Installs" = "Minimum Installs"::text || '+'
WHERE "Installs" IS NULL;
