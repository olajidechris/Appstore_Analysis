-- Fill null values in "Minimum Installs" based on "Maximum Installs"
-- For maximum installs > 1:
-- If max_installs/5 and max_installs are in same power of 10 -> round down to nearest 50+
-- Otherwise -> round down to nearest 100+

WITH calculated_minimums AS (
    SELECT 
        "App Id",
        CASE
            WHEN "Maximum Installs" = 1 THEN 1::BIGINT
            WHEN "Maximum Installs" > 1 THEN
                CASE 
                    -- if rounding to 5 * power(10) is needed
                    WHEN floor(log(10, "Maximum Installs" / 5)) = floor(log(10, "Maximum Installs"))
                    	THEN 5 * power(10, floor(log(10, "Maximum Installs")))::BIGINT
                    -- Otherwise round to power of 10
                    ELSE 
						power(10, floor(log(10, "Maximum Installs")))::BIGINT
                END
            ELSE 0::BIGINT
        END AS new_minimum_installs
    FROM playstoredata
)
UPDATE playstoredata
SET "Minimum Installs" = cm.new_minimum_installs
FROM calculated_minimums cm
WHERE playstoredata."App Id" = cm."App Id";