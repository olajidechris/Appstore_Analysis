--Copies data from the csv file to the table
--Before running this step, delete url in line 10
--Replace with file address for the Google-Playstore.csv file 
--Use single quotes. It should be something like.
--FROM 'C:\Users\Caleb\Documents\Stage 4\Google-Playstore.csv'
--Try running it.
--If it shows a reading error follow the instructions here: https://stackoverflow.com/questions/14083311/permission-denied-when-trying-to-import-a-csv-file-from-pgadmin

COPY playstoredata
FROM 'url'
DELIMITER ','
CSV HEADER;