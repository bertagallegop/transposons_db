-- AT_TRANSPOSABLE_ELEMENTS
-------------------------------------------
CREATE DATABASE at_transposable_elements_import
CHARACTER SET utf8 COLLATE utf_general_ci;
-----------------------------------------------
-- CREATE TABLES
-----------------------------------------------
CREATE TABLE transposon_import (
  transposon varchar(10),
  orientation_5_prime varchar(5),
  min_start int(11),
  max_end int(11),
  family varchar(20),
  super_family varchar(20)
);
TRUNCATE transposon_import;
LOAD DATA LOCAL INFILE '~/Documents/transposable_elements/transposable_elements.csv'
INTO TABLE transposon_import
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
