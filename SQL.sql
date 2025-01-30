create database imdb;
use imdb;
create table IMDB_dataset(id int primary key, review text, sentiment text);

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Data\\imdb\\IMDB Dataset.csv"
INTO TABLE IMDB_dataset
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 Lines;

select * from IMDB_dataset;
